#!/usr/bin/env python3
"""Preview or propagate function-name changes from the frozen catalog.

The manifest is authoritative for each source symbol. This works for ordinary
definitions, naked assembly functions, and functions emitted by header macros.
"""
from __future__ import annotations

import argparse
import csv
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = EXACT / "V204_source_manifest.json"
CATALOG = EXACT / "V204_function_names.csv"
SECTION = re.compile(r'section\("\.text\.([A-Za-z_]\w*)"\)')


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true",
                        help="write validated names to sources, manifest, and linker")
    args = parser.parse_args()

    manifest = json.loads(MANIFEST.read_text())
    with CATALOG.open(newline="") as stream:
        rows = {int(row["address"], 16): row for row in csv.DictReader(stream)}

    changes: list[tuple[Path, str, str]] = []
    for item in manifest["sources"]:
        address = int(item["address"])
        if address not in rows:
            raise SystemExit(f"catalog entry missing for 0x{address:08x}")
        path = ROOT / item["source"]
        source = path.read_text(errors="replace")
        old_name = item["symbol"]
        new_name = rows[address]["readable_symbol"]
        if not re.search(r"\b" + re.escape(old_name) + r"\b", source):
            raise SystemExit(f"manifest symbol {old_name} not found in {item['source']}")
        section = SECTION.search(source)
        if section and section.group(1) != old_name:
            raise SystemExit(f"section {section.group(1)} disagrees with manifest symbol "
                             f"{old_name} in {item['source']}")
        if old_name != new_name:
            changes.append((path, old_name, new_name))

    if not changes:
        print(f"all {len(manifest['sources'])} manifested function symbols match "
              "the catalog and source")
        return

    print(f"{len(changes)} manifested source symbols need renaming")
    for path, old_name, new_name in changes:
        print(f"{path.relative_to(ROOT)}: {old_name} -> {new_name}")
    if not args.apply:
        print("preview only; pass --apply to update sources, manifest, and linker")
        return

    rename = {old: new for _, old, new in changes}
    if len(set(rename.values())) != len(rename):
        raise SystemExit("readable function names collide")
    final_symbols = [rename.get(item["symbol"], item["symbol"])
                     for item in manifest["sources"]]
    if len(final_symbols) != len(set(final_symbols)):
        raise SystemExit("readable source symbols collide")

    for item in manifest["sources"]:
        path = ROOT / item["source"]
        source = path.read_text(errors="replace")
        updated = source
        for old_name, new_name in sorted(rename.items(), key=lambda pair: -len(pair[0])):
            updated = re.sub(r"\b" + re.escape(old_name) + r"\b", new_name, updated)
        if updated != source:
            path.write_text(updated)
        item["symbol"] = rename.get(item["symbol"], item["symbol"])

    # Shared headers carry cross-unit prototypes and types; keep their
    # declarations in sync with the renamed definitions and call sites.
    include_dir = ROOT / "firmware" / "reconstructed" / "include"
    for path in include_dir.rglob("*"):
        if not path.is_file() or path.suffix not in {".h", ".hpp"}:
            continue
        source = path.read_text(errors="replace")
        updated = source
        for old_name, new_name in sorted(rename.items(), key=lambda pair: -len(pair[0])):
            updated = re.sub(r"\b" + re.escape(old_name) + r"\b", new_name, updated)
        if updated != source:
            path.write_text(updated)

    for old_name, new_name in rename.items():
        if old_name in manifest["function_aliases"]:
            address = manifest["function_aliases"].pop(old_name)
            if new_name in manifest["function_aliases"] and manifest["function_aliases"][new_name] != address:
                raise SystemExit(f"readable symbol {new_name} already maps to another address")
            manifest["function_aliases"].setdefault(new_name, address)
    MANIFEST.write_text(json.dumps(manifest, indent=2) + "\n")

    linker = ROOT / "firmware" / "reconstructed" / "data" / "V204_data_sections.ld"
    linker_text = linker.read_text()
    for old_name, new_name in sorted(rename.items(), key=lambda pair: -len(pair[0])):
        linker_text = linker_text.replace(f".text.{old_name}", f".text.{new_name}")
    linker.write_text(linker_text)
    print(f"renamed {len(changes)} source symbols and propagated references")


if __name__ == "__main__":
    main()
