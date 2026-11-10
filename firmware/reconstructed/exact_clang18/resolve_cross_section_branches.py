#!/usr/bin/env python3
"""Name exact Thumb branches whose targets are in another linked section."""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = json.loads((EXACT / "V204_source_manifest.json").read_text())
SYMBOL_BY_PATH = {ROOT / row["source"]: row["symbol"] for row in MANIFEST["sources"]}
COMMENT = re.compile(r"/\*([\s\S]*?)\*/")
ADDRESS = re.compile(
    r"^\s*(?:at\s+)?(?:0x)?(07fc[0-9a-f]{4})(?:\s*:(?:.*)|\s*)$", re.I)
RAW_BRANCH = re.compile(r"\.inst\.n\s+0x([0-9a-f]{4})\b", re.I)


def asm_blocks(lines: list[str]) -> dict[int, int]:
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
        conditions = ("eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
                      "hi", "ls", "ge", "lt", "gt", "le")
        condition = (word >> 8) & 0xF
        return f"b{conditions[condition]}.n" if condition < len(conditions) else None
    if word & 0xF800 == 0xE000:
        return "b.n"
    return None


def encoded_target(word: int, site: int) -> int:
    if word & 0xF000 == 0xD000:
        immediate = word & 0xFF
        immediate = immediate - 0x100 if immediate & 0x80 else immediate
    else:
        immediate = word & 0x7FF
        immediate = immediate - 0x800 if immediate & 0x400 else immediate
    return site + 4 + 2 * immediate


def source_address(line: str) -> int | None:
    for comment in COMMENT.findall(line):
        match = ADDRESS.match(comment)
        if match:
            return int(match.group(1), 16)
    return None


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()
    paths = sorted({ROOT / row["source"] for row in MANIFEST["sources"]})
    contents = {path: path.read_text(errors="replace").splitlines(keepends=True)
                for path in paths}
    locations: dict[int, list[tuple[Path, int, int]]] = {}
    branches: list[tuple[Path, int, int, int, str]] = []
    missing_sites = 0

    for path, lines in contents.items():
        blocks = asm_blocks(lines)
        for number, line in enumerate(lines):
            block = blocks.get(number)
            if block is None:
                continue
            site = source_address(line)
            if site is not None:
                locations.setdefault(site, []).append((path, block, number))
            raw = RAW_BRANCH.search(line)
            if raw:
                if site is not None:
                    branches.append((path, block, number, site, raw.group(1).lower()))
                else:
                    missing_sites += 1

    replacements: dict[Path, dict[int, tuple[str, str]]] = {}
    labels: dict[Path, dict[int, str]] = {}
    skipped = {"not_branch": 0, "missing_site": 0, "unknown_target": 0,
               "ambiguous_target": 0, "same_section": 0}
    skipped["missing_site"] = missing_sites
    for path, block, number, site, raw_hex in branches:
        word = int(raw_hex, 16)
        mnemonic = branch_mnemonic(word)
        if mnemonic is None:
            skipped["not_branch"] += 1
            continue
        target = encoded_target(word, site)
        candidates = locations.get(target, [])
        if not candidates:
            skipped["unknown_target"] += 1
            continue
        if len(candidates) != 1:
            skipped["ambiguous_target"] += 1
            continue
        target_path, target_block, target_line = candidates[0]
        if target_path == path and target_block == block:
            skipped["same_section"] += 1
            continue
        owner = SYMBOL_BY_PATH[target_path]
        symbol = f"{owner}_branch_at_{target:08x}"
        replacements.setdefault(path, {})[number] = (mnemonic, symbol)
        labels.setdefault(target_path, {})[target_line] = symbol

    changed: dict[Path, str] = {}
    for path, lines in contents.items():
        output: list[str] = []
        for number, line in enumerate(lines):
            symbol = labels.get(path, {}).get(number)
            if symbol:
                output.append(f'        ".global {symbol}\\n"\n')
                output.append(f'        "{symbol}:\\n"\n')
            replacement = replacements.get(path, {}).get(number)
            if replacement:
                mnemonic, symbol = replacement
                line = RAW_BRANCH.sub(f"{mnemonic} {symbol}", line, count=1)
            output.append(line)
        changed[path] = "".join(output)

    count = sum(len(items) for items in replacements.values())
    print(f"resolved {count} cross-section branches; skipped " + ", ".join(
        f"{name}={value}" for name, value in skipped.items()))
    for path, rows in replacements.items():
        for line_number, (mnemonic, symbol) in rows.items():
            print(f"{path.relative_to(ROOT)}:{line_number + 1}: {mnemonic} -> {symbol}")
    if args.apply:
        for path in replacements.keys() | labels.keys():
            path.write_text(changed[path])
        print("changes applied")


if __name__ == "__main__":
    main()
