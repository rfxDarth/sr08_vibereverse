#!/usr/bin/env python3
"""List the remaining inline-assembly units as Arm compiler link groups.

Maintenance tool. V204's literal pools are shared across functions because
armlink merged identical constants, so functions that load from one pool
must be linked together. This tool disassembles every V204 function section
from a reference payload, follows PC-relative literal loads and ADR address
calculations to their targets, and joins each function with the sections it
reads. Each resulting group spans a contiguous address range; every section
inside it is part of the group.

The output lists groups smallest first with each member's asm status and a
compiler guess from its prologue (``push {..., r7, lr}`` suggests armclang,
other pushes suggest armcc). Guesses only order the work; probing with
``probe_arm_group.py`` decides.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import tempfile
from pathlib import Path

import build_v204 as build

LAYOUT = build.DATA_DIR / "V204_data_sections.ld"
LAYOUT_RE = re.compile(r"\.v204\.(func|auto|data)\.([0-9a-f]+) 0x[0-9a-f]+ : \{ KEEP\(\*\(([^)]+)\)\) \}")
LOAD_RE = re.compile(r"^\s*([0-9a-f]+):\s+[0-9a-f ]+\s+ldr\s+r\d+, \[pc, #(\d+)\]", re.M)
ADR_RE = re.compile(r"^\s*([0-9a-f]+):\s+[0-9a-f ]+\s+(?:add\s+r\d+, pc, #|adr\s+r\d+, .*?#)(\d+)", re.M)
PUSH_RE = re.compile(r"^\s*[0-9a-f]+:\s+[0-9a-f ]+\s+push\s+\{([^}]*)\}", re.M)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--reference", type=Path, default=build.ROOT / "firmware" / "V204.bin")
    parser.add_argument("--payload", action="store_true", help="--reference is a flat payload")
    parser.add_argument("--json", type=Path, help="also write the plan as JSON")
    parser.add_argument("--all", action="store_true", help="include groups without inline assembly")
    args = parser.parse_args()
    payload = args.reference.read_bytes()[0 if args.payload else 64:]

    manifest = json.loads(build.MANIFEST.read_text())
    sources = {row["symbol"]: build.ROOT / row["source"] for row in manifest["sources"]}
    has_asm = {symbol: "__asm__" in path.read_text() for symbol, path in sources.items()}
    sections = []
    for kind, address, selector in LAYOUT_RE.findall(LAYOUT.read_text()):
        name = selector.removeprefix(".text.") if kind == "func" else selector
        sections.append([int(address, 16), kind, name])
    sections.sort()
    for index, section in enumerate(sections):
        end = sections[index + 1][0] if index + 1 < len(sections) else build.BASE + build.IMAGE_SIZE
        section.append(end)
    starts = [section[0] for section in sections]

    def containing(address: int) -> int:
        low, high = 0, len(starts) - 1
        while low < high:
            middle = (low + high + 1) // 2
            if starts[middle] <= address:
                low = middle
            else:
                high = middle - 1
        return low

    parent = list(range(len(sections)))

    def find(index: int) -> int:
        while parent[index] != index:
            parent[index] = parent[parent[index]]
            index = parent[index]
        return index

    prologue = {}
    with tempfile.TemporaryDirectory() as directory:
        for index, (start, kind, name, end) in enumerate(sections):
            if kind != "func":
                continue
            blob = Path(directory) / "f.bin"
            blob.write_bytes(payload[start - build.BASE:end - build.BASE])
            listing = subprocess.run(["arm-none-eabi-objdump", "-D", "-b", "binary", "-marm", "-Mforce-thumb",
                                      f"--adjust-vma=0x{start:x}", str(blob)],
                                     check=True, capture_output=True, text=True).stdout
            push = PUSH_RE.search(listing)
            prologue[name] = push.group(1) if push else ""
            targets = [((int(pc, 16) + 4) & ~3) + int(offset) for pc, offset in LOAD_RE.findall(listing)]
            targets += [((int(pc, 16) + 4) & ~3) + int(offset) for pc, offset in ADR_RE.findall(listing)]
            for target in targets:
                if build.BASE <= target < build.BASE + build.IMAGE_SIZE:
                    other = containing(target)
                    if other != index:
                        parent[find(other)] = find(index)
    groups: dict[int, list[int]] = {}
    for index in range(len(sections)):
        groups.setdefault(find(index), []).append(index)
    # Fill gaps: every section between a group's first and last member joins it.
    spans = sorted((min(members), max(members)) for members in groups.values() if len(members) > 1)
    merged: list[list[int]] = []
    for low, high in spans:
        if merged and low <= merged[-1][1]:
            merged[-1][1] = max(merged[-1][1], high)
        else:
            merged.append([low, high])
    in_span = set()
    plan = []
    for low, high in merged:
        in_span.update(range(low, high + 1))
        plan.append(list(range(low, high + 1)))
    plan += [[index] for index, section in enumerate(sections) if index not in in_span and section[1] == "func"]

    done = build.ARM_COMPILER_UNITS | build.ARM_LIBRARY_UNITS
    rows = []
    for members in plan:
        functions = [sections[i][2] for i in members if sections[i][1] == "func"]
        if not functions:
            continue
        asm_count = sum(has_asm.get(name, False) for name in functions)
        if not args.all and (asm_count == 0 or all(name in done for name in functions)):
            continue
        start, end = sections[members[0]][0], sections[members[-1]][3]
        guesses = []
        for name in functions:
            regs = prologue.get(name, "")
            guesses.append("ac6?" if "r7" in regs else ("ac5?" if regs else "leaf"))
        rows.append({"start": f"0x{start:08x}", "size": end - start, "asm_units": asm_count,
                     "functions": [{"symbol": name, "asm": has_asm.get(name, False), "guess": guess,
                                    "manifested": name in sources, "converted": name in done}
                                   for name, guess in zip(functions, guesses)]})
    rows.sort(key=lambda row: (row["size"], row["start"]))
    total = sum(row["asm_units"] for row in rows)
    print(f"{len(rows)} groups, {total} units with inline assembly")
    for row in rows:
        members = ", ".join(f"{item['symbol']}[{item['guess']}{'' if item['asm'] else ',C'}"
                            f"{'' if item['manifested'] else ',chunk'}]" for item in row["functions"])
        print(f"{row['start']} {row['size']:5d}B  {members}")
    if args.json:
        args.json.write_text(json.dumps(rows, indent=1) + "\n")


if __name__ == "__main__":
    main()
