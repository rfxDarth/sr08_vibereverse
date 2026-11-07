#!/usr/bin/env python3
"""Compile short single-return V204 pseudocode functions and compare bytes."""

from __future__ import annotations

import csv
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
SOURCES = ROOT / "V204_functions/thumb_full/functions"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
PAYLOAD = ROOT / "V204.payload.bin"
OUTPUT = ROOT / "V204_return_c_matches.csv"
FLAGS = ["-mcpu=cortex-m0", "-mthumb", "-std=gnu11", "-Os",
         "-ffreestanding", "-fno-builtin", "-ffunction-sections",
         "-fdata-sections", "-fno-ipa-icf"]
FUNCTION = re.compile(
    r"\b([\w]+)\s+(FUN_\w+)\s*\(([^{}]*)\)\s*"
    r"\{\s*return\s+([^{};]+);\s*\}", re.S)
PREAMBLE = """#include <stdint.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint8_t byte;
typedef uint16_t ushort;
"""


def main() -> None:
    payload = PAYLOAD.read_bytes()
    candidates = []
    with INDEX.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            ranges = row["ranges"].split(",")
            if len(ranges) != 1:
                continue
            start, end = (int(value, 16) for value in ranges[0].split("-"))
            if end - start + 1 > 20:
                continue
            source = SOURCES / f"{row['address']}.c"
            if not source.exists():
                continue
            text = re.sub(r"/\*.*?\*/|//[^\n]*", "",
                          source.read_text(errors="replace"), flags=re.S)
            match = FUNCTION.search(text)
            if match:
                candidates.append((row, source, match.group(0), start, end))
    if not candidates:
        raise SystemExit("No short single-return candidates found")

    results = []
    with tempfile.TemporaryDirectory(prefix="v204-return-scan-") as temporary:
        temp = Path(temporary)
        generated = temp / "candidates.c"
        generated.write_text(PREAMBLE + "\n".join(item[2] for item in candidates))
        obj = temp / "candidates.o"
        subprocess.run(["arm-none-eabi-gcc", *FLAGS, "-c", str(generated),
                        "-o", str(obj)], check=True)
        for row, source, _, start, end in candidates:
            section = temp / f"{row['name']}.bin"
            subprocess.run(["arm-none-eabi-objcopy", "--dump-section",
                            f".text.{row['name']}={section}", str(obj)],
                           check=True, stdout=subprocess.DEVNULL)
            emitted = section.read_bytes()
            expected = payload[start - BASE:end - BASE + 1]
            results.append((f"0x{start:08x}", row["name"], end-start+1,
                            emitted.hex(), expected.hex(), emitted == expected,
                            source.name))

    with OUTPUT.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("address", "function", "target_size", "compiled_hex",
                         "target_hex", "exact", "source_file"))
        writer.writerows(results)
    exact = [row for row in results if row[5]]
    print(f"Compiled {len(results)} short single-return functions; "
          f"{len(exact)} exact. Results: {OUTPUT.name}")
    for address, name, size, compiled, _, _, _ in exact:
        print(f"{address} {name}: {size} bytes {compiled}")


if __name__ == "__main__":
    main()
