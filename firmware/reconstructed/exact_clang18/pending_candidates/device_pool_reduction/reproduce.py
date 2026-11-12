#!/usr/bin/env python3
"""Synthetic native-link reduction; not firmware or an acceptance gate.

No OEM binary is read, and no emitted instruction is rewritten. Test the four
equal pointer pools with the original three early load-site constraints.
"""
import argparse
import itertools
import json
from pathlib import Path
import subprocess
import sys

EXACT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(EXACT))
import arm_compilers
import build_v204 as build

POOLS = (0x07fc832c, 0x07fc84e4, 0x07fc8568, 0x07fc867c)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("output", type=Path, help="new persistent diagnostic directory")
    parser.add_argument("--compiler", choices=("ac6", "ac6lto"), default="ac6")
    parser.add_argument("--quick", action="store_true", help="two pool orders instead of all 24")
    parser.add_argument("--pool-readers", action="store_true", help="give each pool an actual nearby PC8 reader")
    parser.add_argument("--reader-lto", action="store_true", help="generate the reader inside the LTO link")
    parser.add_argument("--standalone-tail", type=int, choices=range(5), default=0,
                        help="leave the last N pool words outside code-bearing sections")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    output = args.output.resolve()
    (output / "reproduce_invoked.py").write_text(Path(__file__).read_text())
    compiler = arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
    toolchain = args.compiler
    if args.reader_lto and toolchain != "ac6lto":
        parser.error("--reader-lto requires --compiler ac6lto")
    if args.standalone_tail and not args.pool_readers:
        parser.error("--standalone-tail requires --pool-readers")
    associated = set(POOLS[:len(POOLS) - args.standalone_tail]) if args.pool_readers else set()
    source = output / "reader.c"
    source.write_text('''#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
void consume_state(uint32_t value);
__attribute__((used,section(".text.reduced_reader")))
void reduced_reader(void) {
    consume_state(device_control_state.sensor_state_19);
}
''')
    compiler.run(toolchain, "armclang",
                 *[flag for flag in arm_compilers.COMPILERS[toolchain][2]
                   if flag != "-flto" or args.reader_lto],
                 "-I", str(build.ROOT), "-c", str(source), "-o", str(output / "reader.o"),
                 label="synthetic device-state C reader")
    for address in POOLS:
        stem = f"pool_{address:08x}"
        label = f"__arm_cp.{address:x}_0"
        assembly = output / (stem + ".s")
        pool_source = f'''    .syntax unified
    .thumb
    .section .text.{stem},"ax",%progbits
    .balign 4
    .global {stem}
'''
        if address in associated:
            pool_source += f'''    .type {stem},%function
    .thumb_func
{stem}:
    ldr r0,{label}
    bx lr
    nop
    nop
'''
        else:
            pool_source += stem + ":\n"
        pool_source += f'''
    .local $d.{address:x}
$d.{address:x}:
    .global {label}
{label}:
    .long device_control_state
    .size {label},4
    .reloc {stem},R_ARM_NONE,{label}
'''
        assembly.write_text(pool_source)
        compiler.run(toolchain, "armclang", "--target=arm-arm-none-eabi", "-mcpu=cortex-m0",
                     "-mthumb", "-c", str(assembly), "-o", str(assembly.with_suffix(".o")),
                     label="synthetic fixed pointer pool")
    early = output / "early.s"
    text = [".global __arm_cp.7fc832c_0"]
    for number, (address, leading_nop) in enumerate(((0x07fc7f98, False),
                                                   (0x07fc8004, True),
                                                   (0x07fc8030, True))):
        name = f"early_{number}"
        text += [".syntax unified", ".thumb", f'.section .text.{name},"ax",%progbits',
                 f".global {name}", ".thumb_func", name + ":"]
        if leading_nop:
            text.append("nop")
        text += [".inst.n 0x48ff", ".reloc .-2,R_ARM_THM_PC8,__arm_cp.7fc832c_0",
                 "bx lr", f".reloc {name},R_ARM_NONE,__arm_cp.7fc832c_0"]
    early.write_text("\n".join(text) + "\n")
    compiler.run(toolchain, "armclang", "--target=arm-arm-none-eabi", "-mcpu=cortex-m0",
                 "-mthumb", "-c", str(early), "-o", str(early.with_suffix(".o")),
                 label="synthetic original early reader constraints")
    symbols = output / "fixed.symdefs"
    symbols.write_text("#<SYMDEFS>#\n0x07fd1e28 D device_control_state\n"
                       "0x07fc8850 T consume_state\n")
    results = []
    for early_readers in (False, True):
        scatter = output / f"layout_{int(early_readers)}.scat"
        regions = ["LR 0x07fc7f98 {"]
        if early_readers:
            regions += [f" ER_EARLY_{i} 0x{a:08x} FIXED {{ *(.text.early_{i}) }}"
                        for i, a in enumerate((0x07fc7f98, 0x07fc8004, 0x07fc8030))]
        regions += [" ER_READER 0x07fc82b0 FIXED { *(.text.reduced_reader) }"]
        for address in POOLS:
            region_start = address - 8 if address in associated else address
            regions.append(f" ER_POOL_{address:08x} 0x{region_start:08x} FIXED"
                           f" {{ *(.text.pool_{address:08x}) }}")
        scatter.write_text("\n".join(regions) + "\n}\n")
        for caller_first in (False, True):
            orders = (POOLS, tuple(reversed(POOLS))) if args.quick else itertools.permutations(POOLS)
            for order in orders:
                objects = [output / f"pool_{a:08x}.o" for a in order]
                objects.insert(0 if caller_first else len(objects), output / "reader.o")
                if early_readers:
                    objects.append(output / "early.o")
                image = output / "current.axf"
                compiler.run(toolchain, "armlink", *( ["--lto"] if toolchain == "ac6lto" else []),
                             "--cpu=Cortex-M0", "--no_startup",
                             "--entry=reduced_reader", "--keep=reduced_reader",
                             *[f"--keep=pool_{a:08x}" for a in POOLS],
                             *([f"--keep=early_{i}" for i in range(3)] if early_readers else []),
                             f"--scatter={scatter}", *map(str, objects), str(symbols),
                             "--diag_suppress=6304,6314", "-o", str(image),
                             label="reduced four-pool object-order test")
                raw = output / "current_reader.bin"
                subprocess.run(["arm-none-eabi-objcopy", "-O", "binary", "-j", "ER_READER",
                                str(image), str(raw)], check=True)
                data = raw.read_bytes()
                loads = []
                for offset in range(0, min(len(data), 12) - 1, 2):
                    half = int.from_bytes(data[offset:offset + 2], "little")
                    if half & 0xf800 == 0x4800:
                        site = 0x07fc82b0 + offset
                        loads.append({"site": hex(site),
                                      "target": hex(((site + 4) & ~3) + (half & 255) * 4)})
                if len(loads) != 1 or loads[0]["site"] != "0x7fc82b2":
                    raise RuntimeError(f"reader shape changed: {loads}")
                target = int(loads[0]["target"], 16)
                if associated:
                    if target != max(associated):
                        raise RuntimeError(f"unexpected shared pool: {hex(target)}")
                elif not 0x07fc82b0 <= target < 0x07fc82b0 + len(data):
                    raise RuntimeError(f"unassociated pool unexpectedly shared: {hex(target)}")
                results.append({"early_readers": early_readers, "caller_first": caller_first,
                                "pool_object_order": [hex(a) for a in order], "loads": loads,
                                "reader_bytes": len(data)})
    (output / "results.json").write_text(json.dumps(results, indent=2) + "\n")
    counts = {}
    for result in results:
        for load in result["loads"]:
            target = load["target"]
            counts[target] = counts.get(target, 0) + 1
    summary = {"synthetic_only": True, "oem_input_required": False, "compiler": toolchain,
               "pool_readers": args.pool_readers, "reader_lto": args.reader_lto,
               "standalone_tail": args.standalone_tail,
               "cases": len(results), "selected_target_counts": counts}
    (output / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
