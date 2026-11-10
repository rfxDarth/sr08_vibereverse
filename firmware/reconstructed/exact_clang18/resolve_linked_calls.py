#!/usr/bin/env python3
"""Replace annotated Thumb BL halfwords with symbolic assembly calls."""
from __future__ import annotations
import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = json.loads((EXACT / "V204_source_manifest.json").read_text())
FIRST = re.compile(r'^([ \t]*)"\.inst\.n 0x(f[0-7][0-9a-f]{2}) /\*([^\n"]*)\*/\\n"\s*$')
SECOND = re.compile(r'^([ \t]*)"\.inst\.n 0x(f[89a-f][0-9a-f]{2})[^\n"]*\\n"\s*$')
SITE = re.compile(r"(?<![0-9a-f])(?:0x)?(07fc[0-9a-f]{4})(?![0-9a-f])", re.I)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()
    paths = sorted({ROOT / row["source"] for row in MANIFEST["sources"]})
    changed = total = 0
    for path in paths:
        lines = path.read_text(errors="replace").splitlines(keepends=True)
        output: list[str] = []
        i = 0
        local = 0
        while i < len(lines):
            first = FIRST.fullmatch(lines[i].rstrip("\r\n"))
            second = SECOND.fullmatch(lines[i + 1].rstrip("\r\n")) if i + 1 < len(lines) else None
            if first and second and first.group(1) == second.group(1):
                comment = first.group(3)
                target_match = re.search(r"\bbl\s+0x([0-9a-fA-F]+)", comment)
                site_match = SITE.search(comment)
                if target_match:
                    target = int(target_match.group(1), 16)
                elif site_match:
                    high, low = int(first.group(2), 16), int(second.group(2), 16)
                    site = int(site_match.group(1), 16)
                    sign = (high >> 10) & 1
                    imm10 = high & 0x3ff
                    j1, j2 = (low >> 13) & 1, (low >> 11) & 1
                    i1, i2 = 1 ^ (j1 ^ sign), 1 ^ (j2 ^ sign)
                    displacement = ((sign << 24) | (i1 << 23) | (i2 << 22) |
                                    (imm10 << 12) | ((low & 0x7ff) << 1))
                    if displacement & (1 << 24):
                        displacement -= 1 << 25
                    target = (site + 4 + displacement) & 0xffffffff
                else:
                    output.append(lines[i])
                    i += 1
                    continue
                site_note = f' /* at 0x{int(site_match.group(1), 16):08x} */' if site_match else ""
                output.append(f'{first.group(1)}"bl func_0x{target:08x}\\n"{site_note}\n')
                i += 2
                local += 1
            else:
                output.append(lines[i])
                i += 1
        if local:
            total += local
            changed += 1
            if args.apply:
                path.write_text("".join(output))
    print(f"resolved {total} annotated BL pairs in {changed} source files" +
          (" (applied)" if args.apply else " (dry run)"))

if __name__ == "__main__":
    main()
