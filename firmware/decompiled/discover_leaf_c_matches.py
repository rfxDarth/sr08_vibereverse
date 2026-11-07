#!/usr/bin/env python3
"""Compile simple Ghidra leaf pseudocode and find exact V204 byte matches."""

from __future__ import annotations

import csv
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
SOURCE_DIR = ROOT / "V204_functions/thumb_full/functions"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
PAYLOAD = (ROOT / "V204.payload.bin").read_bytes()
OUTPUT = ROOT / "V204_simple_leaf_matches.csv"
FLAGS = ["-mcpu=cortex-m0", "-mthumb", "-std=gnu11", "-Os",
         "-ffreestanding", "-fno-builtin", "-ffunction-sections",
         "-fdata-sections", "-fno-ipa-icf"]


def simple_return(text: str) -> tuple[str, str] | None:
    text = re.sub(r"/\*.*?\*/|//[^\n]*", "", text, flags=re.S)
    match = re.search(
        r"\b(void|undefined[124]|u?int(?:8|16|32|64)_t|int|uint|char|byte|ushort)"
        r"\s+(FUN_[A-Za-z0-9_]+)\s*\([^{}]*\)\s*\{\s*return\s*(.*?)\s*;\s*\}",
        text, flags=re.S)
    if not match:
        return None
    return_type, name, expression = match.groups()
    if return_type == "void" and not expression:
        return name, "void"
    if return_type != "void" and expression in {"0", "1", "'\\0'", "'\\x00'"}:
        constant = "0" if expression in {"0", "'\\0'", "'\\x00'"} else "1"
        return name, constant
    return None


def main() -> None:
    index = {}
    with INDEX.open(newline="") as source:
        for row in csv.DictReader(source, delimiter="\t"):
            ranges = row["ranges"].split(",")
            if len(ranges) != 1:
                continue
            first, last = ranges[0].split("-")
            index[row["name"]] = (int(first, 16), int(last, 16))

    candidates = []
    for source in sorted(SOURCE_DIR.glob("*.c")):
        found = simple_return(source.read_text(errors="replace"))
        if found and found[0] in index:
            candidates.append((source, found[0], found[1], *index[found[0]]))
    if not candidates:
        raise SystemExit("No simple leaf candidates found")

    with tempfile.TemporaryDirectory(prefix="v204-leaf-scan-") as temporary:
        temp = Path(temporary)
        generated = temp / "leaves.c"
        lines = ["#include <stdint.h>"]
        for _, name, result, _, _ in candidates:
            if result == "void":
                lines.append(f"void {name}(void) {{ return; }}")
            else:
                lines.append(f"uint32_t {name}(void) {{ return {result}; }}")
        generated.write_text("\n".join(lines) + "\n")
        obj = temp / "leaves.o"
        subprocess.run(["arm-none-eabi-gcc", *FLAGS, "-c", str(generated), "-o", str(obj)], check=True)
        matches = []
        for source, name, result, first, last in candidates:
            section = temp / f"{name}.text"
            subprocess.run(["arm-none-eabi-objcopy", "--dump-section",
                            f".text.{name}={section}", str(obj)], check=True,
                           stdout=subprocess.DEVNULL)
            emitted = section.read_bytes()
            size = last - first + 1
            target = PAYLOAD[first - BASE:first - BASE + size]
            exact = len(emitted) == size and emitted == target
            matches.append((f"0x{first:08x}", name, result, size,
                            emitted.hex(), target.hex(), exact, source.name))

    with OUTPUT.open("w", newline="") as destination:
        writer = csv.writer(destination)
        writer.writerow(("address", "function", "simple_return", "target_size",
                         "compiled_hex", "target_hex", "exact", "source_file"))
        writer.writerows(matches)
    exact = sum(row[6] for row in matches)
    print(f"Compiled {len(matches)} simple leaf candidates; {exact} exact byte matches. "
          f"Details: {OUTPUT.name}")


if __name__ == "__main__":
    main()
