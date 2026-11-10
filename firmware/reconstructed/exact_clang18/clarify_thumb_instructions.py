#!/usr/bin/env python3
"""Replace non-branch 16-bit Thumb literals with equivalent mnemonics."""
from __future__ import annotations
import argparse
from collections import Counter
import json
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
MANIFEST = json.loads((EXACT / "V204_source_manifest.json").read_text())
LITERAL = re.compile(r"\.inst\.n\s+0x([0-9a-fA-F]{1,4})\b")
ADDRESS_CALC = re.compile(
    r"(?P<instruction>\.inst\.n\s+0x(?P<word>[0-9a-fA-F]{4})\b)"
    r"(?P<spacing>\s+)/\*\s*(?P<address>0x)?(?P<location>07fc[0-9a-fA-F]{4})\s*\*/")
LABEL = re.compile(r"^([0-9a-fA-F]+) <word_([0-9a-fA-F]{4})>:$", re.M)
INSN = re.compile(r"^[ \t]*[0-9a-fA-F]+:[ \t]+([0-9a-fA-F]{4}|[0-9a-fA-F]{8})[ \t]+([a-z][a-z0-9.]*)[ \t]*([^\r\n]*)$", re.M)
SAFE = {"adds", "subs", "ands", "eors", "lsls", "lsrs", "asrs", "adcs",
        "sbcs", "rors", "orrs", "muls", "bics", "mvns", "negs", "cmp",
        "cmn", "tst", "mov", "movs", "ldr", "str", "ldrb", "strb",
        "ldrh", "strh", "ldsb", "ldsh", "push", "pop", "rev", "rev16",
        "revsh", "sxth", "sxtb", "uxth", "uxtb", "add", "sub", "ldrsh",
        "ldrsb", "stmia", "ldmia", "nop", "cpsie", "cpsid", "wfi"}
SAFE |= {"bx", "blx"}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true", help="write mnemonic replacements")
    parser.add_argument("--annotate-address-calculations", action="store_true",
                        help="annotate raw ADR encodings with their calculated targets")
    args = parser.parse_args()
    paths = sorted({ROOT / row["source"] for row in MANIFEST["sources"]})
    contents = {path: path.read_text(errors="replace") for path in paths}
    words = sorted({int(value, 16) for text in contents.values()
                    for value in LITERAL.findall(text)
                    if int(value, 16) < 0xE800})
    asm = [".syntax unified", ".thumb", ".code 16", '.section .text,"ax"']
    for word in words:
        asm.extend([f".global word_{word:04x}", f"word_{word:04x}:",
                    f".inst.n 0x{word:04x}", ".inst.n 0xbf00"])
    with tempfile.TemporaryDirectory(prefix="v204-thumb-decode-") as directory:
        assembly = Path(directory) / "decode.s"
        obj = Path(directory) / "decode.o"
        assembly.write_text("\n".join(asm) + "\n")
        build = subprocess.run(["arm-none-eabi-as", "-mcpu=cortex-m0", "-mthumb",
                                str(assembly), "-o", str(obj)], capture_output=True, text=True)
        if build.returncode:
            raise SystemExit(build.stderr)
        disassembly = subprocess.run(["arm-none-eabi-objdump", "-d", str(obj)],
                                     check=True, capture_output=True, text=True).stdout
    labels = list(LABEL.finditer(disassembly))
    decoded: dict[str, str] = {}
    skipped: Counter[str] = Counter()
    for index, label in enumerate(labels):
        start = label.end()
        end = labels[index + 1].start() if index + 1 < len(labels) else len(disassembly)
        match = INSN.search(disassembly, start, end)
        if not match or match.group(1).lower() != label.group(2).lower():
            continue
        mnemonic, operands = match.group(2), match.group(3)
        alias = re.search(r"@\s*\(([^)]*)\)", operands)
        if mnemonic == "nop" and alias:
            expanded = alias.group(1).strip().split(None, 1)
            mnemonic = expanded[0]
            operands = expanded[1] if len(expanded) > 1 else ""
        operands = operands.split("@", 1)[0].rstrip()
        word = int(label.group(2), 16)
        high_register_add_pc = (
            word & 0xFC00 == 0x4400 and
            (word >> 8) & 3 == 0 and
            (word >> 3) & 0xF == 0xF)
        if (mnemonic in SAFE and
                (not mnemonic.startswith("b") or mnemonic in {"bics", "bx", "blx"}) and
                mnemonic != "adr" and
                ("pc" not in operands.lower() or high_register_add_pc)):
            decoded[label.group(2).lower()] = f"{mnemonic} {operands}".rstrip()
        else:
            skipped[mnemonic] += 1
    replacements = 0
    annotations = 0
    changed_files = 0
    address_annotations = 0
    for path, text in contents.items():
        def replace(match: re.Match[str]) -> str:
            nonlocal replacements, annotations
            word = int(match.group(1), 16)
            mnemonic = decoded.get(f"{word:04x}")
            if mnemonic is None:
                suffix = text[match.end():match.end() + 160]
                if "/* branch:" in suffix:
                    return match.group(0)
                condition = (word >> 8) & 0xF
                if (word & 0xF000) == 0xD000 and condition < 14:
                    offset = word & 0xFF
                    if offset & 0x80:
                        offset -= 0x100
                    delta = 4 + 2 * offset
                    name = ("eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
                            "hi", "ls", "ge", "lt", "gt", "le")[condition]
                elif (word & 0xF800) == 0xE000:
                    offset = word & 0x7FF
                    if offset & 0x400:
                        offset -= 0x800
                    delta = 4 + 2 * offset
                    name = "always"
                else:
                    return match.group(0)
                relation = f"+{delta}" if delta >= 0 else str(delta)
                annotations += 1
                return f"{match.group(0)} /* branch: {name}, target at .{relation} */"
            replacements += 1
            return mnemonic
        updated = LITERAL.sub(replace, text)
        if args.annotate_address_calculations:
            def annotate_address(match: re.Match[str]) -> str:
                nonlocal address_annotations
                word = int(match.group("word"), 16)
                if word & 0xF800 != 0xA000:
                    return match.group(0)
                address = int(match.group("location"), 16)
                target = ((address + 4) & ~3) + ((word & 0xFF) << 2)
                register = (word >> 8) & 7
                prefix = match.group("address") or ""
                address_annotations += 1
                return (f"{match.group('instruction')} /* {prefix}{match.group('location')}: "
                        f"adr r{register}, 0x{target:08x} */")
            updated = ADDRESS_CALC.sub(annotate_address, updated)
        if updated != text:
            changed_files += 1
            if args.apply:
                path.write_text(updated)
    print(f"decoded {replacements} of {sum(len(LITERAL.findall(t)) for t in contents.values())} literals "
          f"and annotated {annotations} relative branches across {changed_files} source files"
          + (f"; added {address_annotations} ADR target annotations" if args.annotate_address_calculations else "")
          + (" (applied)" if args.apply else " (dry run)"))
    print("left as raw words (branches or unrecognized encodings):", skipped.most_common(20))

if __name__ == "__main__":
    main()
