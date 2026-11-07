#!/usr/bin/env python3
"""Link the explicit wrapper C fixture at V204 addresses and compare bytes."""

from __future__ import annotations

import csv
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
PAYLOAD = (ROOT / "V204.payload.bin").read_bytes()
SOURCE = ROOT / "probes/reconstructed_wrappers.c"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
CC = ["arm-none-eabi-gcc", "-mcpu=cortex-m0", "-mthumb", "-std=gnu11",
      "-Os", "-ffreestanding", "-fno-builtin", "-ffunction-sections",
      "-fdata-sections", "-w"]
ADDRESSES = {
    "FUN_07fc1cdc": 0x07FC1CDC,
    "FUN_07fc1ce6": 0x07FC1CE6,
    "FUN_07fc1cf0": 0x07FC1CF0,
    "FUN_07fc1cfa": 0x07FC1CFA,
    "FUN_07fc1d04": 0x07FC1D04,
    "FUN_07fc24c6": 0x07FC24C6,
    "FUN_07fc24d0": 0x07FC24D0,
    "FUN_07fc5694": 0x07FC5694,
    "FUN_07fc5f28": 0x07FC5F28,
    "FUN_07fc5f30": 0x07FC5F30,
    "FUN_07fc97c0": 0x07FC97C0,
    "FUN_07fc97ca": 0x07FC97CA,
    "FUN_07fcaf78": 0x07FCAF78,
    "FUN_07fc1e50": 0x07FC1E50,
    "FUN_07fc7f58": 0x07FC7F58,
    "FUN_07fc82a0": 0x07FC82A0,
    "FUN_07fc8838": 0x07FC8838,
    "FUN_07fc3e90": 0x07FC3E90,
    "FUN_07fc18f4": 0x07FC18F4,
    "FUN_07fc1b88": 0x07FC1B88,
}


def run(command: list[str]) -> None:
    subprocess.run(command, check=True, capture_output=True)


def main() -> None:
    with INDEX.open(newline="") as stream:
        index = {row["name"]: int(row["address"], 16)
                 for row in csv.DictReader(stream, delimiter="\t")}
    source = SOURCE.read_text()
    functions = {}
    for name in ADDRESSES:
        match = re.search(rf"\b(?:void|int|uint32_t)\s+{re.escape(name)}"
                          r"\s*\([^)]*\)\s*\{", source)
        if not match:
            raise SystemExit(f"missing function definition: {name}")
        depth, position = 1, match.end()
        while depth:
            if source[position] == "{":
                depth += 1
            elif source[position] == "}":
                depth -= 1
            position += 1
        functions[name] = source[match.start():position]
    preamble = source[:min(source.index(body) for body in functions.values())]

    with tempfile.TemporaryDirectory(prefix="v204-wrapper-match-") as directory:
        temp = Path(directory)
        for name, address in ADDRESSES.items():
            function_source = functions[name]
            c_file, obj, elf = (temp / f"{name}.c", temp / f"{name}.o",
                                temp / f"{name}.elf")
            c_file.write_text(preamble + function_source + "\n")
            run([*CC, "-c", str(c_file), "-o", str(obj)])
            refs = set(re.findall(r"\bFUN_[0-9a-fA-F]{8}\b", function_source))
            refs.discard(name)
            rom_refs = set(re.findall(r"\bfunc_0x[0-9a-fA-F]{8}\b", function_source))
            defs = [f"--defsym={callee}=0x{index[callee]:x}"
                    for callee in sorted(refs)]
            defs.extend(f"--defsym={callee}=0x{int(callee[7:], 16):x}"
                        for callee in sorted(rom_refs))
            run(["arm-none-eabi-ld", f"-Ttext=0x{address:x}",
                 f"--entry={name}", *defs, str(obj), "-o", str(elf)])
            raw = temp / f"{name}.bin"
            run(["arm-none-eabi-objcopy", "-O", "binary", "-j", ".text",
                 str(elf), str(raw)])
            emitted = raw.read_bytes()
            target = PAYLOAD[address-BASE:address-BASE+len(emitted)]
            exact = emitted == target
            print(f"0x{address:08x}: {len(emitted)} bytes, exact={exact}, "
                  f"compiled={emitted.hex()}, target={target.hex()}")
            if not exact:
                raise SystemExit(f"byte mismatch in {name}")

    print(f"All {len(ADDRESSES)} explicit C wrapper sections match V204.")


if __name__ == "__main__":
    main()
