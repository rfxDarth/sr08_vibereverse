#!/usr/bin/env python3
"""Annotate out-of-image calls in the merged V204 main-loop decompilation."""

from __future__ import annotations

import csv
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
SOURCE = ROOT / "V204_main_merged.c"
OUTPUT = ROOT / "V204_main_merged_rom_named.c"
SYMBOLS = ROOT / "V204_ROM_SYMBOLS.csv"
CALL = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")


def main() -> None:
    names: dict[int, str] = {}
    with SYMBOLS.open(newline="") as stream:
        for row in csv.DictReader(stream):
            address = int(row["address"], 16) & ~1
            names[address] = row["symbol"]

    source = SOURCE.read_text()
    resolved = 0
    unresolved: set[int] = set()

    def replace(match: re.Match[str]) -> str:
        nonlocal resolved
        address = int(match.group(1), 16) & ~1
        name = names.get(address)
        if name is None:
            unresolved.add(address)
            return match.group(0)
        resolved += 1
        return f"ROM_{name} /* 0x{address:08x} */"

    OUTPUT.write_text(CALL.sub(replace, source))
    print(f"Annotated {resolved} ROM call sites; unresolved: "
          f"{', '.join(f'0x{x:08x}' for x in sorted(unresolved)) or 'none'}")


if __name__ == "__main__":
    main()
