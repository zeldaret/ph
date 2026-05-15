import argparse
from pathlib import Path
import re

def main():
    parser = argparse.ArgumentParser(description='Define vtable symbols and update relocations')
    parser.add_argument('old_name', help='The old name of the vtable symbol')
    parser.add_argument('new_name', help='The new name of the vtable symbol')
    parser.add_argument('--dry', action='store_true', help='Print the changes without writing to files')
    args = parser.parse_args()

    old_name: str = args.old_name
    new_name: str = args.new_name
    dry_run: bool = args.dry

    file_write_buffer: list[tuple[Path, list[str]]] = []
    manual_changes: list[str] = []

    current_path = Path(__file__).parent
    root_path = current_path.parent
    base_config_path = root_path / "config"
    for config_path in base_config_path.iterdir():
        if config_path.is_file():
            continue

        old_address = None
        new_address = None
        dest_module = None
        for symbol_file in config_path.glob("**/symbols.txt"):
            with symbol_file.open("r") as f:
                lines = f.readlines()

            for row, line in enumerate(lines):
                if not line.startswith(old_name):
                    continue
                print(f"Updating symbol {old_name} in {symbol_file}:{row + 1}")
                address = get_attr_value(line, "addr")
                if address is None:
                    print(f"Error: Could not find symbol address at {symbol_file}:{row + 1}")
                    exit(1)
                address = int(address, 16)
                old_address = address
                new_address = address - 8
                line = line.replace(old_name, new_name, 1)
                line = set_attr_value(line, "addr", f"0x{new_address:08x}")
                print(f"-> {line}")
                lines[row] = line

            if old_address is None or new_address is None:
                # Try next symbols.txt file
                continue

            file_name = str(symbol_file.relative_to(config_path))
            if file_name.endswith("dtcm/symbols.txt"):
                dest_module = ("dtcm", 0)
            elif file_name.endswith("itcm/symbols.txt"):
                dest_module = ("itcm", 0)
            elif file_name.endswith("arm9/symbols.txt"):
                dest_module = ("main", 0)
            else:
                overlay_id = re.search(r"ov(\d+)/symbols.txt", file_name)
                if overlay_id is None:
                    print(f"Error: Could not determine module for {symbol_file}")
                    exit(1)
                dest_module = ("overlay", int(overlay_id.group(1)))

            file_write_buffer.append((symbol_file, lines))
            break

        if old_address is None or new_address is None or dest_module is None:
            print(f"Error: Could not find symbol {old_name} in any symbols.txt file in {config_path}")
            exit(1)

        for relocs_file in config_path.glob("**/relocs.txt"):
            with relocs_file.open("r") as f:
                lines = f.readlines()

            any_change = False
            for row, line in enumerate(lines):
                to_addr = get_attr_value(line, "to")
                if to_addr is None:
                    continue
                to_addr = int(to_addr, 16)
                if to_addr != old_address:
                    continue
                reloc_module = get_attr_value(line, "module")
                if reloc_module is None:
                    continue
                if dest_module[0] == "overlay" and reloc_module.startswith("overlays"):
                    print(f"Warning: Found ambiguous relocation for {old_name} in {relocs_file}, it will require manual review.")
                    manual_changes.append(f"{relocs_file}:{row + 1}")
                if not reloc_module.startswith(dest_module[0]):
                    continue

                print(f"Updating relocation for {old_name} in {relocs_file}:{row + 1}")
                line = set_attr_value(line, "to", f"0x{new_address:08x}")
                line = set_attr_value(line, "add", "0x8")
                print(f"-> {line}")
                lines[row] = line
                any_change = True

            if any_change:
                file_write_buffer.append((relocs_file, lines))

    if not dry_run:
        for symbol_file, lines in file_write_buffer:
            with symbol_file.open("w") as f:
                f.writelines(lines)
        print(f"Changes written to {len(file_write_buffer)} files:")
    else:
        print(f"Dry run complete. {len(file_write_buffer)} files would be updated:")
    for symbol_file, _ in file_write_buffer:
        print(f"- {symbol_file}")

def get_attr_value(line: str, attr: str) -> str | None:
    match = re.search(rf"{attr}:(\S+)", line)
    if match is None:
        return None
    return match.group(1)

def set_attr_value(line: str, attr: str, value: str) -> str:
    pattern = rf"{attr}:\S+"
    if not re.search(pattern, line):
        line = line.strip() + f" {attr}:{value}\n"
        return line
    return re.sub(rf"{attr}:\S+", f"{attr}:{value}", line, count=1)

if __name__ == "__main__":
    main()
