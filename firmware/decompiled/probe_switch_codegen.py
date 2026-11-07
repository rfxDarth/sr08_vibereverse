#!/usr/bin/env python3
"""Compile FUN_07fc6fc0's recovered switch and compare its full code span."""

from __future__ import annotations

import argparse
import csv
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
START = 0x7FC6FC0
END = 0x7FC7275  # includes the dispatch table and hidden switch bodies
FUNCTION = "FUN_07fc6fc0"
SOURCE = ROOT / "V204_functions/thumb_full/functions/07fc6fc0.c"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
PAYLOAD = ROOT / "V204.payload.bin"
ROM_MAP = ROOT / "V204_ROM_SYMBOLS.csv"

PREAMBLE = """#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef signed char sbyte;
typedef unsigned long ulong;
typedef long long longlong;
typedef unsigned long long ulonglong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define uRam07fc7278 0x7fffu
#define iRam07fc727c 0x2604u
#define _DAT_07fc7280 0x0c16u
#define _DAT_07fc737c 0x07fd56d0u
#define puRam07fc7518 ((uint32_t *)0x50003100u)
#define puRam07fc751c ((uint32_t *)0x50003302u)
"""
COMMENT = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)
FUN = re.compile(r"\bFUN_([0-9a-fA-F]{8})\b")
ROM = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cc", default="clang", help="compiler executable")
    parser.add_argument("--optimization", default="s", help="compiler level: 0, 1, 2, 3, s, or z")
    parser.add_argument("--omit-frame-pointer", action="store_true")
    parser.add_argument("--pin-argument-registers", action="store_true",
                        help="bind switch inputs to the stock r5/r7/r6 entry registers")
    parser.add_argument("--capture-call-register-results", action="store_true",
                        help="capture the first helper's pointer/status from r4/r0 into r2/r4")
    parser.add_argument("--stack-pad", type=int, choices=(4, 8, 12), default=0,
                        help="reserve dead addressable stack bytes for frame-size experiments")
    parser.add_argument("--stack-pad-after-locals", action="store_true",
                        help="declare the addressable stack pad after the switch output locals")
    parser.add_argument("--reverse-switch-locals", action="store_true",
                        help="reverse declaration order of the three helper output objects")
    parser.add_argument("--group-switch-output-locals", action="store_true",
                        help="model the three helper output objects as one contiguous C struct")
    parser.add_argument("--output-struct-leading-words", type=int, choices=(1, 2), default=0,
                        help="reserve leading words before the grouped output objects")
    parser.add_argument("--volatile-status-local", action="store_true",
                        help="force the first helper status value to have a stack home")
    parser.add_argument("--target-stack-struct", action="store_true",
                        help="model the status and three output objects in one offset-controlled struct")
    parser.add_argument("--target-stack-leading-words", type=int, choices=(1, 2), default=0,
                        help="reserve leading words in the target stack struct before status")
    parser.add_argument("--status-register-copy", action="store_true",
                        help="keep the initial status in a register and spill it after the early return check")
    parser.add_argument("--defer-param3-copy", action="store_true",
                        help="copy the pinned r7 argument to a stack local only after the status check")
    parser.add_argument("--volatile-deferred-copies", action="store_true",
                        help="make the status and deferred r7 stack copies volatile to constrain their store order")
    parser.add_argument("--volatile-status-preserve-stack", action="store_true",
                        help="make status volatile and keep the leading target stack words addressable")
    parser.add_argument("--barrier-deferred-copies", action="store_true",
                        help="insert a compiler memory barrier between the status and deferred r7 copies")
    parser.add_argument("--status-test-register", action="store_true",
                        help="bind the shifted status value to r1 while keeping the failure branch in C")
    parser.add_argument("--asm-goto-status-test", action="store_true",
                        help="emit the stock r1 shift and conditional branch through asm goto")
    parser.add_argument("--output-dir", type=Path,
                        default=ROOT / "compiler_probes/FUN_07fc6fc0")
    args = parser.parse_args()

    code = COMMENT.sub("", SOURCE.read_text(errors="replace"))
    suffix = ""
    if args.target_stack_struct:
        code, status_replaced = re.subn(r"\buint\s+uVar5\s*;", "", code, count=1)
        output_decls = re.compile(
            r"sbyte\s+asStack_20\s*\[4\];\s*"
            r"byte\s+abStack_1c\s*\[4\];\s*uint\s+uStack_18;")
        code, outputs_replaced = output_decls.subn("", code, count=1)
        if not status_replaced or not outputs_replaced:
            parser.error("could not find the switch function's stack locals")
        brace = code.index("{")
        leading = (f"uint leading[{args.target_stack_leading_words}]; "
                   if args.target_stack_leading_words else "")
        struct_decl = f"struct {{ {leading}uint status; uint reserved; sbyte as[4]; byte ab[4]; uint u; }} stack_local;"
        code = code[:brace + 1] + "\n  " + struct_decl + "\n" + code[brace + 1:]
        for old, new in (("uVar5", "stack_local.status"),
                         ("asStack_20", "stack_local.as"),
                         ("abStack_1c", "stack_local.ab"),
                         ("uStack_18", "stack_local.u")):
            code = re.sub(r"\b" + old + r"\b", new, code)
        suffix += "_targetstack"
        if args.target_stack_leading_words:
            suffix += f"_lead{args.target_stack_leading_words}"
        if args.volatile_status_preserve_stack:
            if args.target_stack_leading_words != 2:
                parser.error("--volatile-status-preserve-stack requires --target-stack-leading-words 2")
            code = code.replace("uint leading[2]; uint status;", "volatile uint leading[2]; volatile uint status;", 1)
            struct_decl = re.search(r"struct \{[^\n]+\} stack_local;", code)
            code = code[:struct_decl.end()] + '\n  __asm__ volatile ("" : : "m"(stack_local.leading[0]) : "memory");' + code[struct_decl.end():]
            suffix += "_volstatus"
    if args.status_register_copy:
        marker = "stack_local.status = func_0x07f1bf1a(param_3);"
        if marker not in code:
            parser.error("--status-register-copy requires --target-stack-struct")
        code = code.replace(marker, "status_value = func_0x07f1bf1a(param_3);", 1)
        struct_decl = re.search(r"struct \{[^\n]+\} stack_local;", code)
        if not struct_decl:
            parser.error("could not find the target stack struct")
        code = code[:struct_decl.end()] + "\n  uint status_value;" + code[struct_decl.end():]
        condition = "if ((int)(stack_local.status << 0x1e) < 0) {\n    return 2;\n  }"
        deferred_condition = "if ((int)(status_value << 0x1e) < 0) {\n    return 2;\n  }"
        if condition not in code:
            parser.error("could not find the initial status early-return condition")
        code = code.replace(condition, deferred_condition + "\n  stack_local.status = status_value;", 1)
        suffix += "_statusreg"
    if args.status_test_register:
        if not args.status_register_copy:
            parser.error("--status-test-register requires --status-register-copy")
        old = "if ((int)(status_value << 0x1e) < 0) {\n    return 2;\n  }"
        new = ("shifted_status = status_value << 0x1e;\n"
               "  __asm__ volatile (\"\" : \"+r\"(shifted_status));\n"
               "  if ((int)shifted_status < 0) {\n    return 2;\n  }")
        if old not in code:
            parser.error("could not find the status condition to replace")
        brace = code.index("{")
        code = code[:brace + 1] + "\n  register uint shifted_status __asm__(\"r1\");\n" + code[brace + 1:]
        code = code.replace(old, new, 1)
        suffix += "_testr1"
    if args.asm_goto_status_test:
        if not args.status_register_copy:
            parser.error("--asm-goto-status-test requires --status-register-copy")
        old = "if ((int)(status_value << 0x1e) < 0) {\n    return 2;\n  }"
        new = ("__asm__ goto volatile (\"lsls r1, r0, #30\\n\\tbmi %l[status_fail]\" "
               ": : : \"r1\", \"cc\" : status_fail);\n"
               "  goto status_ok;\nstatus_fail:\n  return 2;\nstatus_ok:;")
        if old not in code:
            parser.error("could not find the status condition to replace")
        code = code.replace(old, new, 1)
        suffix += "_asmgoto"
    if args.pin_argument_registers:
        brace = code.index("{")
        body = code[brace:]
        # Preserve param_3 in its incoming r2 register for the first helper
        # call; the target copies it to r7 but still calls with r2.
        first_param_3 = re.search(r"\bparam_3\b", body)
        if first_param_3:
            body = (body[:first_param_3.start()] + "__KEEP_PARAM_3__"
                    + body[first_param_3.end():])
        for old, new in (("param_2", "p2_r6"), ("param_3", "p3_r7"),
                         ("param_4", "p4_r5")):
            body = re.sub(r"\b" + old + r"\b", new, body)
        body = body.replace("__KEEP_PARAM_3__", "param_3")
        code = code[:brace] + """{
    register short *p2_r6 __asm__("r6");
    register undefined4 p3_r7 __asm__("r7");
    register uint p4_r5 __asm__("r5");
    __asm__ volatile (
        "mov %0, %3\\n mov %1, %4\\n mov %2, %5"
        : "=r"(p4_r5), "=r"(p3_r7), "=r"(p2_r6)
        : "r"(param_4), "r"(param_3), "r"(param_2) : "r0");
""" + body[1:]
        suffix += "_pinned"
    if args.defer_param3_copy:
        if not args.status_register_copy or not args.pin_argument_registers:
            parser.error("--defer-param3-copy requires --status-register-copy and --pin-argument-registers")
        marker = "stack_local.status = status_value;"
        if marker not in code:
            parser.error("could not find the post-check status spill")
        code = code.replace(marker, marker + "\n  post_check_param3 = p3_r7;", 1)
        if args.barrier_deferred_copies:
            code = code.replace(marker + "\n  post_check_param3 = p3_r7;",
                                marker + '\n  __asm__ volatile ("" ::: "memory");\n  post_check_param3 = p3_r7;', 1)
        brace = code.index("{")
        code = code[:brace + 1] + "\n  uint post_check_param3;" + code[brace + 1:]
        assign_end = code.index("post_check_param3 = p3_r7;") + len("post_check_param3 = p3_r7;")
        code = code[:assign_end] + re.sub(r"\bp3_r7\b", "post_check_param3", code[assign_end:])
        if args.volatile_deferred_copies:
            code = re.sub(r"struct \{ ([^\n]*?)uint status;", r"struct { \1volatile uint status;", code, count=1)
            code = code.replace("uint post_check_param3;", "volatile uint post_check_param3;", 1)
        suffix += "_deferp3"
        if args.volatile_deferred_copies:
            suffix += "_volatilecopies"
        if args.barrier_deferred_copies:
            suffix += "_barriercopies"
    if args.capture_call_register_results:
        if not args.pin_argument_registers:
            parser.error("--capture-call-register-results requires --pin-argument-registers")
        brace = code.index("{")
        body = code[brace:]
        marker = "iVar7 = FUN_07fc76a0"
        call_start = body.index(marker)
        call_end = body.index(";", call_start) + 1
        body = (body[:call_end] + """
    __asm__ volatile ("mov r2, r4\\n mov r4, r0"
                      : "=r"(after_ptr), "=r"(after_status) : : "r0");
""" + body[call_end:])
        # Only uses after the call see the outputs of the register capture.
        after_end = call_end + body[call_end:].find("__asm__ volatile")
        after_end = body.index("\n", after_end)
        tail = body[after_end:]
        tail = re.sub(r"\bpsVar6\b", "after_ptr", tail)
        tail = re.sub(r"\biVar7\b", "after_status", tail)
        body = body[:after_end] + tail
        decl = "    register short *after_ptr __asm__(\"r2\");\n    register int after_status __asm__(\"r4\");\n"
        body = body[:1] + "\n" + decl + body[1:]
        code = code[:brace] + body
        suffix += "_capture"
    if args.stack_pad:
        brace = code.index("{")
        count = args.stack_pad // 4
        pad = (f"\n    uint32_t frame_pad[{count}];\n"
               + "    __asm__ volatile (\"@ %0\" : : \"m\"(frame_pad[0]));\n")
        if args.stack_pad_after_locals:
            if args.status_register_copy:
                marker = "status_value = func_0x07f1bf1a"
            elif args.target_stack_struct:
                marker = "stack_local.status = func_0x07f1bf1a"
            else:
                marker = "uVar5 = func_0x07f1bf1a"
            pos = code.index(marker)
            code = code[:pos] + pad + code[pos:]
        else:
            code = code[:brace + 1] + pad + code[brace + 1:]
        suffix += f"_pad{args.stack_pad}"
        if args.stack_pad_after_locals:
            suffix += "_afterlocals"
    if args.reverse_switch_locals:
        declarations = re.compile(
            r"sbyte\s+asStack_20\s*\[4\];\s*"
            r"byte\s+abStack_1c\s*\[4\];\s*uint\s+uStack_18;")
        code, replaced = declarations.subn(
            "uint uStack_18;\n  byte abStack_1c [4];\n  sbyte asStack_20 [4];", code, count=1)
        if not replaced:
            parser.error("could not find the switch helper's local declaration block")
        suffix += "_reversed"
    if args.group_switch_output_locals:
        declarations = re.compile(
            r"sbyte\s+asStack_20\s*\[4\];\s*"
            r"byte\s+abStack_1c\s*\[4\];\s*uint\s+uStack_18;")
        struct_fields = (f"uint reserved[{args.output_struct_leading_words}]; "
                         if args.output_struct_leading_words else "")
        code, replaced = declarations.subn(
            f"struct {{ {struct_fields}sbyte as[4]; byte ab[4]; uint u; }} outputs;", code, count=1)
        if not replaced:
            parser.error("could not find the switch helper's local declaration block")
        for old, new in (("asStack_20", "outputs.as"),
                         ("abStack_1c", "outputs.ab"),
                         ("uStack_18", "outputs.u")):
            code = re.sub(r"\b" + old + r"\b", new, code)
        suffix += "_grouped"
        if args.output_struct_leading_words:
            suffix += f"_lead{args.output_struct_leading_words}"
    if args.volatile_status_local:
        code, replaced = re.subn(r"\buint\s+uVar5\s*;", "volatile uint uVar5;", code, count=1)
        if not replaced:
            parser.error("could not find the first helper status local")
        suffix += "_volatile"
    functions = {}
    with INDEX.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            functions[row["name"]] = int(row["address"], 16)
    with ROM_MAP.open(newline="") as stream:
        rom_symbols = {row["symbol"]: int(row["address"], 16)
                       for row in csv.DictReader(stream) if row["symbol"]}

    names = set(FUN.findall(code))
    direct_calls = {f"FUN_{address.lower()}" for address in names}
    direct_calls.discard(FUNCTION)
    definitions = [f"--defsym={name}=0x{functions[name]:x}"
                   for name in sorted(direct_calls) if name in functions]
    for address in sorted(set(ROM.findall(code))):
        definitions.append(f"--defsym=func_0x{address.lower()}=0x{int(address, 16) & ~1:x}")

    args.output_dir.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="v204-switch-codegen-") as temporary:
        temp = Path(temporary)
        source, obj, elf = temp / "switch.c", temp / "switch.o", temp / "switch.elf"
        source.write_text(PREAMBLE + code)
        command = [args.cc]
        if Path(args.cc).name.startswith("clang"):
            command += ["--target=arm-none-eabi"]
        command += ["-mcpu=cortex-m0", "-mthumb", "-std=gnu89",
                    "-ffreestanding", "-fno-builtin", "-ffunction-sections",
                    "-fdata-sections", "-w", f"-O{args.optimization}"]
        if args.omit_frame_pointer:
            command.append("-fomit-frame-pointer")
        built = subprocess.run(command + ["-c", str(source), "-o", str(obj)],
                               capture_output=True, text=True)
        if built.returncode:
            raise SystemExit(built.stderr)

        linked = subprocess.run(["arm-none-eabi-ld", f"-Ttext=0x{START:x}",
                                 f"--entry={FUNCTION}", *definitions,
                                 str(obj), "-o", str(elf)],
                                capture_output=True, text=True)
        if linked.returncode:
            raise SystemExit(linked.stderr)

        candidate = args.output_dir / f"{FUNCTION}_{Path(args.cc).name}_O{args.optimization}{suffix}.bin"
        disassembly = candidate.with_suffix(".objdump.txt")
        candidate.with_suffix(".c").write_text(PREAMBLE + code)
        extracted = subprocess.run(["arm-none-eabi-objcopy", "-O", "binary",
                                    "-j", ".text", str(elf), str(candidate)],
                                   capture_output=True, text=True)
        if extracted.returncode:
            raise SystemExit(extracted.stderr)
        dumped = subprocess.run(["arm-none-eabi-objdump", "-d", str(elf)],
                                capture_output=True, text=True, check=True)
        disassembly.write_text(dumped.stdout)

    emitted = candidate.read_bytes()
    target = PAYLOAD.read_bytes()[START - BASE:END - BASE + 1]
    overlap = min(len(emitted), len(target))
    differences = sum((left ^ right).bit_count()
                      for left, right in zip(emitted[:overlap], target[:overlap]))
    exact = emitted == target
    print(f"Target: {len(target)} bytes at 0x{START:08x}..0x{END:08x}")
    print(f"Built:  {len(emitted)} bytes; exact={exact}; differing bits in overlap={differences}")
    print(f"Binary: {candidate}")
    print(f"Disassembly: {disassembly}")


if __name__ == "__main__":
    main()
