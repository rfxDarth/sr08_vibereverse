# `FUN_07fcdd68` exploratory C code-generation probe

This probe compiles the Ghidra 12.1.4 pseudocode for V204 `FUN_07fcdd68`
(`V204.payload.bin`, SHA-256
`5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`). Ghidra
reports four disjoint function ranges totaling 3,592 bytes, with 82 unrelated
bytes between them. The probe concatenates only the function ranges in address
order and excludes the gaps. This remains a linear diagnostic and cannot
align basic blocks laid out differently by a compiler.

The generated C replaces the payload-backed `DAT_*` literal names with their
observed words and manually typed five pointer values according to use in the
pseudocode. It also restores Ghidra's `extraout_r1` values after division helper
calls as C remainder expressions. The ROM map identifies `0x07f1dfb8` as
`__aeabi_uidivmod` and `0x07f1dfe4` as `__aeabi_idivmod`; V204 assembly confirms
the quotient/remainder result in `r0`/`r1` is used, including immediate `cmp
r1,#0` after unsigned calls. This is an evidence-based decompiler correction,
not recovery of the original source text.

## Results

The overlap metrics compare the compiler output from the function start against
the target span. Because the output lengths differ, the metrics do not align
individual basic blocks; they show that these direct builds are not byte-close.

| Compiler | Flags | Output bytes | Target bytes | Equal bytes in overlap | Differing bits in overlap | Longest exact run |
|---|---|---:|---:|---:|---:|---:|
| Arm GCC 13 | `-Os` | 3,968 | 3,592 | 54 | 13,290 | 2 |
| Clang 18 | `-Os` | 3,824 | 3,592 | 63 | 13,149 | 2 |
| Clang 14 | `-Os` | 3,968 | 3,592 | 70 | 13,099 | 2 |
| GNU Arm GCC 4.9.3 | `-Os` | 4,080 | 3,592 | 66 | 13,144 | 2 |
| Arm GCC 13 | `-O0` | 8,052 | 3,592 | 40 | 13,688 | 2 |
| Clang 18 | `-O0` | 6,788 | 3,592 | 48 | 13,322 | 3 |
| Arm GCC 13 | `-O1` | 4,700 | 3,592 | 48 | 13,266 | 2 |
| Clang 18 | `-O1` | 3,932 | 3,592 | 67 | 13,242 | 2 |
| Arm GCC 13 | `-O2` | 4,548 | 3,592 | 47 | 13,389 | 1 |
| Clang 18 | `-O2` | 6,656 | 3,592 | 49 | 13,313 | 2 |
| Arm GCC 13 | `-O3` | 5,996 | 3,592 | 55 | 13,334 | 4 |
| Clang 18 | `-O3` | 6,692 | 3,592 | 48 | 13,178 | 3 |

An additional probe models the EABI quotient/remainder calls explicitly as
64-bit helper results (`r1:r0`) and extracts the upper half as the remainder,
instead of allowing C `%` to select compiler lowering. This tests whether the
original source called the runtime helpers explicitly. It did not improve the
byte match:

| Compiler | Flags | Output bytes | Target bytes | Equal bytes in overlap | Differing bits | Longest exact run |
|---|---|---:|---:|---:|---:|---:|
| Arm GCC 13 | `-Os`, explicit EABI helper | 4,080 | 3,592 | 53 | 13,372 | 2 |
| Clang 18 | `-Os`, explicit EABI helper | 3,860 | 3,592 | 66 | 13,149 | 2 |

The helper-call version is larger and remains far from the target. This makes
the original C expression shape, register allocation, and control-flow
recovery the dominant unknowns for this routine; choosing `%` versus explicit
runtime calls is not enough to reproduce it.

Results are in `results_<compiler>_O<level>[_<division-mode>].csv`; compiler
outputs are preserved as per-compiler binaries here. Re-run with
`python3 firmware/decompiled/probe_multirange_function_codegen.py`; select
other optimization levels with `--optimization 0`, `1`, `2`, `3`, `s`, or `z`,
or use `--division-mode eabi-call` to test explicit runtime helper calls.
Historical GCC 4.9.3 requires the separately installed toolchain under
`/tmp/sr08-gcc49/`.
