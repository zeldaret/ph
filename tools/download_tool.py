import argparse
from pathlib import Path
from get_platform import get_platform
import zipfile
import io
import requests
import stat

root_path = Path(__file__).parent.parent


platform = get_platform()
if platform is None:
    exit(1)

parser = argparse.ArgumentParser()
parser.add_argument("tool")
parser.add_argument("tag")
parser.add_argument("--path", type=Path, required=True)
args = parser.parse_args()


def dsd_url(tag: str) -> str:
    return f'https://github.com/AetiasHax/ds-decomp/releases/download/{tag}/dsd-{platform.system}-{platform.machine}{platform.exe}'

def mwccarm_url(tag: str) -> str:
    return 'http://decomp.aetias.com/files/mwccarm.zip'

def wibo_url(tag: str) -> str:
    return f'https://github.com/decompals/wibo/releases/download/{tag}/wibo'

def objdiff_url(tag: str) -> str:
    return f'https://github.com/encounter/objdiff/releases/download/{tag}/objdiff-cli-{platform.system}-{platform.machine}{platform.exe}'

def sjiswrap_url(tag: str) -> str:
    return f'https://github.com/encounter/sjiswrap/releases/download/{tag}/sjiswrap-windows-x86.exe'

TOOLS = {
    "dsd": dsd_url,
    "mwccarm": mwccarm_url,
    "wibo": wibo_url,
    "objdiff": objdiff_url,
    "sjiswrap": sjiswrap_url,
}


download_url = TOOLS[args.tool](args.tag)
print(f'\nDownloading {args.tool} {args.tag}...')
response = requests.get(download_url)
if download_url.endswith('.zip'):
    zip_file = zipfile.ZipFile(io.BytesIO(response.content))
    zip_file.extractall(args.path)
else:
    out_path: Path = args.path
    with out_path.open('wb') as f:
        f.write(response.content)
    out_path.chmod(out_path.stat().st_mode | stat.S_IEXEC)
