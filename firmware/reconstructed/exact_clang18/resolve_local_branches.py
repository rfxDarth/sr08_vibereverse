#!/usr/bin/env python3
"""Replace encodable relative branch words with local-label mnemonics."""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = json.loads((EXACT / "V204_source_manifest.json").read_text())
SYMBOL_BY_PATH = {ROOT / row["source"]: row["symbol"] for row in MANIFEST["sources"]}
RAW = re.compile(r"\.inst\.n\s+0x([0-9a-fA-F]{4})\b")
DELTA = re.compile(r"target at \.([+-])(\d+)")
ADDRESS = re.compile(r"(?<![0-9a-f])(?:0x)?(07fc[0-9a-f]{4})(?![0-9a-f])", re.I)
CONDITIONS = ("eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
              "hi", "ls", "ge", "lt", "gt", "le")


def asm_blocks(lines: list[str]) -> dict[int, int]:
    """Map each line in a multiline inline-assembly statement to its opening line."""
    blocks: dict[int, int] = {}
    opening: int | None = None
    for number, line in enumerate(lines):
        if opening is None and re.search(r"__asm__\s+volatile\s*\(\s*$", line):
            opening = number
        if opening is not None:
            blocks[number] = opening
            if re.match(r"\s*\);", line):
                opening = None
    return blocks


def branch_mnemonic(word: int) -> str | None:
    if word & 0xF000 == 0xD000:
        condition = (word >> 8) & 0xf
        return f"b{CONDITIONS[condition]}.n" if condition < 14 else None
    if word & 0xF800 == 0xE000:
        return "b.n"
    return None


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()
    paths = sorted({ROOT / row["source"] for row in MANIFEST["sources"]})
    converted = skipped_nonbranch = skipped_metadata = skipped_external = 0
    for path in paths:
        lines = path.read_text(errors="replace").splitlines(keepends=True)
        blocks = asm_blocks(lines)
        addresses: dict[tuple[int, int], int] = {}
        labels: dict[int, set[str]] = {}
        for line_number, line in enumerate(lines):
            block = blocks.get(line_number)
            if block is None:
                continue
            matches = list(ADDRESS.finditer(line))
            if matches:
                address = int(matches[-1].group(1), 16)
                addresses[(block, address)] = line_number

        replacements: dict[int, tuple[str, str, int]] = {}
        for line_number, line in enumerate(lines):
            raw = RAW.search(line)
            if not raw:
                continue
            word = int(raw.group(1), 16)
            mnemonic = branch_mnemonic(word)
            if not mnemonic:
                skipped_nonbranch += 1
                continue
            delta_match = DELTA.search(line)
            block = blocks.get(line_number)
            site_matches = list(ADDRESS.finditer(line))
            if not delta_match or block is None or not site_matches:
                skipped_metadata += 1
                continue
            site = int(site_matches[-1].group(1), 16)
            delta = int(delta_match.group(2)) * (1 if delta_match.group(1) == "+" else -1)
            target = site + delta
            target_line = addresses.get((block, target))
            if target_line is None:
                skipped_external += 1
                continue
            label = f".L_{SYMBOL_BY_PATH[path]}_at_{target:08x}"
            replacements[line_number] = (mnemonic, label, word)
            labels.setdefault(target_line, set()).add(label)

        if not replacements:
            continue
        output: list[str] = []
        for number, line in enumerate(lines):
            for label in sorted(labels.get(number, ())):
                indent = re.match(r"\s*", line).group(0)
                output.append(f'{indent}"{label}:\\n"\n')
            replacement = replacements.get(number)
            if replacement:
                mnemonic, label, _word = replacement
                line = RAW.sub(f"{mnemonic} {label}", line, count=1)
                converted += 1
            output.append(line)
        updated = "".join(output)
        if args.apply:
            path.write_text(updated)
    print(f"resolved {converted} local branches; skipped {skipped_external} without an in-block target, "
          f"{skipped_metadata} without reliable address metadata, and {skipped_nonbranch} non-branch words"
          + (" (applied)" if args.apply else " (dry run)"))


if __name__ == "__main__":
    main()
