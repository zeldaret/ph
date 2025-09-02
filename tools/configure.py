#!/usr/bin/env python3

import json
import os
from pathlib import Path
import argparse
import sys
import subprocess
from typing import Any

import ninja_syntax
from get_platform import Platform, get_platform


DEFAULT_WIBO_PATH = "./wibo"


parser = argparse.ArgumentParser(description="Generates build.ninja")
parser.add_argument('-w', type=str, default=DEFAULT_WIBO_PATH, dest="wine", required=False, help="Path to Wine/Wibo (linux only)")
parser.add_argument("--compiler", type=Path, required=False, help="Path to pre-installed compiler root directory")
parser.add_argument("--no-extract", action="store_true", help="Skip extract step")
parser.add_argument("--dsd", type=Path, required=False, help="Path to pre-installed dsd CLI")
parser.add_argument('version', help='Game version')
args = parser.parse_args()


# Config
GAME = "ph"
DSD_VERSION = 'v0.10.1'
WIBO_VERSION = '0.6.16'
OBJDIFF_VERSION = 'v3.0.0-beta.6'
MWCC_VERSION = "2.0/sp1p5"
DECOMP_ME_COMPILER = "mwcc_30_131"
CC_FLAGS = " ".join([
    "-O4,p",                # Optimize maximally for performance
    "-enum int",            # Use int-sized enums
    "-char signed",         # Char type is signed
    "-str noreuse",         # Equivalent strings are different objects
    "-proc arm946e",        # Target processor
    "-gccext,on",           # Enable GCC extensions
    "-fp soft",             # Compute float operations in software
    "-inline noauto",       # Inline only functions marked with 'inline'
    "-lang=c++",            # Set language to C++
    "-Cpp_exceptions off",  # Disable C++ exceptions
    "-RTTI off",            # Disable runtime type information
    "-interworking",        # Enable ARM/Thumb interworking
    "-w off",               # Disable warnings
    "-sym on",              # Debug info, including line numbers
    "-gccinc",              # Interpret #include "..." and #include <...> equally
    "-nolink",              # Do not link
    "-msgstyle gcc",        # Use GCC-like messages (some IDEs will make file names clickable)
])
# Passed to all modules and final arm9.o link
LD_FLAGS = " ".join([
    "-proc arm946e",        # Target processor
    "-dead",                # Strip unused code
    "-nostdlib",            # No C/C++ standard library
    "-interworking",        # Enable ARM/Thumb interworking
    "-map closure,unused",  # Generate map file
    "-msgstyle gcc",        # Use GCC-like messages (some IDEs will make file names clickable)
])
# Only passed to the module links
MODULE_LD_FLAGS = " ".join([
    "-library",             # Link as a static library
])
# Only passed to the final arm9.o link
ARM9_LD_FLAGS = " ".join([
    "-m Entry",             # Set entry function
])
DSD_OBJDIFF_ARGS = " ".join([
    "--scratch",                        # Metadata for creating decomp.me scratches
    f"--compiler {DECOMP_ME_COMPILER}", # decomp.me compiler name
    f'--c-flags "{CC_FLAGS} -lang=c++"',# decomp.me compiler flags
    "--custom-make ninja",              # Command for rebuilding files
])
DSD_BASE_FLAGS = " ".join([
    "--force-color", # Force color output
])


# Paths
current_path     = Path(__name__)
root_path        = current_path.parent
build_ninja_path = root_path / "build.ninja"
arm7_bios_path   = root_path / "arm7_bios.bin"
config_path      = root_path / "config"
build_path       = root_path / "build"
src_path         = root_path / "src"
libs_path        = root_path / "libs"
extract_path     = root_path / "extract"
tools_path       = root_path / "tools"
mwcc_root        = args.compiler or tools_path / "mwccarm"
mwcc_path        = mwcc_root / MWCC_VERSION


# Includes
includes = [
    root_path / "include"
]
for root, dirs, _ in os.walk(libs_path):
    for dir in dirs:
        if dir == "include":
            includes.append(Path(root) / dir)
CC_INCLUDES = " ".join(f"-i {include}" for include in includes)


# Platform info
platform = get_platform()
if platform is None:
    exit(1)
