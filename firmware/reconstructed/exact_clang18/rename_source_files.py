#!/usr/bin/env python3
"""Rename manifested C files to their catalog names.

The source contents are not modified. The manifest and navigation CSVs are
updated together so the fixed-address build continues to use the same units.
"""
from __future__ import annotations

import argparse
import csv
import json
import shutil
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = EXACT / "V204_source_manifest.json"
CATALOG = EXACT / "V204_function_names.csv"
MANUAL_CSV = ROOT / "firmware/reconstructed/exact_clang18/manual_sources/V204_manual_exact.csv"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true",
                        help="rename files and update the manifest and catalogs")
    args = parser.parse_args()

    manifest = json.loads(MANIFEST.read_text())
    with CATALOG.open(newline="") as stream:
        catalog = {int(row["address"], 16): row for row in csv.DictReader(stream)}

    moves: list[tuple[dict, Path, Path]] = []
    for item in manifest["sources"]:
        address = int(item["address"])
        row = catalog.get(address)
        if row is None:
            raise SystemExit(f"catalog entry missing for 0x{address:08x}")
        source = ROOT / item["source"]
        target = source.with_name(row["readable_symbol"] + ".c")
        if source != target:
            moves.append((item, source, target))

    if not moves:
        print("all manifested C source files already have descriptive filenames")
        return
    manifest_paths = { (ROOT / item["source"]).resolve()
                       for item in manifest["sources"] }
    destinations = [target.resolve() for _, _, target in moves]
    if len(destinations) != len(set(destinations)):
        raise SystemExit("catalog names collide within a source directory")
    for _, source, target in moves:
        if not source.is_file():
            raise SystemExit(f"missing source: {source}")
        if target.exists() and target.resolve() in manifest_paths:
            raise SystemExit(f"rename destination is another manifested source: {target}")

    print(f"{len(moves)} manifested source files can use catalog-matching names")
    for _, source, target in moves:
        print(f"{source.relative_to(ROOT)} -> {target.relative_to(ROOT)}")
    if not args.apply:
        print("preview only; pass --apply to rename files")
        return

    displaced: list[tuple[Path, Path]] = []
    for _, source, target in moves:
        if target.exists():
            backup = Path(tempfile.mkdtemp(prefix="sr08-source-name-backup-"))
            saved = backup / target.relative_to(ROOT)
            saved.parent.mkdir(parents=True, exist_ok=True)
            shutil.move(str(target), str(saved))
            displaced.append((target, saved))
        source.rename(target)
    path_map = {str(source.relative_to(ROOT)): str(target.relative_to(ROOT))
                for _, source, target in moves}
    for item in manifest["sources"]:
        item["source"] = path_map.get(item["source"], item["source"])
    MANIFEST.write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n")

    # Keep CSV dialects and line endings intact; filenames cannot contain commas.
    for csv_path in (CATALOG, MANUAL_CSV):
        data = csv_path.read_bytes()
        for _, source, target in moves:
            old = source.name.encode()
            new = target.name.encode()
            data = data.replace(b"," + old + b",", b"," + new + b",")
            data = data.replace(b"," + old + b"\r\n", b"," + new + b"\r\n")
            data = data.replace(b"," + old + b"\n", b"," + new + b"\n")
        csv_path.write_bytes(data)

    print(f"renamed {len(moves)} source files and updated their manifest/catalog paths")
    if displaced:
        print(f"preserved {len(displaced)} pre-existing duplicate paths under {displaced[0][1].parents[3]}")


if __name__ == "__main__":
    main()
