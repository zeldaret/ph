#!/usr/bin/env python

import sys
import pyperclip
import subprocess
import os
from pathlib import Path
import argparse
import re
import tempfile

parser = argparse.ArgumentParser(description="Generates a context for decomp.me")
parser.add_argument('file', help="Input file to preprocess")
parser.add_argument('-f', type=str, dest='out_file', required=False, help='Output context file')
parser.add_argument('-c', action=argparse.BooleanOptionalAction, dest='clipboard', required=False, help='Copy output to clipboard')
parser.add_argument('-e', type=str, dest='encoding', required=False, default="utf-8", help='Input file encoding')
parser.add_argument('-v', action=argparse.BooleanOptionalAction, dest='verbose', required=False, help='Verbose error output')
args = parser.parse_args()

CXX_FLAGS = [
    '-nostdinc',
    '-Iinclude',
    '-Ilibs/c/include',
    '-Ilibs/cpp/include',
    '-Ilibs/nds/include'
]

script_dir = Path(os.path.dirname(os.path.realpath(__file__)))
root_dir = script_dir / ".."

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

# Finds all lines starting with #include followed by <...> or "..."
INCLUDE_REGEX = r'^\s*#\s*include\s*([<"][\S ]+[>"])\s*$'
# Finds all line comments and multiline comments
COMMENT_REGEX = r'\/\/.*$|\/\*(?:.|\r|\n)+?\*\/'

with open(args.file, 'r', encoding=args.encoding) as f:
    contents = f.read()
contents = re.sub(COMMENT_REGEX, '', contents, count=0, flags=re.MULTILINE)
includes = re.findall(INCLUDE_REGEX, contents, flags=re.MULTILINE)

_, suffix = os.path.splitext(args.file)

with tempfile.NamedTemporaryFile(delete=True, suffix=suffix) as tmp_file:
    # Write includes
    for include in includes:
        tmp_file.write(f'#include {include}\n'.encode())
    tmp_file.flush()

    # Run preprocessor
    try:
        ctx: str = subprocess.check_output([
            'gcc',
            '-E', '-P', '-fworking-directory', '-undef', '-dD',
            *CXX_FLAGS,
            tmp_file.name
        ], cwd=root_dir, encoding=args.encoding)
    except subprocess.CalledProcessError as e:
        eprint(f"Failed to preprocess '{args.file}'")
        if args.verbose: eprint(e)
        else: eprint("Use -v for more verbose error output")
        exit(1)

lines = ctx.splitlines(True)
for i in reversed(range(len(lines))):
    if lines[i].startswith('#define __cplusplus'): lines.pop(i)
    elif lines[i].startswith('#define __STDC_HOSTED__'): lines.pop(i)
    elif lines[i].startswith('#define __STDC__'): lines.pop(i)
    elif lines[i].startswith('#define __STDC_VERSION__'): lines.pop(i)

ctx = ''.join(lines)

if args.out_file:
    try:
        with open(args.out_file, "w") as file:
            file.write(ctx)
    except OSError as e:
        eprint(f"Failed to write file '{args.out_file}'")
        if args.verbose: eprint(e)
        else: eprint("Use -v for more verbose error output")
        exit(1)
if args.clipboard:
    pyperclip.copy(ctx)
    eprint("Copied context to clipboard")
if args.out_file is None and not args.clipboard:
    print(ctx)