EXE = platform.exe
WINE = args.wine if platform.system != "windows" else ""
DSD = str(args.dsd or os.path.join('.', str(root_path / f"dsd{EXE}")))
OBJDIFF = os.path.join('.', str(root_path / f"objdiff-cli{EXE}"))
CC = os.path.join('.', str(mwcc_path / "mwccarm.exe"))
LD = os.path.join('.', str(mwcc_path / "mwldarm.exe"))
PYTHON = sys.executable


class Project:
    def __init__(self, game_version: str, *, platform: Platform, delinks_json: Any | None):
        self.game_version = game_version
        '''Version of the game'''
        self.game_config = config_path / game_version
        '''Root directory for dsd configs'''

        if not self.game_config.is_dir():
            print(f"Version '{game_version}' not recognized")
            exit(1)

        self.platform = platform
        '''Host platform information'''
        self.delinks_json = delinks_json
        '''Delinks JSON data from dsd'''

        self.game_build = build_path / game_version
        '''Path to build directory'''
        self.game_extract = extract_path / game_version
        '''Path to extract directory'''

        self.delinks_files = get_config_files(self.game_config, "delinks.txt")
        '''Paths to every delinks.txt file'''
        self.relocs_files = get_config_files(self.game_config, "relocs.txt")
        '''Paths to every relocs.txt file'''
        self.symbols_files = get_config_files(self.game_config, "symbols.txt")
        '''Paths to every symbols.txt file'''

    def dsd_configs(self) -> list[str]:
        return self.delinks_files + self.relocs_files + self.symbols_files

    def arm9_config_yaml(self) -> Path:
        return self.game_config / "arm9" / "config.yaml"

    def baserom(self) -> Path:
        return extract_path / f'baserom_{GAME}_{self.game_version}.nds'

    def build_rom(self) -> str:
        return f"{GAME}_{self.game_version}.nds"

    def baserom_config(self) -> Path:
        return self.game_extract / 'config.yaml'

    def build_rom_config(self) -> Path:
        return self.game_build / "build" / "rom_config.yaml"

    def source_object_files(self) -> list[str]:
        files: list[str] = []
        for source_file in get_c_cpp_files([src_path, libs_path]):
            src_obj_path = self.game_build / source_file
            files.append(str(src_obj_path.with_suffix(".o")))
        return files

    def arm9_o(self) -> Path:
        return self.game_build / "arm9.o"

    def arm9_disassembly_dir(self) -> Path:
        return self.game_build / "asm"

    def objdiff_report(self) -> Path:
        return self.game_build / "report.json"

    def files(self) -> list[dict[str, str]]:
        if self.delinks_json is None:
            return []
        return self.delinks_json['files']

    def delink_files(self) -> list[str]:
        delink_files = [file['delink_file'] for file in self.files()]
        return list(set(delink_files))

    def arm9_lcf_file(self) -> str:
        if self.delinks_json is None:
            return ""
        return self.delinks_json['arm9_lcf_file']

    def arm9_objects_file(self) -> str:
        if self.delinks_json is None:
            return ""
        return self.delinks_json['arm9_objects_file']


def check_can_run_dsd() -> bool:
    try:
        output = subprocess.run([DSD, "--version"], capture_output=True, text=True, check=True)
        version = output.stdout.strip().split(" ")[-1]
        if not version.startswith("v"):
            version = "v" + version

        # If it's not the correct version, Ninja will download it and then rerun this script
        return version == DSD_VERSION or args.dsd is not None
    except subprocess.CalledProcessError:
        return False
    except FileNotFoundError:
        return False


