#!/usr/bin/env python3
"""Name V204's out-of-image calls using the DA14585 SDK ROM symbol table."""

from __future__ import annotations

import csv
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent
SDK_SYMBOLS = ROOT.parent.parent / "ATC_SR08_Ring_source/Firmware_src/sdk/common_project_files/misc/da14585_symbols.txt"
SOURCE = ROOT / "V204_functions/thumb_full/functions"
OUTPUT = ROOT / "V204_functions/thumb_full/named_functions"
MAP_CSV = ROOT / "V204_ROM_SYMBOLS.csv"
REPORT = ROOT / "V204_ROM_SYMBOL_ANALYSIS.md"
CALL_RE = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
SYMBOL_RE = re.compile(r"^0x([0-9a-fA-F]+)\s+\w\s+(\S+)")


def load_symbols() -> dict[int, list[str]]:
    symbols: dict[int, list[str]] = defaultdict(list)
    for line in SDK_SYMBOLS.read_text().splitlines():
        match = SYMBOL_RE.match(line)
        if match:
            address = int(match.group(1), 16) & ~1  # Thumb function pointers have bit 0 set.
            symbols[address].append(match.group(2))
    return symbols


def main() -> None:
    symbols = load_symbols()
    OUTPUT.mkdir(parents=True, exist_ok=True)
    for stale in OUTPUT.glob("*.c"):
        stale.unlink()
    refs: dict[int, int] = defaultdict(int)
    unknown: dict[int, int] = defaultdict(int)
    files = sorted(SOURCE.glob("*.c"))

    for source in files:
        text = source.read_text()

        def replace(match: re.Match[str]) -> str:
            address = int(match.group(1), 16) & ~1
            if address not in symbols:
                unknown[address] += 1
                return match.group(0)
            refs[address] += 1
            name = symbols[address][0]
            return f"ROM_{name} /* 0x{address:08x} */"

        annotated = CALL_RE.sub(replace, text)
        (OUTPUT / source.name).write_text(annotated)

    with MAP_CSV.open("w", newline="") as out:
        writer = csv.writer(out)
        writer.writerow(("address", "symbol", "aliases", "source"))
        for address, names in sorted(symbols.items()):
            writer.writerow((f"0x{address:08x}", names[0], ";".join(names[1:]), SDK_SYMBOLS.relative_to(ROOT.parent.parent)))

    lines = [
        "# V204 external ROM-call resolution",
        "",
        "V204's Thumb-aware Ghidra output contains calls outside its loaded application payload. Their numeric targets were resolved against the DA14585 SDK symbol table at `ATC_SR08_Ring_source/Firmware_src/sdk/common_project_files/misc/da14585_symbols.txt`.",
        "",
        f"- Source pseudocode files read: {len(files)}.",
        f"- Distinct called ROM addresses resolved: {len(refs)}.",
        f"- Call references resolved: {sum(refs.values())}.",
        f"- Called addresses unresolved by this SDK table: {len(unknown)}.",
        f"- Distinct symbols in the table after Thumb-bit normalization: {len(symbols)}.",
        "",
        "The derived call-named pseudocode is in `V204_functions/thumb_full/named_functions/`; the full normalized symbol map is `V204_ROM_SYMBOLS.csv`. Names identify ROM entry points, not the OEM application's source-level intent. The SDK symbol table is dated 2017 in its header and is useful address evidence, but does not identify the firmware's application compiler or exact SDK revision.",
        "",
        "## Most-referenced ROM calls",
        "",
    ]
    for address, count in sorted(refs.items(), key=lambda item: (-item[1], item[0]))[:30]:
        lines.append(f"- `0x{address:08x}` `{symbols[address][0]}`: {count} call sites")
    if unknown:
        lines += ["", "## Unresolved targets", ""]
        lines.extend(f"- `0x{address:08x}`: {count} references" for address, count in sorted(unknown.items()))
    REPORT.write_text("\n".join(lines) + "\n")
    print(f"Annotated {len(files)} files: {sum(refs.values())} references to {len(refs)} ROM symbols; {sum(unknown.values())} unresolved references.")


if __name__ == "__main__":
    main()
