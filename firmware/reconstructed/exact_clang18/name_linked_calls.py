#!/usr/bin/env python3
"""Name inline-assembly calls to reconstructed functions and firmware ROM."""
from __future__ import annotations

import argparse
import csv
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = json.loads((EXACT / "V204_source_manifest.json").read_text())
NAMES = EXACT / "V204_function_names.csv"
STRINGS = re.compile(r'"(?:\\.|[^"\\])*"')
CALL = re.compile(r"\bbl(?:\.n)?\s+(?:func_0x|FUN_)([0-9a-fA-F]{8})\b")
IDENTIFIER = re.compile(r"[A-Za-z_]\w*\Z")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()
    with NAMES.open(newline="") as stream:
        symbols = {
            int(row["address"], 16): row["readable_symbol"]
            for row in csv.DictReader(stream)
        }
    symbols.update({
        address: symbol
        for symbol, address in MANIFEST["rom_symbols"].items()
        if IDENTIFIER.fullmatch(symbol)
    })
    paths = sorted({ROOT / row["source"] for row in MANIFEST["sources"]})
    replacements = files = 0
    for path in paths:
        original = path.read_text(errors="replace")
        count = 0

        def rename_string(match: re.Match[str]) -> str:
            nonlocal count
            literal = match.group(0)

            def rename_call(call: re.Match[str]) -> str:
                nonlocal count
                target = int(call.group(1), 16)
                symbol = symbols.get(target)
                if symbol is None:
                    return call.group(0)
                count += 1
                suffix = ".n" if ".n " in call.group(0) else ""
                return f"bl{suffix} {symbol}"

            return CALL.sub(rename_call, literal)

        updated = STRINGS.sub(rename_string, original)
        if updated != original:
            replacements += count
            files += 1
            if args.apply:
                path.write_text(updated)
    print(f"named {replacements} assembly calls across {files} files"
          + (" (applied)" if args.apply else " (dry run)"))


if __name__ == "__main__":
    main()