def main():
    if platform is None:
        return

    delinks_json = None
    can_run_dsd = check_can_run_dsd()
    if can_run_dsd:
        out = subprocess.run([
            DSD,
            "--force-color",
            "json",
            "delinks",
            "--config-path", config_path / args.version / "arm9" / "config.yaml"
        ], capture_output=True, text=True)
        if out.returncode != 0:
            print(f"Error running dsd:\n{out.stderr.strip()}")
            return
        delinks_json = json.loads(out.stdout)

    project = Project(args.version, platform=platform, delinks_json=delinks_json)


    with build_ninja_path.open("w") as file:
        n = ninja_syntax.Writer(file)

        n.rule(
            name="download_tool",
            command=f'{PYTHON} tools/download_tool.py $tool $tag --path $path'
        )
        n.newline()

        if arm7_bios_path.is_file():
            n.variable("arm7_bios_flag", f"--arm7-bios {arm7_bios_path.relative_to(root_path)}")
        else:
            n.variable("arm7_bios_flag", "")
        n.newline()

        n.rule(
            name="extract",
            command=f"{DSD} {DSD_BASE_FLAGS} rom extract --rom $in --output-path $output_path $arm7_bios_flag"
        )
        n.newline()

        n.rule(
            name="delink",
            command=f"{DSD} {DSD_BASE_FLAGS} delink --config-path $config_path"
        )
        n.newline()

        n.rule(
            name="disassemble",
            command=f"{DSD} {DSD_BASE_FLAGS} dis --config-path $config_path --asm-path $output_path --ual"
        )
        n.newline()

        # -MMD excludes all includes instead of just system includes for some reason, so use -MD instead.
        mwcc_cmd = f'{WINE} "{CC}" {CC_FLAGS} {CC_INCLUDES} $cc_flags -d $game_version -MD -c $in -o $basedir'
        mwcc_implicit = [CC]
        if platform.system != "windows":
            transform_dep = "tools/transform_dep.py"
            mwcc_cmd += f" && $python {transform_dep} $basefile.d $basefile.d"
            mwcc_implicit.append(transform_dep)
            if WINE == DEFAULT_WIBO_PATH:
                mwcc_implicit.append(WINE)
        n.rule(
            name="mwcc",
            command=mwcc_cmd,
            depfile="$basefile.d",
        )
        n.newline()

        n.rule(
            name="lcf",
            command=f"{DSD} {DSD_BASE_FLAGS} lcf -c $config_path"
        )
        n.newline()

        n.rule(
            name="mwld",
            command=f'{WINE} "{LD}" {LD_FLAGS} $extra_ld_flags @$objects_file $lcf_file -o $out'
        )
        n.newline()

        n.rule(
            name="rom_config",
            command=f"{DSD} {DSD_BASE_FLAGS} rom config --elf $in --config $config_path"
        )
        n.newline()

        n.rule(
            name="rom_build",
            command=f"{DSD} {DSD_BASE_FLAGS} rom build --config $in --rom $out $arm7_bios_flag"
        )
        n.newline()

        n.rule(
            name="objdiff",
            command=f"{DSD} {DSD_BASE_FLAGS} objdiff --config-path $config_path {DSD_OBJDIFF_ARGS}"
        )
        n.newline()

        n.rule(
            name="objdiff_report",
            command=f"{OBJDIFF} report generate -o $out"
        )
        n.newline()

        n.rule(
            name="m2ctx",
            command=f"{PYTHON} tools/m2ctx.py -f $out $in"
        )
        n.newline()

        n.rule(
            name="check_modules",
            command=f"{DSD} {DSD_BASE_FLAGS} check modules --config-path $config_path --fail"
        )
        n.newline()

        n.rule(
            name="check_symbols",
            command=f"{DSD} {DSD_BASE_FLAGS} check symbols --config-path $config_path --elf-path $elf_path --fail --max-lines 20"
        )
        n.newline()

        n.rule(
            name="apply",
            command=f"{DSD} {DSD_BASE_FLAGS} apply --config-path $config_path --elf-path $elf_path"
        )
        n.newline()

        n.rule(
            name="sha1",
            command=f"{PYTHON} tools/sha1.py $in -c $sha1_file"
        )
        n.newline()

        configure_cmdline = subprocess.list2cmdline(sys.argv[1:])
        n.rule(
            name="configure",
            command=f"{PYTHON} tools/configure.py {configure_cmdline}",
            generator=True
        )
        n.newline()

        add_download_tool_builds(n, project)
        add_configure_build(n, project)

        if can_run_dsd:
            add_extract_build(n, project)
            add_delink_and_lcf_builds(n, project)
            add_disassemble_builds(n, project)
            add_mwcc_builds(n, project, mwcc_implicit)
            add_mwld_and_rom_builds(n, project)
            add_check_builds(n, project)
            add_objdiff_builds(n, project)
            add_apply_build(n, project)

            n.default(["objdiff", "check", "sha1"])
        else:
            n.default(["download_tools"])


