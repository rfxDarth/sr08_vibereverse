#!/usr/bin/env python3
"""Replace the last known split Thumb system-register encodings with mnemonics."""
from __future__ import annotations
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = json.loads((EXACT / "V204_source_manifest.json").read_text())
OPERATIONS = {
    0x07FC88E2: "mrs r2, PRIMASK",
    0x07FC88E8: "msr PRIMASK, r1",
    0x07FC88FA: "msr PRIMASK, r1",
    0x07FC8902: "msr PRIMASK, r2",
    0x07FCAEF8: "mrs r0, PRIMASK",
    0x07FCAEFC: "msr PRIMASK, r7",
    0x07FCAF0C: "msr PRIMASK, r7",
    0x07FCAF12: "msr PRIMASK, r4",
    0x07FC1756: "dsb sy",
    0x07FC175A: "isb sy",
}
LINE = re.compile(r'^([ \t]*)"\.inst\.n 0xf[0-9a-f]{3} /\* 0x([0-9a-fA-F]{8}) \*/\\n"\s*$')


def main() -> None:
    paths = sorted({ROOT / row["source"] for row in MANIFEST["sources"]})
    converted = 0
    for path in paths:
        lines = path.read_text(errors="replace").splitlines(keepends=True)
        out = []
        i = 0
        local = 0
        while i < len(lines):
            match = LINE.fullmatch(lines[i].rstrip("\r\n"))
            address = int(match.group(2), 16) if match else None
            if address in OPERATIONS and i + 1 < len(lines):
                out.append(f'{match.group(1)}"{OPERATIONS[address]} /* 0x{address:08x} */\\n"\n')
                i += 2
                converted += 1
                local += 1
            else:
                out.append(lines[i])
                i += 1
        if local:
            path.write_text("".join(out))
    combined = "\n".join(path.read_text(errors="replace") for path in paths)
    missing = [f"0x{address:08x}" for address, operation in OPERATIONS.items()
               if f"{operation} /* 0x{address:08x} */" not in combined]
    if missing:
        raise SystemExit(f"unresolved system-register operations: {missing}")
    print(f"decoded {converted} system-register instructions")

if __name__ == "__main__":
    main()
