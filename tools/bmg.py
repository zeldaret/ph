from pathlib import Path
from argparse import ArgumentParser

import ndspy.bmg

def main():
    parser = ArgumentParser(description="View strings in BMG files")
    parser.add_argument("--file", help="Path to the BMG file. If not provided, the file will be derived from the message ID.")
    parser.add_argument("--language", help="Language of the BMG file. Does nothing if --file is provided.")
    parser.add_argument("--version", help="Game version to use. Does nothing if --file is provided.")
    parser.add_argument("id", help="Index of the BMG entry")
    args = parser.parse_args()

    if args.id.startswith("0x"):
        msg_id = int(args.id, 16)
    else:
        msg_id = int(args.id)
    bmg_file = get_bmg_file(args.file, msg_id, args.language, args.version)

    with bmg_file.open("rb") as f:
        data = f.read()
    bmg = ndspy.bmg.BMG(data)
    message = bmg.messages[msg_id & 0xffff]

    for part in message.stringParts:
        print(part, end="")
    print()

BMG_FILENAMES = [
    "system",
    "regular",
    "battle",
    "test",
    "default",
    "sea",
    "kaitei",
    "main_isl",
    "brave",
    "flame",
    "wind",
    "frost",
    "power",
    "wisdom",
    "ghost",
    "hidari",
    "sennin",
    "ship",
    "collect",
    "mainselect",
    "field",
    "wisdom_dngn",
    "demo",
    "battleCommon",
    "bossLast1",
    "bossLast3",
    "torii",
    "myou",
    "kojima1",
    "kojima2",
    "kojima5",
    "kojima3",
    "staff",
    "kaitei_F",
]

LANGUAGES = [
    "English",
    "French",
    "German",
    "Italian",
    "Spanish",
    "Japanese",
]

def get_bmg_file(file: str | None, msg_id: int, language: str | None, version: str | None) -> Path:
    if file is not None:
        return Path(file)

    versions = find_available_versions()
    if len(versions) == 0:
        print("You must extract the game files before using this tool")
        exit(1)
    if version is None:
        version = versions[0]
    if version not in versions:
        print(f"Version {version} not found in the extract directory")
        exit(1)

    files_dir = Path(__file__).parent.parent / "extract" / version / "files"
    if language is None:
        for lang in LANGUAGES:
            lang_dir = files_dir / lang
            if lang_dir.exists():
                language = lang
                break
    if language is None:
        print("No language directories found in the extracted assets")
        exit(1)

    file_index = msg_id >> 16
    if file_index >= len(BMG_FILENAMES):
        print(f"Message ID {msg_id} is out of range")
        exit(1)
    filename = BMG_FILENAMES[file_index] + ".bmg"

    return files_dir / language / "Message" / filename


def find_available_versions() -> list[str]:
    extract_path = Path(__file__).parent.parent / "extract"
    return [d.name for d in extract_path.iterdir() if d.is_dir()]


if __name__ == "__main__":
    main()