def add_download_tool_builds(n: ninja_syntax.Writer, project: Project):
    downloads: list[str] = []

    if args.dsd is None:
        downloads.append(DSD)
        n.build(
            rule="download_tool",
            outputs=DSD,
            variables={
                "tool": "dsd",
                "tag": DSD_VERSION,
                "path": DSD,
            },
        )
        n.newline()

    downloads.append(OBJDIFF)
    n.build(
        rule="download_tool",
        outputs=OBJDIFF,
        variables={
            "tool": "objdiff",
            "tag": OBJDIFF_VERSION,
            "path": OBJDIFF,
        }
    )
    n.newline()

    if args.compiler is None:
        downloads.extend([CC, LD])
        n.build(
            rule="download_tool",
            outputs=[CC, LD],
            variables={
                "tool": "mwccarm",
                "tag": "latest",
                "path": str(tools_path),
            },
        )
        n.newline()

    if project.platform.system != "windows" and WINE == DEFAULT_WIBO_PATH:
        downloads.append(WINE)
        n.build(
            rule="download_tool",
            outputs=WINE,
            variables={
                "tool": "wibo",
                "tag": WIBO_VERSION,
                "path": WINE,
            },
        )
        n.newline()

    n.build(
        inputs=downloads,
        rule="phony",
        outputs="download_tools",
    )
    n.newline


def add_extract_build(n: ninja_syntax.Writer, project: Project):
    if not args.no_extract:
        n.build(
            inputs=str(project.baserom()),
            implicit=DSD,
            rule="extract",
            outputs=str(project.baserom_config()),
            variables={
                "output_path": str(project.game_extract)
            }
        )
        n.newline()


def add_mwld_and_rom_builds(n: ninja_syntax.Writer, project: Project):
    n.comment("Run linker")
    objects_to_link = [file['object_to_link'] for file in project.files()]
    elf_file = str(project.arm9_o())
    lcf_file = project.arm9_lcf_file()
    objects_file = project.arm9_objects_file()
    if len(objects_to_link) > 0:
        n.build(
            inputs=[*objects_to_link, lcf_file, objects_file],
            implicit=LD,
            rule="mwld",
            outputs=elf_file,
            variables={
                'extra_ld_flags': ARM9_LD_FLAGS,
                'lcf_file': str(lcf_file),
                'objects_file': str(objects_file),
            }
        )
        n.newline()

    n.build(
        inputs=elf_file,
        rule="phony",
        outputs="arm9",
    )
    n.newline()

    rom_config_file = str(project.build_rom_config())
    n.build(
        inputs=elf_file,
        implicit=DSD,
        rule="rom_config",
        outputs=rom_config_file,
        variables={
            "config_path": str(project.arm9_config_yaml()),
        }
    )
    n.newline()

    rom_file = project.build_rom()
    n.build(
        inputs=rom_config_file,
        implicit=DSD,
        rule="rom_build",
        outputs=rom_file,
    )
    n.newline()

    n.build(
        inputs=rom_file,
        rule="phony",
        outputs="rom",
    )
    n.newline()

    n.build(
        inputs=rom_file,
        rule="sha1",
        variables={
            "sha1_file": str(Path(rom_file).with_suffix(".sha1"))
        },
        outputs="sha1",
    )
    n.newline()


def add_mwcc_builds(n: ninja_syntax.Writer, project: Project, mwcc_implicit: list[str]):
    for source_file in get_c_cpp_files([src_path, libs_path]):
        src_obj_path = project.game_build / source_file
        cc_flags: list[str] = []
        if is_cpp(source_file):
            cc_flags.append("-lang=c++")
        elif is_c(source_file):
            cc_flags.append("-lang=c")
        n.build(
            inputs=str(source_file),
            implicit=mwcc_implicit,
            rule="mwcc",
            outputs=str(src_obj_path.with_suffix(".o")),
            variables={
                "game_version": project.game_version,
                "cc_flags": " ".join(cc_flags),
                "basedir": os.path.dirname(src_obj_path),
                "basefile": str(src_obj_path.with_suffix("")),
            },
        )
        n.newline()

        extension = source_file.suffix
        ctx_file = str(src_obj_path.with_suffix(f".ctx{extension}"))
        n.build(
            inputs=str(source_file),
            rule="m2ctx",
            outputs=ctx_file,
        )
        n.newline()


def get_c_cpp_files(dirs: list[Path]):
    for dir in dirs:
        for root, _, files in os.walk(dir):
            root = Path(root)
            for file in files:
                if is_cpp(file) or is_c(file):
                    yield root / file


def is_cpp(name: str | Path):
    return Path(name).suffix in [".cpp"]


def is_c(name: str | Path):
    return Path(name).suffix in [".c"]


def add_delink_and_lcf_builds(n: ninja_syntax.Writer, project: Project):
    rom_config = str(project.baserom_config())
    delink_files = project.delink_files()
    if len(delink_files) > 0:
        n.comment("Delink ELF binaries when any delinks.txt file is modified")
        n.build(
            inputs=project.dsd_configs() + [rom_config],
            implicit=DSD,
            rule="delink",
            outputs=delink_files,
            variables={
                "config_path": str(project.arm9_config_yaml()),
            }
        )
        n.newline()

        n.build(
            inputs=delink_files,
            rule="phony",
            outputs="delink"
        )
        n.newline()

    lcf_file = project.arm9_lcf_file()
    objects_file = project.arm9_objects_file()
    n.build(
        inputs=project.delinks_files + [str(rom_config)],
        implicit=DSD,
        rule="lcf",
        outputs=[lcf_file, objects_file],
        variables={
            "config_path": str(project.arm9_config_yaml()),
        }
    )
    n.newline()


def add_disassemble_builds(n: ninja_syntax.Writer, project: Project):
    n.build(
        inputs=project.dsd_configs(),
        implicit=DSD,
        rule="disassemble",
        outputs="dis",
        variables={
            "config_path": str(project.arm9_config_yaml()),
            "output_path": str(project.arm9_disassembly_dir()),
        }
    )
    n.newline()


def add_check_builds(n: ninja_syntax.Writer, project: Project):
    n.build(
        inputs=str(project.arm9_o()),
        rule="check_modules",
        outputs="check_modules",
        variables={
            "config_path": str(project.arm9_config_yaml()),
        },
    )
    n.newline()

    n.build(
        inputs=str(project.arm9_o()),
        rule="check_symbols",
        outputs="check_symbols",
        variables={
            "config_path": str(project.arm9_config_yaml()),
            "elf_path": str(project.arm9_o()),
        },
    )
    n.newline()

    n.build(
        inputs=["check_modules", "check_symbols"],
        rule="phony",
        outputs="check",
    )
    n.newline()


def add_objdiff_builds(n: ninja_syntax.Writer, project: Project):
    n.build(
        inputs=project.dsd_configs(),
        implicit=DSD,
        rule="objdiff",
        outputs="objdiff.json",
        variables={
            "config_path": str(project.arm9_config_yaml()),
        }
    )
    n.newline()

    n.build(
        inputs="objdiff.json",
        rule="phony",
        outputs="objdiff",
    )
    n.newline()

    delink_files = project.delink_files()
    n.build(
        inputs=["objdiff.json"],
        implicit=[OBJDIFF] + delink_files + project.source_object_files(),
        rule="objdiff_report",
        outputs=str(project.objdiff_report()),
    )
    n.newline()

    n.build(
        inputs=str(project.objdiff_report()),
        rule="phony",
        outputs="report",
    )
    n.newline()


def add_configure_build(n: ninja_syntax.Writer, project: Project):
    this_file = str(Path(__file__).resolve())
    n.build(
        outputs="build.ninja",
        rule="configure",
        implicit=[
            this_file,
            # Require dsd to exist when rerunning configure.py
            DSD,
            *project.dsd_configs(),
        ]
    )


def add_apply_build(n: ninja_syntax.Writer, project: Project):
    n.build(
        inputs=project.dsd_configs() + [str(project.arm9_o())],
        implicit=DSD,
        rule="apply",
        outputs="apply",
        variables={
            "config_path": str(project.arm9_config_yaml()),
            "elf_path": str(project.arm9_o()),
        }
    )
    n.newline()


def get_config_files(game_config: Path, name: str) -> list[str]:
    return [
        f"{root}/{file}"
        for root, _, files in os.walk(game_config)
        for file in files
        if file == name
    ]


if __name__ == "__main__":
    main()
