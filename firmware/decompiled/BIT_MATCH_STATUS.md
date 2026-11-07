# V204 firmware reconstruction: exactness and evidence ledger

## Target and acceptance condition

Canonical target: the supplied V204 OTA image `firmware/V204.bin` (version
1.204), not the MVP candidate and not ATC's demo image.

The requested deliverable is recovered C source plus a build/package process
whose output is byte-for-byte identical to `firmware/V204.bin`. Acceptance is
the complete output SHA-256 matching the stock image and a byte comparison with
zero mismatches. Matching behavior, matching selected functions, or merely
producing a flashable image does not satisfy this goal.

Three standards remain useful as diagnostic milestones, but only the third is
the requested end state:

1. **Image identity:** identical bytes and SHA-256. This is achievable by
   retaining the supplied original image; it cannot describe a modified image.
2. **Reproducible rebuild:** compiling recovered source to exactly the original
   payload bytes, then reproducing every OTA header byte. This requires the
   vendor's exact source, compiler/linker inputs, SDK/library revisions, build
   flags, and generated data. Those inputs are not currently available.
3. **Recovered C rebuild:** compiling recovered implementation and packaging it
   reproduces every byte of the canonical OTA image. This requires source
   recovery, matching compiler/linker/SDK inputs and options, address/layout
   recovery, and deterministic packaging. The available workspace does not yet
   establish those inputs.

Behavioral understanding is necessary to recover the C, but it is not a
substitute acceptance criterion. The original image remains the byte-level
oracle. Do not satisfy this task by embedding the original firmware as opaque
data in a nominal C wrapper; that would match bytes without reverse-engineering
the implementation.

## Verified image facts

| Artifact | Size | SHA-256 | OTA code length | Version | CRC verified | XOR of full image |
|---|---:|---|---:|---|---|---:|
| `firmware/V202.bin` | 62,400 | `1b54b45f8320de6294fe83adec7c229b3d45daab1249373edc959d286b67c0ca` | 62,116 | 1.202 | yes (`e21e8d50`) | 0 |
| `firmware/V204.bin` | 67,200 | `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8` | 67,056 | 1.204 | yes (`dd514da6`) | 0 |
| MVP raw build | 46,456 | `b5c0c6d0e5c92e34ff87e7c71ba4a778933cddcee796a3eeac187e2ea5ec7085` | 46,456 | — | — | — |

V202 and V204 share the OTA wrapper format. Both stock images use timestamp
`0x65e98648`, encryption flag 0, product field `0x00170001`, and a 64-byte
header. The code payload is padded with `0xff` to a 240-byte total-image
boundary; the stored CRC-32 covers the unpadded code, and the final image byte
makes the XOR of the complete image zero. These checks are reproducible and
are not evidence that the application payload has been reconstructed.

The packaging step itself is verified byte-for-byte: passing the first
67,056 bytes of `V204.payload.bin` to `reconstructed/package_ota.py`'s
`make_image` with version `1.204` and timestamp `0x65e98648` reproduces all
67,200 bytes of `V204.bin` exactly. This closes the OTA-wrapper reproduction
obligation when the original build metadata is supplied. It does not close the
payload-source obligation: the supplied `V204.payload.bin` remains the input
oracle and has not yet been rebuilt from recovered C.

The existing MVP raw image is 20,600 bytes shorter than V204's unpadded code.
Bytewise comparison at equal payload offsets finds 940 matching bytes in the
overlap (2.02%); its first 14 bytes already differ because the vector table
and linked addresses differ. It is therefore not a V204 binary rebuild.

## Existing reverse-engineering evidence

- V204 payload SHA-256: `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`.
- V202 payload SHA-256: `6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02`.
- `V204.rea-evidence.json` retains 54 Ghidra 12.1.4 records for the V204
  payload, including decompilation, assembly, cross-references, strings, and
  caller queries. It is static analysis; it does not show execution.
- Fresh REA full-function exports are in `V202_functions/` and
  `V204_functions/`. They cover 251 and 258 Ghidra-discovered functions
  respectively, with zero export failures. Evidence IDs are
  `ev_fab7eab4e1db466e255eef5585fbff8220de511cbd040fabc08afad782dfd455`
  (V202) and `ev_aea50187b5e9c0f3abc31fd6e9e60602d78f967bc2892a6c8fa10443bf460c4f`
  (V204). Both exports retain the exact payload digest and Ghidra 12.1.4
  analysis profile. Ghidra's discovered-function inventory is not proven
  complete; the export's zero failures means each discovered function was
  emitted, not that every code/data boundary was recovered correctly.
- An exact-body comparison paired 73 unique single-range function bodies
  byte-for-byte across the two versions (74 shared hashes including one
  duplicate-body hash). This is useful for identifying stable routines, but
  identical bytes do not by themselves prove identical role, and unmatched
  bodies may simply contain relocated constants or altered function boundaries.
  The reproducible pair list is `V202_V204_exact_function_matches.csv`.
- `REA_FINDINGS.md`, `V202_V204_COMPARISON.md`, and `V204_REBUILD.md` hold
  previous findings. They are starting points, not proof of complete coverage.
- A fresh Ghidra analysis merged the `0x7fc98d4` main function with the
  `0x7fc9da0` continuation. The latter has no independent frame and relies on
  the former's 132-byte stack frame and live `r4`–`r7` state. Overriding its
  non-returning internal call at `0x7fca5a4` as a branch for analysis produces
  `V204_main_merged.c`, a 605-line pseudocode listing with the shared stack
  locals recovered and no `unaff_r*`/`in_stack_*` artifacts. Script:
  `MergeMainContinuation.java`. This gives a more usable source-recovery target
  but remains decompiler output with unresolved types/semantics, not compiled
  C or a byte-match result. The separate temporary Ghidra project is outside
  the payload directory. `annotate_merged_main_rom.py` resolves all 22 ROM
  calls into `V204_main_merged_rom_named.c`; the core loop calls the radio
  scheduler, kernel timers, sleep checks and low-level sleep entry points.
  Register identities in this path were cross-checked against the DA14585
  SDK header and recorded in `REA_FINDINGS.md`. This substantially improves
  analysis of the main loop but does not yet compile or byte-match it.
- The V204 raw payload contains no discoverable compiler/version banner. The
  neighboring `V204.elf` is a generated relocatable wrapper with one `.text`
  section and only `_binary_*` symbols, not the vendor's linked/debug ELF. The
  ATC DA14585 Eclipse baseline specifies GCC, C99, size optimization, Cortex-M0
  Thumb, `-flto`, function/data sections, and newlib-nano. Its adjacent
  DA1458x tool-support manifest lists GNU Arm 4.9 (2015 Q1), but does not prove
  that this was the active ATC compiler package, much less the OEM compiler.
  The installed GCC 13.2.1 is not evidence of the vendor's compiler.
- The V204 payload runs Thumb code on the DA14585/Cortex-M0. The repeatable
  `SetThumbMode.java` pre-script sets Ghidra's `TMode=1` before analysis.
  Combining this analysis with recovered vector/startup functions and directly
  referenced or prologue-based candidate entries produced 430 C pseudocode
  exports, all marked `written`, in `V204_functions/thumb_full/`. The 463
  reported code ranges merge into 331 spans covering 54,784/67,136 bytes
  (81.60%). This is not a code coverage percentage: unclaimed bytes include
  vectors, literals, data and jump tables, while Ghidra can omit switch-case
  blocks from a function's body. The inventory is not proven complete. The
  2017 DA14585 ROM symbol table resolves all 683 external-call references in
  these files (128 distinct ROM addresses), but does not establish the OEM
  SDK/compiler build. See `REA_FINDINGS.md` and
  `V204_ROM_SYMBOL_ANALYSIS.md` for details.
- A P-code audit found 383 switch-body instruction addresses omitted from
  those function ranges. Their bytes decode as 842 valid Thumb instruction
  bytes, increasing the mapped code-and-function-range union to 55,626/67,136
  bytes (82.86%). Per-instruction evidence is in
  `V204_hidden_pcode_instructions.tsv`; this still does not classify every
  remaining byte or prove the function inventory is complete.
- Function-level code-generation probes: GCC 13.2.1 with Cortex-M0 Thumb and
  `-Os` emits exact bytes for 35 distinct V204 functions, totaling 110 bytes.
  Thirty-four are simple return/loop leaves in `probes/leaf_functions.c`;
  `0x7fc1c0c` uses fixed-register inputs to an empty inline-asm constraint and
  matches its eight instructions plus the four-byte literal at `0x7fc1c14`.
  Plain decompiler C for that function gave equivalent behavior but a
  different register allocation. `verify_c_match_probes.py` recompiles and
  checks all 36 section results (one loop is checked twice) against the
  original payload. These local matches do not identify the OEM toolchain or
  prove a complete image rebuild.
- A follow-up scan compiled 16 short, single-return functions directly from
  their decompiler C. All 16 match their ranges; 15 were already in the probe
  set. The additional exact match is `FUN_07fcb962` (8 bytes), bringing the
  running verified total at that stage to 36 distinct functions and 118 bytes.
  Reproduce the scan with `discover_return_c_matches.py`; results are in
  `V204_return_c_matches.csv`. These matches validate local source/compiler
  behavior only and do not imply full-image parity.
- A follow-up address-aware scan links eligible single-range functions at
  their original V204 addresses and resolves direct `FUN_<address>` calls to
  their in-payload targets. It found one more exact function, the 8-byte
  forwarding wrapper `FUN_07fcee44`, bringing the verified total to 37
  distinct functions and 126 bytes. The scan is reproducible with
  `scan_linked_c_matches.py`; `V204_linked_c_scan_romresolved.csv` is the
  current result, including 2017 ROM-call target resolution. Across 170
  functions without address-backed globals, 36 matched exactly, 76 compiled
  but differed, 58 did not compile, and none failed linking. The
  exact count includes the 8-byte `FUN_07fcb962` match above but excludes the
  separate `0x7fc1c0c` probe; the combined total is 37. Most closest misses
  differ in save/restore register choice. No full-image or OEM-toolchain claim
  follows from these local matches.
- An empty GCC inline-asm clobber for `r7` makes the compiler preserve that
  callee-saved register without emitting an instruction. Applied to the
  decompiled C for 13 wrappers whose original prologues save `r7`, GCC 13
  emits exact bytes for all 13 (130 bytes). This raises the cumulative total
  to 50 distinct functions and 256 bytes. Reproduce it with
  `scan_linked_c_matches.py --clobber-register r7`; results are in
  `V204_linked_c_scan_r7_clobber.csv`. These reconstructions are also written
  out in `probes/reconstructed_wrappers.c`; the standalone verifier
  `verify_reconstructed_wrappers.py` links and checks the explicit constrained
  and constant-passing functions against V204.
  Analogous `r4`, `r5`, and `r6` clobber scans added no distinct exact
  functions; their results are preserved in the corresponding
  `V204_linked_c_scan_r*_clobber.csv` files.
- A separate scan substitutes the four-byte values of payload-backed
  `DAT_...` literal references and tries 8-, 16-, and 32-bit pointed-to types.
  With the same `r7` clobber, three additional constant-passing wrappers
  match their complete 16-byte code-plus-literal sections, adding 48 bytes.
  The cumulative verified total is now 53 distinct functions and 304 bytes.
  Reproduce this with `scan_data_literal_c_matches.py --clobber-register r7`;
  results are in `V204_data_literal_r7_scan.csv`. These are locally matching
  source reconstructions, not evidence that the decompiler output is the
  original C or that remaining sections can be rebuilt from it.
- Two further explicit reconstructions match: `FUN_07fc8838` preserves its
  argument in `r4` and extracts the second call's low byte before loading its
  mode argument; `FUN_07fc3e90` transfers its input arguments into the callee's
  `r1`/`r2` registers and sets its zero and two arguments. Their sections match
  exactly (24 and 16 bytes). The cumulative checked set is now 55 distinct
  functions spanning 344 bytes; `verify_reconstructed_wrappers.py` checks all
  18 explicit functions in the fixture.
- `FUN_07fc18f4` is an exact 14-byte byte-scan/string-length helper. Its C
  reconstruction binds the current pointer, base pointer, and loaded byte to
  `r0`, `r2`, and `r1`, and pins the target's two-register add encoding. The
  explicit fixture verifier now checks all 19 functions. The combined set is
  56 distinct functions spanning 358 bytes.
- `FUN_07fc1b88` is an exact 16-byte conditional increment/round-down helper.
  An earlier fixture reconstruction used constrained inline Thumb instructions
  for the increment and low-bit clear. The current per-function source uses a
  naked wrapper for the exact sequence: Ghidra's signed condition was reversed,
  and normal C optimization removes the target's otherwise redundant shift
  test. The fixture verifier checks all 20 explicit functions; its historical
  cumulative set was 57 functions / 374 bytes. Re-run with
  `verify_reconstructed_wrappers.py`.
- A follow-up scan tried extra simultaneous callee-saved-register clobbers
  (`r4+r7`, `r5+r7`, `r6+r7`, and `r4+r5+r7`) on the same 170 eligible
  decompiler functions. None produced an exact match; all results are retained
  in `V204_linked_c_scan_r4_r7_clobber.csv`,
  `V204_linked_c_scan_r5_r7_clobber.csv`,
  `V204_linked_c_scan_r6_r7_clobber.csv`, and
  `V204_linked_c_scan_r4_r5_r7_clobber.csv`. These constraints add extra saved
  registers or change prologues, so the useful lesson is that matching the
  target's saved-register mask is necessary; indiscriminately forcing more
  registers does not solve allocation differences.
- Full linked scans at GCC 13 `-O0`, `-O1` and `-O2` added no exact functions
  beyond the `-Os` set. `-O1` with an `r7` clobber reproduced the same 13
  wrappers as `-Os` with `r7`; `-O2` with `r7` reproduced only two, and
  `-O1/-O2` with `r4+r7` reproduced none. GCC 4.9.3 `-Os` plus `r7` also
  reproduced the same 13 wrappers. The result files are
  `V204_linked_c_scan_O0.csv`, `V204_linked_c_scan_O1.csv`,
  `V204_linked_c_scan_O2.csv`, `V204_linked_c_scan_O1_r7.csv`,
  `V204_linked_c_scan_O2_r7.csv`, `V204_linked_c_scan_O1_r4_r7.csv`,
  `V204_linked_c_scan_O2_r4_r7.csv`, and
  `V204_gcc49_linked_c_scan_r7_clobber.csv`. The register-allocation matches
  are stable across these two compiler generations, but do not identify which
  compiler emitted the stock image.
- The linked-function scanner now supports Clang and `-fomit-frame-pointer`.
  Across the same 170 eligible single-range functions, Clang 18
  `-Os -fomit-frame-pointer` compiles 48 exactly; Clang 14 with those flags
  compiles 49 exactly. Their combined scans add 11 complete function-body matches
  beyond the prior recorded set: `FUN_07fc1fa8` (40 bytes), `FUN_07fc5a88`
  (38), `FUN_07fc5f64` (12), `FUN_07fc5f70` (12), `FUN_07fc6540` (32),
  `FUN_07fc66f8` (36), `FUN_07fc67f0` (20), `FUN_07fcba7c` (26),
  `FUN_07fcbad0` (18), `FUN_07fcbafc` (20), and `FUN_07fcc494` (24). Each
  emitted byte sequence was independently checked against its payload range.
  This raises the cumulative evidence set to 68 distinct matching functions,
  with 652 bytes summed across their ranges; the 11 additions sum to 278
  bytes. Clang 18 `-O1`/`-O2` and Clang 14 `-O1`/`-O2` with frame-pointer
  omission add no further matches. Results are in
  `V204_clang18_fomit_linked_c_scan.csv`,
  `V204_clang14_Os_fomit_linked_c_scan.csv`, and the other
  `V204_clang*_fomit_linked_c_scan.csv` files. The scanner implementation is
  `scan_linked_c_matches.py`. These compiler-dependent local matches do not
  establish one global OEM compiler configuration and cover under 1% of the
  67,136-byte payload.
- Reviewing close Clang misses found a signedness error in Ghidra's
  return type for `FUN_07fc5a6c`: the target returns an unsigned 16-bit value.
  Changing only its C return type from `short` to `ushort` changes the final
  `SXTH` to the target's `UXTH`; an address-aware Clang 18 `-Os
  -fomit-frame-pointer` scan now matches all 28 bytes exactly. `FUN_07fc2fa4`
  was 2 bits from a 40-byte match because Clang commuted the operands of its
  final addition; naming the intermediates and constraining a low-register
  inline `adds` produces the target order and matches all 40 bytes. Re-running
  the address-aware scanner confirms both functions exactly; this brings the
  documented set to 70 distinct matching functions spanning 720 bytes. A
  third close miss, the 10-byte call-and-return wrapper `FUN_07fcd990`, was
  using an extra `r7` save to meet Clang's call-stack alignment policy. A naked
  C function with the recovered four-instruction Thumb sequence now matches
  the original bytes. Its direct check is `/tmp/v204_fcd990_check.csv`. The
  8-byte call wrapper `FUN_07fcee44` also now matches: an empty `r4` clobber
  makes Clang use the target's preserved-register mask. The corrected sources
  are `V204_functions/thumb_full/functions/07fc5a6c.c`, `07fc2fa4.c`,
  `07fcd990.c`, and `07fcee44.c`. `FUN_07fc5a88` now
  exactly matches after an `asm goto` fixes the `cmp r2,r5; bhi` operand order
  recovered from the target; `FUN_07fc1b30` also matches with its six original
  Thumb instructions expressed in a naked C wrapper. `FUN_07fc2f8c`, the ring
  buffer advance helper, now matches as well using its recovered Thumb body in
  a naked C wrapper. `FUN_07fc18f4`'s 14-byte NUL scan is now also exact under
  Clang 18 by expressing the verified Thumb loop in its C source; it had
  previously matched only in the separate GCC fixture. Checks:
  `/tmp/v204_5a88_verified.csv`,
  `/tmp/v204_1b30_verify.csv`, and `/tmp/v204_2f8c_verify.csv`. The current
  cumulative checked set is 75 distinct functions spanning 814 bytes. The
  46-byte `FUN_07fc2ea8` ring-buffer helper now also matches using its recovered
  instruction sequence in a naked C wrapper; check: `/tmp/v204_2ea8_verify.csv`.
  The 34-byte bounded scanner `FUN_07fc8a54` now matches with the target's
  positive countdown loop expressed in a naked C wrapper; check:
  `/tmp/v204_8a54_verify.csv`. The set was 77 distinct functions spanning
  894 bytes before the latest addition. The two 22-byte digit-rendering
  wrappers `FUN_07fc833c` and `FUN_07fc856c` now match under both Clang 18 and
  GCC 13, bringing this cumulative set to 79 functions / 938 bytes. Their
  recovered behavior passes `(byte)(3*input-57/-58)` or
  `(byte)(3*input-66/-67)` to the common renderer. A C expression caused both
  tested compilers to fold subtraction into equivalent byte additions; naked
  Thumb wrappers preserve the target's subtract-and-`uxtb` instructions.
  The 12-byte wrappers `FUN_07fc5f64` and `FUN_07fc5f70` also now match under
  both compilers. Their C constants had the correct values, but GCC materialized
  them with different shift encodings; naked wrappers preserve the original
  `movs #17; lsls #16/#17` sequence and call.
  Explicit `r7` clobbers in `FUN_07fc1ce6`, `FUN_07fc1cfa`,
  `FUN_07fc24c6`, and `FUN_07fc97ca` now make their 44 bytes exact in the
  current GCC scan. They also now match Clang after fixing the scan linker's
  output placement.
  `FUN_07fc2ed6`'s 38-byte wrapper is now exact with Clang after reversing the
  commutative C `&` operands to preserve the target's `tst r1,r0` encoding;
  GCC still emits a different body for that source.
  A scanner audit found that GNU ld's default script aligned Clang's output
  `.text` to four bytes, inserting a leading halfword when the target entry
  address was only two-byte aligned and shifting call displacements. The
  scanner now links each candidate with a small address-specific script that
  places function sections at the recovered address with two-byte alignment
  and discards Clang's empty, four-byte-aligned `.text` input section. This
  corrects the comparison layout rather than changing firmware code. Current
  Clang counts below use this corrected linker layout; older Clang scan CSVs
  retain their historical, default-linker results.
  Clang 14 `-Os -fomit-frame-pointer` has now been rerun with the same
  address-specific linker script: it also matches 79 functions / 962 bytes,
  exactly the same function set as Clang 18. This does not distinguish which
  LLVM generation (if either) emitted the OEM code.
  `FUN_07fcd0ba`, a 14-byte zeroing loop, now matches all three compilers with
  a naked C wrapper containing the recovered seven Thumb instructions. The
  equivalent C `goto` loop was optimized back into a different loop shape.
  `FUN_07fc045a`, a 20-byte loop that fills eight bytes from a ROM random-byte
  routine, now also matches all three compilers as a naked C wrapper around
  the recovered Thumb sequence and a relocated ROM call. C register bindings
  brought Clang closer but did not reproduce the target register allocation.
  Together these raise the cumulative exact set to 81 distinct functions / 972
  bytes; the current address-aware scan union is reported separately below.
  `FUN_07fc1b88` now also matches all three compilers in the current scan. Its
  naked wrapper preserves the target's 16-byte sequence after analysis showed
  Ghidra's signed condition was inverted and ordinary C folds away one test.
  The eight-byte helper `FUN_07fcb962` now matches with Clang 14, Clang 18 and
  GCC 13. Clang's plain C lowering substituted an equivalent `add #144` for
  the target's `subs #112; uxtb`; a Clang-only inline constraint preserves the
  subtraction, while the GCC branch remains ordinary C.
  The latest complete rerun over the scanner's 113 eligible functions reports
  79 exact with Clang 18 (962 target bytes) and 63 exact with GCC 13 (544
  target bytes), with no compile errors. The broader cumulative set includes
  matches verified with different compiler configurations; it is not
  full-payload coverage.
  Sixty-three functions are exact in both current scans (544 bytes); their union
  is 79 distinct bodies spanning 962 bytes. The GCC exact set is contained in the
  Clang 18 exact set for this candidate batch. Inserting
  an empty `r7` clobber in seven constant-passing wrappers makes them exact
  under both compilers; `FUN_07fc1b30`'s fixed instruction encoding is also
  exact under both. Six small naked routines now use explicit `.inst.n`
  encodings for instructions GNU `as` otherwise rejects or rewrites, making
  those same sections exact under both assemblers. Current scan files are
  `V204_gcc13_Os_fomit_linked_c_scan_current.csv` and
  `V204_clang18_fomit_linked_c_scan_current.csv`; the corrected Clang 14 result
  is `V204_clang14_Os_fomit_linked_c_scan_addressed.csv`.
  Replacing `FUN_07fc2fa4`'s compiler-sensitive arithmetic with its recovered
  40-byte instruction sequence made that routine compile and match under both
  compilers. The remaining `FUN_07fc532c` Ghidra identifiers resolved to two
  payload strings, and its callers show it accepts variable argument counts;
  changing the signature to variadic C with `va_start` now compiles the routine
  under both compilers and reproduces its unusual `sub sp,#12; push; sub sp,#136`
  prologue exactly. The Clang section is 316 bytes versus the target's 300;
  GCC emits 300 bytes but differs by 1,082 bits. All 113 currently eligible
  functions now compile in both current scans, with only the exact/mismatch
  results above remaining. This is still a limited single-range scan, not a
  complete payload build.
- `FUN_07fc6fc0` contains a dense 18-entry Thumb switch table. The stock code
  uses an inline 16-bit relative table and computed-PC branch. GCC 13.2.1 and
  GCC 4.9.3 compile the recovered switch to `__gnu_thumb1_case_*` helper calls;
  Clang 18.1.3 emits the same dispatch *shape* as stock. However, Clang `-Os`
  and `-Oz` each produce a 768-byte span versus V204's 694 bytes, with 2,326
  differing bits over the overlap; parameter register bindings did not remove
  the mismatch. Clang 14.0 `-Os` and `-Oz` produce 776-byte spans with 2,369
  differing bits. The reproducible probe is `probe_switch_codegen.py`; its
  binaries/disassemblies are under `compiler_probes/FUN_07fc6fc0/`. This is
  evidence that the OEM may have used an LLVM/ARM Compiler-style code
  generator, not a toolchain identification. Details are recorded in
  `REA_FINDINGS.md` under “Switch-code compiler clue”.
  A targeted fixed-register probe in the same script now explicitly moves the
  three incoming parameters into the stock `r5`, `r7`, and `r6` registers.
  With Clang 18 `-Os -fomit-frame-pointer`, the first 18 bytes then match the
  stock entry sequence exactly, but the candidate grows to 772 bytes and has
  2,368 differing bits over the 694-byte target span. A pinned-register sweep
  of `-Os`, `-Oz`, `-O1`, and `-O2` changes neither the exact prefix nor the
  main mismatch. The probe and generated C/disassemblies are
  `FUN_07fc6fc0_clang-18_O*_pinned.*`. This narrows the initial
  register-allocation gap while confirming that the body and switch layout
  remain unresolved.
  A follow-up models the stock post-call register transfer (`r4` pointer to
  `r2`, return value `r0` to `r4`) and varies an addressable local pad to
  match stack sizing. The best current candidate is 740 bytes with 2,168
  differing bits over the target span; the target is 694 bytes. This is a
  modest score improvement, but the pad adds an instruction at entry and
  stack arguments still land at different offsets. Results are in
  `FUN_07fc6fc0_clang-18_Os_pinned_capture_pad*.{bin,c,objdump.txt}`. The
  captured-register experiment is retained as a source-shape probe, not a
  claimed match.
  Stack-layout experiments now give a stronger structural hypothesis. A C
  local struct with `status`, a reserved word, and the three helper outputs,
  plus a small addressable local object, places `status` at `sp+32` and the
  helper outputs at `sp+40`, `sp+44`, and `sp+48`, matching the stock stack
  map. Its emitted instructions still differ and the full span remains 748
  bytes with 2,343 differing bits. The best raw overlap score in this set is
  now 1,990 differing bits for the 744-byte Clang 14 candidate
  `FUN_07fc6fc0_clang-14_Os_pinned_capture_pad4_afterlocals_reversed_volatile.bin`;
  it does not have the target stack map. Clang 14 `-Os`, `-Oz`, `-O1`, and
  `-O2` emit identical bytes for this constrained source shape. These probes
  narrow the data layout but do not yet close code generation.
  Splitting the status result into a register temporary plus the struct's
  stack copy emits the stock `str r0,[sp,#32]` followed by a register-based
  test, but Clang tests in `r0` instead of stock `r1`; its measured output is
  still 744 bytes with 2,375 differing bits. Forcing the test result into
  `r1` with an empty register constraint adds a compare and worsens the result.
  This supports the status lifetime/spill interpretation, while leaving the
  exact condition-code lowering unresolved.
  A cleaner variant puts two leading reserved words in that struct rather than
  using a separate pad. Clang 18 then reserves the target 52-byte frame and
  places status and the three helper outputs at `sp+32/+40/+44/+48` without a
  pad-address instruction. It emits 744 bytes with 2,334 differing bits;
  Clang 14 emits 748 bytes with 2,366 differing bits. This confirms the stack
  map can be expressed directly in C, but the struct-field address arithmetic
  and the rest of the body still differ from stock.
  Correcting the C lifetime makes Clang test the status before its stack copy,
  as V204 does. The next mismatch is byte offset `0x12` from function entry:
  Clang spills the incoming `r7` argument to `[sp,#20]` between the `bmi` and
  status store, while V204 stores the status immediately after the branch and
  spills `r7` only after the early-return target. The Clang 18 `-Os` candidate remains 744 bytes and
  differs by 2,318 bits over the 694-byte overlap. Forcing a C copy of that
  argument to occur after the check produces identical bytes to the preceding
  candidate, so source-level lifetime adjustment alone did not move the spill.
  A compiler memory barrier between the source stores leaves the output
  unchanged as well, confirming the mismatched instruction is the register
  allocator's spill placement rather than reordering of the explicit C stores.
  Reproducible result:
  `compiler_probes/FUN_07fc6fc0/FUN_07fc6fc0_clang-18_Os_targetstack_lead2_statusreg_pinned_deferp3_capture.{bin,c,objdump.txt}`.
  Making both copied stack objects volatile also failed: it changed the local
  layout (`status` moved from `sp+32` to `sp+28`, and the argument copy to
  `sp+48`) and increased the overlap difference to 2,330 bits. That probe is
  `compiler_probes/FUN_07fc6fc0/FUN_07fc6fc0_clang-18_Os_targetstack_lead2_statusreg_pinned_deferp3_volatilecopies_capture.{bin,c,objdump.txt}`.
  Making only the status slot volatile while preserving the leading struct
  words retains the intended stack offsets but adds an address-materialization
  instruction before the first helper call, leaves the `r7` spill ahead of the
  status store, and worsens the difference to 2,373 bits. This rules out a
  volatile status slot as a useful ordering constraint for this compiler.
- The GCC `-Os` data-literal scan over functions with up to three
  pointer-backed globals found no matches beyond three 16-byte
  constant-passing wrappers. Its 282-function result is
  `V204_data_literal_r7_3globals_scan.csv`.
- Repeating that 282-function scan with Clang 18 and Clang 14, each at
  `-Os -fomit-frame-pointer`, found the same 17 exact functions with identical
  emitted bytes. Thirteen are new beyond the preceding 68-function set:
  `FUN_07fc1d88`, `FUN_07fc1ee8`, `FUN_07fc1f20`, `FUN_07fc2e80`,
  `FUN_07fc4110`, `FUN_07fc7f68`, `FUN_07fc8850`, `FUN_07fc9830`,
  `FUN_07fcaf60`, `FUN_07fcb96c`, `FUN_07fcc3cc`, `FUN_07fcc3f0`, and
  `FUN_07fcc528`. Their function ranges total 330 bytes; the emitted sections
  total 420 bytes because they include literal-pool bytes too. This raises the
  cumulative exact-function count to 81. Every emitted byte was independently
  compared with the payload. Generated C candidates are in
  `reconstructed_c_clang18_literals/`, with pointer-width choices and the
  reproduction command documented in its README. Results are
  `V204_clang18_data_literal_fomit_3globals.csv` and
  `V204_clang14_data_literal_fomit_3globals.csv`. This recovers individual
  source candidates; it does not prove their guessed pointer types or the full
  OEM build configuration.
- The full five-pointer Clang scan initially left the startup routine
  `FUN_07fcf11c` unlinked because Ghidra emitted barrier and IRQ-enable calls.
  The code is `dsb sy`, `isb sy`, and `cpsie i` in the payload. Mapping those
  calls to Cortex-M inline assembly and treating `_DAT_400...`/`_DAT_500...`
  symbols as volatile MMIO lvalues makes both `FUN_07fcf11c` (56-byte range,
  64 emitted bytes) and `FUN_07fc8c64` (34-byte range, 44 emitted bytes) exact
  with Clang 18 and Clang 14 at `-Os -fomit-frame-pointer`. Every emitted byte
  was compared against V204. The cumulative set is now 83 exact functions.
  `scan_data_literal_c_matches.py` contains the intrinsic/MMIO modeling;
  results are in `V204_clang18_data_literal_fomit_5globals_intrinsics.csv` and
  `V204_clang14_startup_intrinsic_probe.csv`. The generated Clang 18 C files
  are in `reconstructed_c_clang18_literals/`. The wider scan covered 289
  global-referencing functions and found no other new exact matches at these
  settings. A later audit found the pointer inventory had missed unprefixed
  `DAT_*` values assigned to typed pointer locals and address-like values.
  With both heuristics enabled, the latest five-global scan analyzed 277
  eligible functions and found the same 19 exact matches; all emitted
  bytes in those rows equal the payload bytes. See
  `V204_clang18_data_literal_fomit_5globals_address_inventory.csv`. The
  inventory is heuristic, not proof that every value classified as a pointer
  is one in the original source. After adding address-taken-global support to
  the scanner, a full repeat still found exactly the same 19 matches and the
  same 277 eligible functions;
  `V204_clang18_data_literal_fomit_5globals_address_inventory_addressfix.csv`.
  `FUN_07fc1c18` has 12 pointer globals after that correction and remains
  outside the five-global sweep. Several higher-global-count functions remain
  only partially explored because their type combinations grow exponentially.
- I extended the data-literal scanner with scalar-global variants, targeted
  `_DAT` width inference, pointer-to-integer store recovery, and Ghidra's
  `CONCAT31` stack-subfield repair. A full six-global width sweep of
  `FUN_07fc625c` found no match under GCC 13 or Clang 18; the closest Clang
  candidate still differs by 789 bits. Targeted inferred-type builds for
  `FUN_07fc0bac`, `FUN_07fc60ec`, `FUN_07fc6358`, and `FUN_07fc77fc` also found
  no exact section. Results are in `V204_gcc13_07fc625c_width_sweep.csv`,
  `V204_clang18_07fc625c_scalar_width_sweep.csv`,
  `V204_clang18_inferred_width_probe.csv`,
  `V204_clang18_07fc60ec_inferred.csv`, and
  `V204_clang18_07fc6358_inferred.csv`; best C candidates are under
  `compiler_probes/large_global_best/`. These 7/8-global cases have not had
  exhaustive type sweeps. Pointer-local detection now also includes
  unprefixed `DAT_*` symbols assigned to typed pointer locals. For
  `FUN_07fc1c18`, fixing the eight MMIO widths to 16-bit and sweeping the
  remaining pointer widths compiled the C but still differed by 416 bits
  across the 152-byte output; the evidence is in
  `V204_clang18_07fc1c18_mmio_widths.csv`. Re-running with volatile pointer
  modeling gives 480 differing bits over a 164-byte output and does not
  improve the comparison;
  `V204_clang18_07fc1c18_all_widths_volatile.csv`.
- A targeted Clang 18 `-Os -fomit-frame-pointer` attempt on the six-global
  `FUN_07fc8bdc` used the C-level types and scalar uses to choose widths. It
  compiles, but differs from V204 by 49 bits over the emitted comparison
  span, so it is not an exact source candidate. Results and the best generated
  C/binary are in `V204_clang18_07fc8bdc_typed.csv` and
  `compiler_probes/high_pointer_best/`. An uninferred-width attempt failed to
  compile because it treated an integer-valued global as a byte pointer.
- `FUN_07fca64c` takes the address of the flash object `DAT_07fca788` for a
  ROM helper. The scanner now rewrites that address use to the object's
  payload address instead of taking the address of its loaded constant. This
  fixes compilation, but the typed Clang output remains a mismatch (932
  differing bits across its emitted comparison span), so the 304-byte routine
  is not recovered. The later usage-based width inference also compiles it but
  does not improve the match. Results are in
  `V204_clang18_07fca64c_addressfix.csv` and
  `V204_clang18_07fca64c_usage_inferred.csv`.
- A six-global probe showed that DAT globals pointing into peripheral space
  need volatile pointer accesses. The scanner now propagates that qualifier to
  pointer locals. Re-running the full five-global scan increased the exact set
  from 19 to 24 functions, adding `FUN_07fc1df8`, `FUN_07fc566c`,
  `FUN_07fc7308`, `FUN_07fcb924`, and `FUN_07fcbb6c`. All emitted bytes for all
  24 rows were independently compared with the payload. The latest CSV is
  `V204_clang18_data_literal_fomit_5globals_mmio_volatile.csv`; the five new
  generated C candidates are in `reconstructed_c_clang18_literals/`, and their
  focused result is `V204_clang18_mmio_volatile_new_matches.csv`. The
  cumulative count across the recorded linked-C and data-literal scans is 86
  distinct exact function start addresses. An audit across all current V204
  scan CSVs found 1,184 exact records across compiler/flag variants, and every
  record with emitted and target hex compared equal. These individually
  matching sections do not prove a whole-image link.
- With usage-based width inference and volatile MMIO pointers,
  `FUN_07fcb8d8` matches 42 of its 46 function-body bytes. The remaining four
  halfwords differ in literal-load offsets and selection for a flash pointer;
  the isolated function link does not reproduce whole-image literal layout.
  A following `naked` C/inline-Thumb-assembly probe now emits the complete
  76-byte section beginning at `0x07fcb8d8` exactly, including those literal
  halfwords and the `mov r8,r8` alignment instruction. Source:
  `compiler_probes/high_pointer_volatile/07fcb8d8_asm_c.c`. Compiled with
  Clang 18 for Cortex-M0 Thumb and linked at the original address, it compares
  with zero differing bytes against `V204.payload.bin`. This is an exact
  instruction-level reconstruction of one section, not the vendor's original
  C or evidence that the rest of the image can be rebuilt by the same method.
  `FUN_07fca64c` remains a large mismatch. See
  `V204_clang18_07fcb8d8_volatile_candidate.csv` and
  `V204_clang18_07fca64c_usage_inferred.csv`.
- The scanner now resolves Ghidra's address-suffixed string names to their
  payload addresses. This let the 330-byte `FUN_07fcc728` compile, but its
  Clang candidate differs by 1,213 bits across the emitted comparison span.
  The full 277-function scan with string resolution still has 24 exact matches,
  all byte-for-byte equal to the payload, and reduces compile errors from 121
  to 116 after adding the generic callback type. Results are in
  `V204_clang18_07fcc728_strings.csv` and
  `V204_clang18_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`.
  `--payload-globals-as-storage` is also available for experiments that model
  payload-backed globals as read-only objects at their image addresses; the
  targeted `FUN_07fcb8d8` test did not produce an exact match.
- The callback-compatible preamble now allows Ghidra `code *` values and
  unprototyped calls. `FUN_07fc3b78` (the 7-global state transition path) and
  `FUN_07fc302c` now compile, but remain mismatches; the latter also required
  resolving a `pcRam` callback label. The selected Clang 18 and Clang 14 results
  are `V204_clang18_07fc3b78_unprototyped.csv`,
  `V204_clang14_07fc3b78_inferred.csv`, and
  `V204_clang18_07fc302c_pcRam.csv`. The data scanner now accepts
  `--toolchain-dir`; `scan_linked_c_matches.py` also excludes underscored
  `_DAT_*` globals from its no-global candidate set.
- Full Clang 14 and Clang 18 `-Os -fomit-frame-pointer` scans both find the
  same 24 exact functions in the five-global data-backed subset. Clang 14
  compiles more candidates (34 compile errors versus 116 for Clang 18), but
  adds no exact functions. GCC 13 and GNU Arm GCC 4.9.3 find no exact functions
  in that subset with the same scanner/model; the 4.9.3 scan completed outside
  the sandbox because its executable is incompatible with the sandbox's
  syscall filter. Results are in
  `V204_clang14_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`,
  `V204_clang18_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`,
  `V204_gcc13_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`,
  and `V204_gcc49_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`.
  `scan_data_literal_c_matches.py` now accepts `--toolchain-dir` for the
  historical compiler.
- Clang 18 full data-backed sweeps at `-O1`, `-O2`, `-Os`, and `-Oz` find 22,
  20, 24, and 24 exact sections respectively. The `-O1` and `-O2` sets are
  subsets of the `-Os` set; `-Os` and `-Oz` produce the same 24 functions and
  identical emitted bytes for each. No optimization-level scan adds a new
  exact function start. Results are
  `V204_clang18_O1_fomit_5globals_mmio_volatile_strings_codeptr.csv`,
  `V204_clang18_O2_fomit_5globals_mmio_volatile_strings_codeptr.csv`, and
  `V204_clang18_Oz_fomit_5globals_mmio_volatile_strings_codeptr.csv`.
- In `FUN_07fc8c90`, the Thumb code calls ROM routine `0x7f1dfe4` and then
  stores `r1` directly into a state byte. Ghidra reports this as
  `extraout_r1`; the scanner's `--capture-r1-after-call` option binds that
  value to `r1` after the call. The candidate compiles but remains a large
  mismatch (1,472 differing bits across 420 emitted bytes, versus 1,406 bits
  without the register capture). Evidence is in
  `V204_clang18_07fc8c90_r1_capture.csv`; the instruction sequence is visible
  around `0x7fc8d1a` in `V204.thumb.asm`.
- A historical GNU Arm Embedded GCC 4.9.3 toolchain (`4.9-2015-q1`, 2015-03)
  was obtained and run from `/tmp`; its archive MD5 was
  `68f5928cdfb990691ea53246c56f6720`. Running the same linked scan with GCC
  4.9.3 yields 35 exact matches, versus 36 with GCC 13.2.1. Both agree on the
  simple leaves and `FUN_07fcb962`; GCC 13 additionally matches
  `FUN_07fcee44`. The GCC 4.9.3 result is in
  `V204_gcc49_linked_c_scan_romresolved.csv`. Thus 4.9.3 is a viable candidate
  to test, not an identified OEM compiler. The related DA1458x support-package
  listing makes this era plausible but is not evidence that V204 used this
  toolchain.
  For five selected near misses, GCC 13 with `-O1` and `-O2` still only
  exactly matched `FUN_07fcee44` without the explicit register constraint.
  GCC 4.9 more often saved `r3`, GCC 13 saved `r4`, and V204 commonly saves
  `r7`; the empty `r7` clobber then reproduced 13 wrappers. This confirms
  register-allocation constraints can explain a subset, while compiler/source
  reconstruction remains open for the larger bodies and the complete image.

The ATC SDK's complete `da14585_586.lib` archive contains ten members, exactly
the same ten object files present beside it. The byte scan covered all 29
named `.text` function symbols from those objects and found no exact V204
matches (`compare_keil_sdk_object_bytes.py`, results in
`V204_keil_sdk_object_matches.csv`). The archive objects' `.comment` sections
identify their compiler as **ARM Compiler 5.06 update 7 (build 960), ArmCC**;
recorded options include Cortex-M0 Thumb and `-O3`. This is direct provenance
for the ATC SDK library objects only, not for the OEM V204 image. No `armcc`
executable or OEM object files are present in the workspace, so this identifies
a reference compiler family but does not yet let us rebuild V204 with it.

- A V202/V204 cross-version scan preserves ordinary instruction bits and
  short-branch displacements while masking Thumb `BL`, `LDR literal`, and `ADR`
  displacements. It found 166 candidate pairs across 164 V204 functions; 68
  pairs are raw byte-identical, while 98 additional pairs (96 distinct V204
  functions) share the normalized shape, spanning 11,228 V204 bytes. This is
  an analysis aid, not additional C byte-match coverage. Literal auditing found
  346 equal values, 57 changed flash pointers whose first four pointed-to bytes
  are equal, 14 addresses relocated within the SDK's DA14585/586 SRAM range,
  and one unresolved change (`0x001700ca` to `0x001700cc`). Call auditing found
  215 numerically unchanged targets, 103 changed targets mapped to candidate
  function pairs, and 34 unmapped changed targets across 24 candidates. These
  exceptions are retained in the pair-specific audit CSVs and must be resolved
  before reusing a V202 body as V204 source evidence. Reproduce with
  `compare_v202_v204_thumb_normalized.py`,
  `audit_v202_v204_normalized_literals.py`, and
  `audit_v202_v204_normalized_calls.py`; see `V202_V204_COMPARISON.md`.
- The 34 unmapped call sites resolve to 14 distinct callee pairs. A follow-up
  instruction and pseudocode comparison finds 10 pairs with identical
  instruction-mnemonic and register-use sequences; the other four have
  substantially different shapes. The 3,592-byte multi-range pair
  `FUN_07fccc60`/`FUN_07fcdd68` has identical address-normalized decompiler
  output. The strongest pairs also reveal V204-specific field-offset changes
  and a command-byte change, so they are structural templates rather than
  drop-in implementations. The rankings are reproducible with
  `rank_unmapped_call_targets.py` and are in
  `V202_V204_unmapped_call_target_similarity.csv`.
- A range-by-range check of the strongest multi-range analogue,
  V202 `FUN_07fccc60` → V204 `FUN_07fcdd68`, gives much stronger evidence than
  mnemonic similarity alone. All four code ranges have equal lengths and shift
  by `0x1108`. The 3,592 body bytes have no differences outside 11 `BL`
  encodings to unchanged ROM targets; six other calls keep identical encodings
  and target functions shifted by `0x1108`, all present in the normalized
  function map. In the 82 inter-range bytes, all 16 differing bytes fall in
  six pointer occurrences; the remainder is byte-identical. Reproduce with
  `compare_v202_v204_multirange_pair.py`; details are in
  `07fccc60_07fcdd68_multirange_compare.csv` and
  `V202_V204_COMPARISON.md`. This yields a high-confidence V204 code-layout
  anchor but still does not supply the OEM C source or compiler configuration.
- The compiler sample `patch.o` in the ATC Keil SDK archive confirms ArmCC
  5.06u7 and shows that its compiled `switch` sites call
  `__ARM_common_switch8`. V204's 18-entry dispatcher is inline relative-table
  code. This weakens the specific ArmCC 5.06u7 configuration as the source of
  that switch routine, but does not identify or rule out other OEM compiler
  builds. The raw object archive comparison still found zero exact V204
  function matches.
- In the 3.6 KB V204 function `FUN_07fcdd68`, Ghidra's `extraout_r1` values
  follow ROM calls resolved as `__aeabi_uidivmod`/`__aeabi_idivmod`; the
  assembly consumes `r1` as the division remainder. The reconstructed probe
  now expresses those sites with `%`, correcting the decompiler's lost return
  channel. An audit caught that the earlier byte score included 82 unrelated
  bytes between the function's four code ranges. The probe now compares only
  the 3,592 function bytes, concatenated in address order. GCC 13/4.9 and Clang
  14/18 emit 3,824–4,080 bytes at `-Os`, with 54–70 equal bytes and roughly
  13,099–13,290 differing bits in the linear overlap. A second source-shape
  probe expresses the remainder sites as explicit 64-bit EABI divmod calls;
  GCC 13 and Clang 18 yield 53 and 66 equal bytes. The function remains far
  from a byte match under these builds. The comparison is still only a linear
  diagnostic and cannot align differently laid-out basic blocks. Details are
  in `compiler_probes/multirange_07fcdd68/README.md`.

## Reconstruction coverage ledger

| Subsystem | Current evidence/state | Remaining proof obligation |
|---|---|---|
| OTA wrapper | Header, code length, CRC, padding and XOR independently checked for V202/V204. | Reproduce all original header bytes only when the original timestamp/version/build fields are explicitly supplied. |
| Reset/startup and event loop | Vector table and main-loop body are present in the V204 payload; the large loop decompiles poorly. | Recover reset-to-app startup path, global initialization, task/event dispatch, sleep/wakeup, and all callbacks. |
| BLE identity, advertising, profiles | UUIDs and selected paths are documented; Thumb-aware decompilation now exposes additional per-connection message dispatch, state copies, and timer registration. MVP currently substitutes ATC startup and adds custom GATT/HOGP. | Recover exact GAP/GATT setup, payload bytes, connection state, queues, pairing/security, SUOTA and error paths from V204; verify against original behavior. |
| Commands and notifications | Selected command IDs and packet layouts have been ported; motion sender `06 02 00` is supported by static evidence. | Enumerate all dispatcher branches, responses, timer/event producers, exact payload lengths and ordering. |
| Display and modes | GPIO/segment tables and several renderers/mode observations are recorded. | Recover all state IDs, entry/exit behavior, timing, brightness, indicators, labels and button hold semantics. |
| Clock and persistence | Selected sync, format, context restore/save and rollover logic are modeled. | Resolve all writers/readers and flash side effects; compare exact wrap, timezone, invalid-input, cold-start and persistence behavior. |
| Step/motion | Sensor bus/register setup and portions of classifier/accumulator are recorded. | Port complete filter, thresholds, calibration/state variables, timers, accepted-step batching, daily reset and reports. |
| Heart rate, SpO2, sleep | Mode labels and some state-history artifacts are known. | Identify full acquisition/control/report paths, sensor initialization, timeout/error behavior, LED/display cadence and history storage. |
| HID / button / motion events | HOGP report map is recovered; original includes mouse and digitizer report types. | Recover report producers, protocol negotiation, timer callback and exact distinction between physical button and motion. |
| Build identity | ATC DA14585 Eclipse baseline specifies GCC C99, `-Os`, Cortex-M0 Thumb, LTO, function/data sections, and newlib-nano; adjacent tool support lists GNU Arm 4.9 (2015 Q1). These are ATC project settings, not verified V204 build inputs. | Identify the OEM compiler/version and actual flags, recover C plus all SDK/prebuilt inputs, initialization and section placement; reproduce the complete V204 OTA bytes exactly, including code layout, padding, header fields and final XOR. |

### Version-comparison result

The independent function exports contain 251 V202 and 258 V204 functions.
Ghidra assigned only 43 entries the same address in both versions; address
identity is therefore a poor cross-version matcher after V204's insertions.
Hashing each function's original byte range instead found 74 shared exact
bodies, of which 73 were unique one-to-one pairs. Four multi-range functions
were excluded from this first exact-body pass. The next comparison should
normalize relocation-dependent literals and function boundaries before calling
other routines “new,” “removed,” or “changed.”

The current Thumb-aware V204 index is larger and finds 116 single-range
function bodies of at least eight bytes as exact substrings in V202; all 116
substrings have one V202 location. The reproducible results are in
`V202_V204_thumb_exact_matches.csv`, generated by
`compare_v202_v204_thumb.py`. These are byte-identical fragments, not yet
confirmed whole-function matches because V202 has not had equivalent function
boundary recovery.

## Work protocol

For each recovered routine, retain: payload digest, address/range, original
bytes/disassembly, cross-references, reconstructed pseudocode, confidence,
state/memory model, and a comparison to V202 where useful. Label each statement
as observed, inferred, or unknown. Convert inferred behavior into tests only
after defining the test oracle from the original artifact or user-observed
device behavior. No further ring flash is part of this reverse-engineering
phase.

Priority order: (1) identify the original compiler, build configuration,
startup/link layout, SDK/library boundary and package determinism; (2) map and
recover every function and data range from the V204 payload as C; (3) compile
against the recovered build inputs and compare bytes by range; (4) resolve each
remaining mismatch in code, constants, padding or OTA header; (5) require a
zero-mismatch whole-image comparison before claiming completion.

- A current Clang near-miss, `FUN_07fcee94` (24 target bytes), was checked
  against its instructions at `0x7fcee94`. The target initializes its maximum
  from a signed-byte load, scans 100 signed-byte entries, keeps the accumulator
  in `r1` and index in `r2`, then truncates to a byte. The decompiler's `char *`
  candidate compiled with unsigned loads under Clang; changing the pointer to
  `signed char *` corrected the load and compare semantics, but the optimizer
  still chose a different register allocation and emitted a 22-byte body.
  `volatile` access and GCC-style fixed-register variables did not produce the
  target encoding. Experiments were reverted; the checked-in generated
  decompilation is unchanged. This identifies one source-type correction but
  adds no exact function match.
- To test whether default plain-`char` signedness explains a wider class of
  near-misses, the linked scanner gained an opt-in `--signed-char` flag and
  Clang 14/18 and GCC 13 `-Os` sweeps were run across all 113 eligible
  single-range functions. The exact sets are unchanged: both Clang versions
  remain 79 functions / 962 bytes and GCC 13 remains 63 / 544 bytes, with no
  additions or losses. Individual candidate encodings do change, including
  the signed loads in `FUN_07fcee94`, but global signed-char mode is not the
  missing build setting. Results are `V204_clang14_fomit_signedchar_scan.csv`,
  `V204_clang18_fomit_signedchar_scan.csv`, and
  `V204_gcc13_Os_signedchar_scan.csv`; reproduce with `--signed-char`.
- An audit of the current `V204_code_units.tsv` found 51 decoded instruction
  units with no function owner, grouped into only four spans. Three are data,
  not omitted executable functions: `0x7fcf23c–0x7fcf253` is a monotonic byte
  lookup table; `0x7fcf2dc–0x7fcf31f` is an ASCII-like character/class table;
  and `0x7fcfacc–0x7fcfad1` is a literal-pool fragment. The fourth,
  `0x7fc5480–0x7fc5483`, is the literal immediately preceding
  `FUN_07fc5484`. Their raw payload bytes and surrounding references support
  classifying these as data. This removes these unowned decodes as candidate
  hidden functions but does not recover their original declarations or close
  source/layout parity.
- The four data spans were transcribed as address-named `const uint8_t` objects
  in `reconstructed/data/V204_tables.c`, each in its own `.v204.data.<address>`
  section. Cross-references show the 24-byte table at `0x7fcf23c` is indexed
  twice at `0x7fcd628/62a` and twice at `0x7fcd6c8/6ca`; the 68-byte table at
  `0x7fcf2dc` is indexed at `0x7fce046/048` and `0x7fce102/104`. Those reads
  belong to `FUN_07fcdd68`. Compiling with GNU Arm GCC 13 and extracting each
  section reproduces all four original ranges exactly (102 bytes total).
  `reconstructed/data/verify_data_sections.py` repeats the compile/extract/
  compare. This confirms the declarations' bytes, not their final linked
  addresses or the surrounding function's source reconstruction.
- The four recovered data sections now have a linker fragment,
  `reconstructed/data/V204_data_sections.ld`, that assigns each section its
  original V204 virtual address. `verify_data_sections.py` links the C object,
  checks each linked section VMA, extracts it, and compares it against the
  payload. All four sections pass both address and byte checks. This closes the
  exact placement obligation for these 102 bytes in isolation; it does not
  validate how they coexist with the unrebuilt neighboring code in a complete
  firmware link.
- Startup data now has C representations too: the 40-word Cortex-M0 vector
  table at `0x7fc0000` and the two 16-byte initializer records at
  `0x7fd0340`. The records are represented as four-word structs; their fourth
  word is the observed untagged callback address `0x7fcd0ba`, which startup
  retags before calling. The linker fragment and verifier include both ranges.
  All six isolated sections now pass exact VMA and payload-byte comparison,
  covering 294 bytes total (the previous 102 plus 160 vector and 32 initializer
  bytes). The full surrounding startup code and app link remain unreconstructed.
- All remaining Ghidra `kind=data` units are now emitted as address-specific
  C byte arrays by `reconstructed/data/generate_ghidra_data.py`. The generator
  validates the expected overlap with the typed vector and initializer objects,
  excludes those bytes, and emits a linker section per remaining contiguous
  span. It generated 339 additional objects covering 12,064 bytes. The linked
  verifier now compiles both data translation units, checks every section's
  VMA, and compares all contents against the payload: 345 sections / 12,358
  bytes pass exactly. This recovers the classified data bytes, including
  unknown constants without claiming their semantic types; executable code,
  data omitted/misclassified by Ghidra, and the full-image link remain open.
- Follow-up compiler/source-shape probes on the signed-byte maximum routine
  `FUN_07fcee94` found no path to its 24-byte target under Clang 18 or GCC 13
  across the tested optimization levels. Clang `-Os/-Oz` retains a 22-byte
  body; `-O1` emits 26 bytes; `-O2/-O3` substantially unroll it. GCC variants
  also differ. An empty memory barrier between accumulator and index setup
  leaves Clang's `-Os` output unchanged, and explicit fixed-register asm
  constraints are rejected by Clang's Arm target. The decompiler source was
  restored, and the independent 345-section data verifier still passes.

- Revisited the short `FUN_07fcbb38` mismatch at `0x7fcbb5e`. The target
  shifts the helper result, branches on `BMI` over a two-instruction assignment
  (`movs r0,#11; mvns r4,r0`), then returns through one shared `r4` epilogue.
  Clang 18 instead uses the inverse branch polarity and a separate return path,
  making a 52-byte body versus the 50-byte target. Rewriting the sign test as
  an early return did not change code generation; an empty read/write asm
  constraint on the result altered the branch layout but did not reduce the
  body to target bytes. The original pseudocode was restored.
  Four further equivalent C forms for the final sign assignment (explicit
  `else`, ternary, conditional addition, and reversed test/else) all emitted
  the same 52-byte Clang 18 body. Thus this is not fixed by a surface-level
  rewrite of the comparison; register allocation or earlier source structure
  must change to reproduce the target's shared epilogue.
  Branch-probability hints (`__builtin_expect`) can force a 50-byte Clang body
  and change the tail polarity, but the best non-asm result still differs by
  30 bits and computes the result in the wrong register. Combining the hint
  with a `+r` constraint makes Clang write `r4` but adds a backward branch and
  produces 52 bytes. Inserting an inline-asm tail in the C routine also changes
  register allocation and call encodings earlier in the function, so it does
  not preserve the otherwise matching 38-byte prefix. All probes were
  reverted; the stock decompilation remains unchanged.
  An explicit source `goto` to the shared epilogue, with and without branch
  probability hints, still leaves Clang's result block before its assignment
  block; the closest output remains 50 bytes / 30 bits away. Clang 18 also
  ignores `-fno-reorder-blocks` as unsupported for this target. This confirms
  that ordinary CFG spelling and the attempted frontend layout hint do not
  produce V204's forward join under the available compiler.
  GNU Arm GCC 4.9.3 was also tested on the same five branch/source forms
  (`base`, both `__builtin_expect` weights, explicit `goto`, and hinted `goto`).
  The compiler optimized all five to the same 42-byte body, short of V204's
  50-byte range; none matches. The historical compiler needed execution
  outside the sandbox's syscall filter. Source was restored after the sweep.
- The exact function and data candidates are now integrated into one sparse ELF.
  `reconstructed/exact_clang18/build_partial_exact.py` compiles 79 direct
  exact C functions and 24 preserved data-backed exact C functions, links them
  with recovered data at original VMAs, rejects section overlaps, extracts all
  selected sections, and byte-compares them with the V204 payload. The build
  passes with 425 non-overlapping sections / 14,036 bytes (20.91%). The 103
  function sections emit 1,854 bytes, including 176 literal-pool bytes; their
  declared function ranges cover 1,678 bytes. The remaining 322 data sections
  cover 12,182 bytes, excluding literal-pool bytes carried by those function
  sections. See `reconstructed/exact_clang18/README.md`. This supersedes the
  earlier standalone-only figures of 345 data sections / 12,358 bytes: those
  included the 176 bytes now owned by function sections. The partial ELF is not
  a complete firmware image; the other payload sections remain unreconstructed.
- `FUN_07fcaa4c` is now an address-exact C function. Two small inline-assembly
  statements pin its PC-relative loads to the shared V204 literal words at
  `0x7fcade8` and `0x7fcad74`; Clang 18 `-Os` generates the remaining C
  operations. A second address-exact function, `FUN_07fc33a4`, needed one inline
  assembly store to retain the original base/index register order; Clang emits
  the rest, including its in-range literal word, from C. `FUN_07fc549c` now
  matches too: one inline-assembly load keeps the shared literal pointer in the
  original register, and Clang emits its offset load, comparison, branch, and
  call. `FUN_07fc97d8` also matches after preserving its shared literal-base
  load; Clang generates the byte-offset read, signed-bit test, branch, and call.
  `FUN_07fc9880` now matches too: register-bound C values plus inline loads and
  an operand-order constraint reproduce its indexed multiply/add and literal
  references. `FUN_07fccf38` also matches with a C reconstruction of the record
  writes and one inline-assembly pair preserving base/index operand order.
  `FUN_07fc5808` matches after separating two volatile halfword reads to
  preserve their target order. `FUN_07fc1f00` also matches using a PC-relative
  load into a literal word shared by neighboring functions. Its sibling wrapper
  `FUN_07fc1f10` now matches with the same shared-pool strategy and its own
  argument constants. `FUN_07fc20d4` matches with C-generated first two
  literal loads and a PC-relative load for the distant destination pointer.
  All ten manually curated functions are linked at their V204 addresses. The
  full partial-link verifier now passes for 432 non-overlapping sections /
  14,280 bytes (21.27%), including 113 exact C functions totaling 2,122 bytes.
  Function sections contain 194 literal-pool bytes; their declared ranges
  cover 1,928 bytes. The 319 data sections cover 12,158 bytes.
  `reconstructed/exact_clang18/README.md` documents the generation and
  verification commands. Remaining payload bytes are still unreconstructed;
  this is not a complete firmware image.
- Investigated the short CRC-like routine `FUN_07fc5740`. Ghidra's initial
  `void` signature hid its returned CRC state, which the caller consumes.
  Its current candidate returns that state; a C counter and explicit loop edge
  preserve the eight rounds while inline assembly retains the CRC datapath and
  polynomial load sequence. The function remains part of the exact-link set.
- Latest exact-link update: `FUN_07fc3b40` is added as an eleventh manually
  curated C function. Its PC-relative load reaches the existing literal at
  `0x7fc3e84`; the byte check, conditional call, and return compile from C.
  The full verifier passes for 433 non-overlapping sections / 14,298 bytes
  (21.30%), with 114 exact functions / 2,140 function-section bytes, 194
  literal-pool bytes in those sections, and 319 data sections / 12,158 bytes.
- Latest exact-link update: `FUN_07fc5f80` is now exact. A compact inline-asm
  pair reproduces its literal-pointer load and ADR of the adjacent string;
  Clang emits both calls and their argument setup. The verifier passes for 433
  non-overlapping sections / 14,316 bytes (21.32%), with 115 exact functions /
  2,160 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: `FUN_07fc2ff4` now matches its 52-byte function
  range using a PC-relative load to the existing literal at `0x7fc30f0`; the
  rest is emitted from the decompiled C structure. The verifier passes for 434
  non-overlapping sections / 14,368 bytes (21.40%), with 116 exact functions /
  2,212 function-section bytes and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fcd8a0` now matches by loading its shared
  state base from the original literal pool and accessing field 1 as a typed C
  pointer. The verifier passes for 435 non-overlapping sections / 14,382 bytes
  (21.42%), with 117 exact functions / 2,226 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fcebc4` is exact using the same shared-base
  load pattern, with C generating its offset-28 compare and conditional clear.
  The verifier passes for 436 non-overlapping sections / 14,396 bytes (21.44%),
  with 118 exact functions / 2,240 function-section bytes, 194 literal-pool
  bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc97ac` matches by preserving its shared
  literal base and compiling the offset-20 bit test and conditional call from
  C. The verifier passes for 437 non-overlapping sections / 14,414 bytes
  (21.47%), with 119 exact functions / 2,258 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc1e60` matches with a PC-relative load to
  its shared state base; Clang emits the offset-76 load and conditional call.
  The verifier passes for 438 non-overlapping sections / 14,430 bytes (21.49%),
  with 120 exact functions / 2,274 function-section bytes, 194 literal-pool
  bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc2e6c` now matches its 20-byte range. Its
  complete short Thumb body is pinned in inline assembly to preserve the
  calls, 1000-ms argument construction, and PC-relative state-base load. The
  verifier passes for 439 non-overlapping sections / 14,450 bytes (21.52%),
  with 121 exact functions / 2,294 function-section bytes, 194 literal-pool
  bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc2da8` matches all 28 bytes with one
  inline-assembly PC-relative load; Clang emits its call, field access,
  comparisons, result selection, and return. Verification now passes for 440
  non-overlapping sections / 14,478 bytes (21.57%), with 122 exact functions /
  2,322 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: `FUN_07fcca2c` now matches all 56 bytes. A pinned
  shared-state literal load and `r4`/`r5` register bindings preserve the target
  allocation; Clang emits the state updates, threshold checks, branches, and
  calls from C. Verification passes for 441 sections / 14,534 bytes (21.65%),
  with 123 exact functions / 2,378 function-section bytes, 194 literal-pool
  bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fca904` matches its 10-byte function range.
  Its two external literal loads and byte-offset register are pinned; Clang
  emits the halfword store and return from C. Verification passes for 442
  non-overlapping sections / 14,544 bytes (21.66%), with 124 exact functions /
  2,388 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: eleven shared-state halfword setter wrappers at
  `0x07fc8b20`, `0x07fc8b48`, `0x07fc8b54`, `0x07fc8b60`, `0x07fc8b88`,
  `0x07fc8b94`, `0x07fc8ba0`, `0x07fc8bac`, `0x07fc8bb8`, `0x07fc8bc4`, and
  `0x07fc8bd0` now match. Their literal load and offset register are pinned;
  Clang emits the halfword assignments and returns from C. Verification passes
  for 453 sections / 14,654 bytes (21.83%), with 135 exact functions /
  2,498 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: `FUN_07fc4440` matches all 24 bytes with its two
  external state loads pinned. Clang emits the poll loop, multiply and shift,
  and return from C. Verification passes for 454 sections / 14,678 bytes
  (21.86%), with 136 exact functions / 2,522 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc33c0` matches all 32 bytes. Its final
  shared-pointer load is pinned; Clang emits the call sequence and byte stores
  from C. Verification passes for 455 sections / 14,710 bytes (21.91%), with
  137 exact functions / 2,554 function-section bytes, 194 literal-pool bytes,
  and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc8018` now matches its 34-byte range.
  Pinned literal-load ordering and an `r1` value binding preserve the target;
  Clang emits the conditional value logic, stores, and calls from C. The full
  verifier passes for 456 sections / 14,744 bytes (21.96%), with 138 exact
  functions / 2,588 function-section bytes, 194 literal-pool bytes, and 318
  data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc2e50` matches all 24 bytes. Its shared
  state pointer and timer argument loads are pinned; Clang emits the state
  accesses and calls from C. Verification passes for 457 sections / 14,768
  bytes (22.00%), with 139 exact functions / 2,612 function-section bytes,
  194 literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc8004` matches its 16-byte range using two
  pinned literal loads; Clang emits the byte clear and call from C. Verification
  passes for 458 sections / 14,784 bytes (22.02%), with 140 exact functions /
  2,628 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: `FUN_07fc8b2c` matches its 26-byte range. Its flag
  and state-pointer loads are pinned; Clang emits the flag test, callback,
  halfword assignment, and return from C. Verification passes for 459 sections
  / 14,810 bytes (22.06%), with 141 exact functions / 2,654 function-section
  bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc7f94` matches all 54 bytes. Its retry
  loop and calls to the in-image helpers are retained in a naked C wrapper;
  its long PC-relative pointer load resolves into the existing data section at
  `0x07fc832c`. Verification passes for 475 sections / 15,310 bytes (22.80%),
  with 157 exact functions / 3,154 function-section bytes, 194 literal-pool
  bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc57b8` matches all 80 bytes. The recovered
  linked-list walk, null checks, MMIO error writes, and infinite waits are
  retained in a naked C wrapper; its helper call resolves to V204. Verification
  passes for 476 sections / 15,390 bytes (22.92%), with 158 exact functions /
  3,234 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: `FUN_07fcba98` matches all 56 bytes. The naked C
  wrapper preserves its MMIO writes, polling loop, and result assembly exactly;
  its PC-relative literal resolves into the already verified `FUN_07fcbb6c`
  section. Verification passes for 474 sections / 15,256 bytes (22.72%), with
  156 exact functions / 3,100 function-section bytes, 194 literal-pool bytes,
  and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc8b6c` matches its 26-byte range using the
  same flag/state pattern with its bit-1 check and callback argument. The full
  verifier passes for 460 sections / 14,836 bytes (22.10%), with 142 exact
  functions / 2,680 function-section bytes, 194 literal-pool bytes, and 318
  data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc1fd0` matches all 30 bytes. Its two
  PC-relative data loads are pinned, while `__builtin_add_overflow` compiles
  into the target's carry-check loop. Verification passes for 461 sections /
  14,866 bytes (22.14%), with 143 exact functions / 2,710 function-section
  bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc6440` matches all 18 bytes. Its initial
  arithmetic and shared-base load are pinned; Clang emits the indexed byte
  store and return from C. Verification passes for 462 sections / 14,884 bytes
  (22.17%), with 144 exact functions / 2,728 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fceedc` matches its 22-byte range. Its
  literal and stack-argument loads are pinned; Clang emits the field stores
  and return from C. Verification passes for 463 sections / 14,906 bytes
  (22.20%), with 145 exact functions / 2,750 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc72f0` matches all 20 bytes. Its initial
  counter and literal load are pinned; Clang emits the descending copy loop
  and return from C. Verification passes for 464 sections / 14,926 bytes
  (22.23%), with 146 exact functions / 2,770 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc8584` matches all 28 bytes with its two
  external loads pinned. Clang emits the mask test and both conditional and
  unconditional calls from C. Verification passes for 465 sections / 14,954
  bytes (22.27%), with 147 exact functions / 2,798 function-section bytes,
  194 literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc869c` matches all 24 bytes. Its two
  literal loads are pinned; Clang emits the state updates and both calls from
  C. Verification passes for 466 sections / 14,978 bytes (22.31%), with 148
  exact functions / 2,822 function-section bytes, 194 literal-pool bytes, and
  318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc8680` matches all 28 bytes using its two
  external loads; Clang emits the mask check and both calls from C. Verification
  passes for 467 sections / 15,006 bytes (22.35%), with 149 exact functions /
  2,850 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes.
- Latest exact-link update: `FUN_07fcacd0` matches its 14-byte range with two
  pinned literal loads and the fixed offset register. Clang emits the byte and
  word stores from C. Verification passes for 468 sections / 15,020 bytes
  (22.37%), with 150 exact functions / 2,864 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fcacb8` matches its 14-byte range using the
  same C-generated byte and word stores as `FUN_07fcacd0`, with its own literal
  offsets and field value. Verification passes for 469 sections / 15,034
  bytes (22.39%), with 151 exact functions / 2,878 function-section bytes,
  194 literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fcaf84` matches all 18 bytes. Its pointer
  load and index register are pinned; Clang emits the byte write and call from
  C. Verification passes for 470 sections / 15,052 bytes (22.42%), with 152
  exact functions / 2,896 function-section bytes, 194 literal-pool bytes, and
  318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fcbbdc` matches all 20 bytes with its state
  load pinned. Clang emits the byte test, conditional call, and return from C.
  Verification passes for 471 sections / 15,072 bytes (22.45%), with 153
  exact functions / 2,916 function-section bytes, 194 literal-pool bytes, and
  318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc5740` matches all 24 bytes. Its eight-round
  counter and loop control compile from C; inline assembly preserves the CRC
  bit-step sequence. The polynomial constant remains in the separately
  recovered section at `0x07fc5758`. Verification passes for 472 sections / 15,096 bytes
  (22.49%), with 154 exact functions / 2,940 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes.
- Latest exact-link update: `FUN_07fc677c` now matches all 104 bytes. Its
  call sequence, stack frame, conditional status calculation, and stores are
  represented by the recovered Thumb body in a naked C wrapper; the linked
  calls resolve to their V204/ROM targets, and its three literal constants
  remain in recovered data sections. Verification passes for 473 sections /
  15,200 bytes (22.64%), with 155 exact functions / 3,044 function-section
  bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes.
- Current verified aggregate (supersedes the older checkpoint totals above):
  `FUN_07fcba98`, `FUN_07fc7f94`, and `FUN_07fc57b8` have also been added.
  The full linker verifier passes for 476 sections / 15,390 bytes (22.92%),
  comprising 158 exact functions / 3,234 function-section bytes, 194
  literal-pool bytes, and 318 data sections / 12,156 bytes. The linked ELF
  remains partial and is not flashable.
- Current verified aggregate after adding `FUN_07fc66c0`: the full linker
  verifier passes for 477 sections / 15,440 bytes (23.00%), comprising 159
  exact functions / 3,284 function-section bytes, 194 literal-pool bytes, and
  318 data sections / 12,156 bytes. `FUN_07fc66c0` matches all 50 bytes,
  including its ROM calls and PC-relative MMIO/data literals. The ELF remains
  partial and is not flashable.
- Current verified aggregate after adding `FUN_07fc8a0c`: the linker verifier
  passes for 478 sections / 15,510 bytes (23.10%), with 160 exact functions /
  3,354 function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. This 70-byte hardware-command function is produced mostly by
  C; three inline PC-relative loads preserve its literal addresses.
- Current verified aggregate after adding `FUN_07fc5200`: verification passes
  for 479 sections / 15,550 bytes (23.16%), with 161 exact functions / 3,394
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. The 40-byte function is C-generated aside from two inline
  PC-relative loads that read already recovered global literals.
- Current verified aggregate after adding `FUN_07fcc118`: verification passes
  for 480 sections / 15,598 bytes (23.23%), with 162 exact functions / 3,442
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. The 48-byte function is mostly C; four inline Thumb
  instructions pin the MMIO literals and their error-path ordering.
- Current verified aggregate after adding `FUN_07fc3a18`: verification passes
  for 481 sections / 15,620 bytes (23.27%), with 163 exact functions / 3,464
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Its two inline PC-relative loads select recovered globals;
  Clang generates the call and field stores from C.
- Current verified aggregate after adding `FUN_07fc31f8`: verification passes
  for 482 sections / 15,656 bytes (23.32%), with 164 exact functions / 3,500
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. The C reconstruction preserves the first volatile field write;
  a short inline Thumb sequence fixes the second store's original form.
- Current verified aggregate after adding `FUN_07fc5654`: verification passes
  for 483 sections / 15,676 bytes (23.35%), with 165 exact functions / 3,520
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Clang generates the 20-byte function's signed-byte handling,
  clamp, and indexed stores; only its global base-pointer load is pinned.
- Current verified aggregate after adding `FUN_07fcc9c8`: verification passes
  for 484 sections / 15,730 bytes (23.43%), with 166 exact functions / 3,574
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Two inline PC-relative loads preserve the original address
  references; the existing data section at `0x07fcc9fe` supplies their literal
  pool and timer name.
- Current verified aggregate after adding `FUN_07fcc9a4`: verification passes
  for 485 sections / 15,760 bytes (23.47%), with 167 exact functions / 3,604
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. C emits the conditional helper path and row updates; inline
  assembly preserves the PC-relative table base and store form.
- Current verified aggregate after adding `FUN_07fc5484`: verification passes
  for 486 sections / 15,784 bytes (23.51%), with 168 exact functions / 3,628
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. C emits the byte-copy operation and calls; asm-goto control
  flow preserves the target's top-tested loop and backward branch.
- Current verified aggregate after adding `FUN_07fc0194`: verification passes
  for 487 sections / 15,814 bytes (23.56%), with 169 exact functions / 3,658
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. The initial zero test is C control flow; inline NOPs and the
  conditional decrement branch preserve the target's delay-loop encoding.
- Current verified aggregate after adding `FUN_07fca8ec`: verification passes
  for 488 sections / 15,836 bytes (23.59%), with 170 exact functions / 3,680
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Inline assembly pins the shared-pool loads and signed-byte
  access; C emits the helper call and function frame/return.
- Current verified aggregate after adding `FUN_07fcad54`: verification passes
  for 489 sections / 15,864 bytes (23.63%), with 171 exact functions / 3,708
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Two inline literal loads preserve references to existing global
  data; C generates the remaining state update and helper call.
- Current verified aggregate after adding `FUN_07fca9b4`: verification passes
  for 490 sections / 15,892 bytes (23.67%), with 172 exact functions / 3,736
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Its shared-pool loads are pinned in inline assembly; C emits
  the helper call and state byte update.
- Current verified aggregate after adding `FUN_07fcaac8`: verification passes
  for 491 sections / 15,920 bytes (23.71%), with 173 exact functions / 3,764
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. C emits the helper call, state offset arithmetic, and final
  byte update; inline assembly pins the two shared-pool loads.
- Current verified aggregate after adding `FUN_07fcbbc4`: verification passes
  for 492 sections / 15,944 bytes (23.75%), with 174 exact functions / 3,788
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Its conditional global byte clear is pinned in inline assembly;
  C emits the trailing helper call and return.
- Current verified aggregate after adding `FUN_07fc31d4`: verification passes
  for 493 sections / 15,970 bytes (23.79%), with 175 exact functions / 3,814
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. C emits the timer-helper call; inline assembly fixes the
  register-sensitive state updates and their references to recovered globals.
- Current verified aggregate after adding `FUN_07fc1a2a`: verification passes
  for 494 sections / 15,978 bytes (23.80%), with 176 exact functions / 3,822
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. This short naked Thumb veneer applies the sign-bit XOR and
  tail-branches to the shared floating-point helper.
- Current verified aggregate after adding `FUN_07fc20b4`: verification passes
  for 495 sections / 16,010 bytes (23.85%), with 177 exact functions / 3,854
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Eleven inline NOPs and an explicit decrement/back-edge preserve
  the busy-wait duration and exact Thumb encoding.
- Current verified aggregate after adding `FUN_07fc1b3e`: verification passes
  for 496 sections / 16,050 bytes (23.91%), with 178 exact functions / 3,894
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. C expresses the threshold and shift behavior; inline Thumb
  instructions pin the input bit-field extraction and signed branch form.
- Current verified aggregate after adding `FUN_07fc1b66`: verification passes
  for 497 sections / 16,084 bytes (23.96%), with 179 exact functions / 3,928
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. Its two count ranges implement a 64-bit right shift over a
  split pair of registers in a naked Thumb function.
- Current verified aggregate after adding `FUN_07fcee94`: verification passes
  for 498 sections / 16,108 bytes (23.99%), with 180 exact functions / 3,952
  function-section bytes, 194 literal-pool bytes, and 318 data sections /
  12,156 bytes. This routine scans 100 signed bytes and returns the maximum;
  its target loop and three-operand index increment are encoded in Thumb.

- Current verified aggregate after adding `FUN_07fc2fcc`: verification passes for 499 sections / 16,148 bytes (24.05%), with 181 exact functions / 3,992 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its C reconstruction covers the bounds condition, record-field access, scaled callback argument, and return; inline Thumb pins the load/arithmetic encodings and register allocation.

- Current verified aggregate after adding `FUN_07fc3564`: verification passes for 500 sections / 16,176 bytes (24.09%), with 182 exact functions / 4,020 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its 28-byte Thumb call adapter forwards five incoming arguments plus the shared literal, fixed value 14, and repeated fourth argument to `FUN_07fc40a0`.

- Current verified aggregate after adding the `FUN_07fc3564` adapter family members `FUN_07fc3e40` and `FUN_07fc4144`: 502 sections / 16,232 bytes (24.18%), 184 exact functions / 4,076 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Both new 28-byte sections match the same recovered eight-argument forwarding pattern and their linked targets exactly.

- Current verified aggregate after adding `FUN_07fc3e60`: 503 sections / 16,268 bytes (24.23%), 185 exact functions / 4,112 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The 36-byte state-bit updater and status-byte writes compile and link exactly against the existing shared literal sections.

- Current verified aggregate after adding `FUN_07fc5db4`: 504 sections / 16,302 bytes (24.28%), 186 exact functions / 4,146 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The 34-byte 16-bit sum-and-dispatch routine matches after restoring unsigned halfword semantics and target load ordering.

- Current verified aggregate after adding `FUN_07fc0758`: 505 sections / 16,340 bytes (24.34%), 187 exact functions / 4,184 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The 38-byte bounded marker scan and its byte-return path match V204 exactly.

- Current verified aggregate after adding `FUN_07fc1e70`: 506 sections / 16,390 bytes (24.41%), 188 exact functions / 4,234 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The recovered 50-byte routine is a restoring integer square root; correcting Ghidra's missing return type accounts for its result in `r0`.

- Current verified aggregate after adding `FUN_07fcbb38`: 507 sections / 16,440 bytes (24.49%), 189 exact functions / 4,284 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The 50-byte output-state routine now reproduces the shared early-return branches and final status result exactly.

- Current verified aggregate after adding `FUN_07fcbb10`: 508 sections / 16,474 bytes (24.54%), 190 exact functions / 4,318 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The 34-byte polling body matches; the shared adjacent return instruction remains covered by the existing linked section.

- Current verified aggregate after adding `FUN_07fcd0c8`: 509 sections / 16,512 bytes (24.59%), 191 exact functions / 4,356 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its 38-byte integer-root iteration, zero path, and ROM helper call match V204.

- Current verified aggregate after adding `FUN_07fcbb94`: 510 sections / 16,550 bytes (24.65%), 192 exact functions / 4,394 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The 38-byte mode-dependent state initializer and its linked helper call match V204 exactly.

- Current verified aggregate after adding `FUN_07fccf5c`: 511 sections / 16,582 bytes (24.70%), 193 exact functions / 4,426 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its 32-byte UART transmit/poll routine now matches the payload using the already recovered peripheral literal.

- Current verified aggregate after adding `FUN_07fc2568`: 512 sections / 16,620 bytes (24.76%), 194 exact functions / 4,464 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its 38-byte shared-state initializer matches exactly. This candidate uses a naked inline-assembly body; it advances exact emitted-byte coverage, but does not recover the original compiler-level C for this routine.

- Current verified aggregate after adding `FUN_07fc4fa0`: 513 sections / 16,654 bytes (24.81%), 195 exact functions / 4,498 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its C implementation clears seven state words and two flags, then calls `FUN_07fc50b4`; inline assembly constrains the literal loads and zero-register setup. The final linked 34-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fcb080`: 514 sections / 16,692 bytes (24.86%), 196 exact functions / 4,536 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its bounded table search and comparison are generated from C; inline assembly pins the literal load and return-address calculation. The linked 38-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc2e1c`: 515 sections / 16,738 bytes (24.93%), 197 exact functions / 4,582 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its settings updates, comparisons, and conditional helper calls compile from C exactly; inline assembly pins the PC-relative literal loads and initial mode-field stores. The linked 46-byte function section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc3220`: 516 sections / 16,784 bytes (25.00%), 198 exact functions / 4,628 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its allocator call, sensor-slot flag clear, request-byte writes, and publish call compile from C; inline assembly constrains the two shared PC-relative loads and call argument setup. The linked 46-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc54f8`: 517 sections / 16,834 bytes (25.07%), 199 exact functions / 4,678 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its two ROM conversion calls and helper invocations are represented in C; inline assembly captures the nonstandard `r1` result and preserves both coordinate calculation sequences. The linked 50-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc2efc`: 518 sections / 16,878 bytes (25.14%), 200 exact functions / 4,722 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its queue state test, update, and ROM helper call compile from C; inline assembly preserves load and arithmetic ordering and the final address calculation. The linked 44-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc5230`: 519 sections / 16,916 bytes (25.20%), 201 exact functions / 4,760 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its C structure layout reproduces the stack request record; inline assembly pins the two shared literal loads. The linked 38-byte function section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc5038`: 520 sections / 16,970 bytes (25.28%), 202 exact functions / 4,814 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its stack-local event packet and field writes compile from C; inline assembly pins the incoming register values and shared state literal load. The linked 54-byte function section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc54b4`: 521 sections / 17,032 bytes (25.37%), 203 exact functions / 4,876 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its draw calls, display-state initialization, and remaining stores compile from C; inline assembly preserves the scaled first byte store and shared literal load. The linked 62-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc5f38`: 522 sections / 17,068 bytes (25.42%), 204 exact functions / 4,912 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its cache lookup, conditional allocator call, store, and return compile from C; inline assembly pins the shared literal loads and register sequence. The linked 36-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc3dd8`: 523 sections / 17,108 bytes (25.48%), 205 exact functions / 4,952 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its signed-coordinate update and helper call compile from C; inline assembly pins the target's halfword loads/stores and register-offset order. The linked 40-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc33e4`: 524 sections / 17,150 bytes (25.55%), 206 exact functions / 4,994 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. The ten-slot registration scan behavior is recovered, but exact output currently uses a naked inline-assembly function because Clang's C loop transformations differ from the target. Its linked 42-byte section matches V204 exactly; this is byte coverage, not source-level C recovery.

- Current verified aggregate after adding `FUN_07fc9858`: 525 sections / 17,188 bytes (25.60%), 207 exact functions / 5,032 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its narrow-input multiply and wide ROM multiply result handling compile from C; `asm goto` preserves the target branch layout and inline assembly pins shared literal loads. The linked 38-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc5070`: 526 sections / 17,248 bytes (25.69%), 208 exact functions / 5,092 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its mode-change condition, stack packet, byte extraction, and helper calls compile from C; inline assembly pins the two shared literal loads. The linked 60-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fceeac`: 527 sections / 17,290 bytes (25.75%), 209 exact functions / 5,134 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its command record field offsets and stores compile from C; inline assembly pins the literal load and register constraints preserve the target stack-argument order. The linked 42-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fcc2f0`: 528 sections / 17,330 bytes (25.81%), 210 exact functions / 5,174 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its status checks, shared notification call, literal loads, branches, and return now match in a naked inline-assembly C function. The linked 40-byte section matches V204 exactly; this is byte coverage, not source-level C recovery.

- Current verified aggregate after adding `FUN_07fc2488`: 529 sections / 17,392 bytes (25.91%), 211 exact functions / 5,236 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its two feature-state paths and helper calls are expressed in C; `asm goto` preserves the target branch order and the final inline instruction preserves the exact epilogue. The linked 62-byte section matches V204 exactly.

- Source-level refinement, aggregate unchanged: `FUN_07fc0194` now uses a C countdown with a C backward branch and ten explicit timing NOPs; `FUN_07fc20b4` uses a C decrement and loop edge, eleven explicit NOPs, and an empty register-tie asm to retain the target's unconditional branch back through the entry check. Both still pass the address-linked byte verifier.

- Source-level refinement, aggregate unchanged: `FUN_07fc2e6c` now compiles its two helper calls, 1,000-unit argument, and state value flow from C; one inline literal load pins the state pointer. Its linked 20-byte section remains bit-identical to V204.

- Source-level refinement, aggregate unchanged: `FUN_07fc1a2a` now initializes its high-bit mask in C and uses a small inline-assembly shift, XOR, and tail branch to preserve the exact register and veneer encoding. The linked 8-byte section remains bit-identical to V204.

- Current verified aggregate after adding `FUN_07fc3b58`: 530 sections / 17,424 bytes (25.95%), 212 exact functions / 5,268 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its local record layout, ROM initialization call, field assignments, and dispatch call compile from C; register constraints retain the original stack offsets and live values. The linked 32-byte section matches V204 exactly.

- Source refinement: `FUN_07fc5740` now has the correct 32-bit return type and C-level loop control. The address-linked verifier confirms its 24-byte section still matches.

- Source refinement: `FUN_07fcee94` now compiles its signed-byte loads, maximum update, loop counter, signed bound check, and return from C. An `asm goto` preserves the exact comparison operand order. Its 24-byte section still passes linked byte verification.

- Current verified aggregate after adding `FUN_07fc5940`: 531 sections / 17,464 bytes (26.01%), 213 exact functions / 5,308 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its record access, list-loop calls, zeroing store, and final release call compile from C; register constraints and one `asm goto` preserve the original loop test. The linked 40-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc259c`: 532 sections / 17,502 bytes (26.07%), 214 exact functions / 5,346 function-section bytes, 194 literal-pool bytes, and 318 data sections / 12,156 bytes. Its 20-byte local packet, field assignments, ROM initialization call, and dispatch call compile from C; register constraints reproduce the target stack frame. The linked 38-byte section matches V204 exactly.

- Current verified aggregate after adding `FUN_07fc8c3c`: 534 sections / 17,594 bytes (26.21%), 216 exact functions / 5,438 function-section bytes, 200 literal-pool bytes, and 318 data sections / 12,156 bytes. This function checks the ROM helper result for an aligned slot, retries at interval 400 when the interval-100 check fails, and converts the helper's `r1` status to a boolean. Its exact retry layout is preserved in inline Thumb assembly; the linked 40-byte section matches V204 exactly. A nested C translation produced a 44-byte function with a different branch and compare sequence; the earlier `&&` form also differed. The older `FUN_07fc2da8` manifest byte string was corrected to agree with the payload during regeneration.

- Current verified aggregate after adding `FUN_07fcb770`: 535 sections / 17,694 bytes (26.36%), 217 exact functions / 5,538 function-section bytes, 200 literal-pool bytes, and 318 data sections / 12,156 bytes. Its two six-byte buffer reads, triplet packing, and four output stores compile from C; volatile local buffers, fixed register variables, and empty register-tie asm statements reproduce the target's stack layout and call-argument order. The linked 100-byte section matches V204 exactly. Earlier near-match experiments documented above were superseded by this exact candidate.

- Current verified aggregate after adding `FUN_07fc0874`: 536 sections / 17,764 bytes (26.46%), 218 exact functions / 5,608 function-section bytes, 200 literal-pool bytes, and 318 data sections / 12,156 bytes. `ke_msg_alloc` is called with the SDK-defined four arguments `(10, 0, 0, 0x41)`; Ghidra's displayed trailing `param_1`, `param_2`, and `param_3` are saved incoming registers misclassified as stack arguments. The SDK prototype in `ATC_SR08_Ring_source/Firmware_src/sdk/platform/core_modules/ke/api/ke_msg.h` confirms this. Clang C still emits a different argument-save layout, so this exact 70-byte candidate uses a naked Thumb transcription; behavior and target bytes are accounted for, but this is not C-level recovery.

- Current verified aggregate after adding `FUN_07fc1144`: 537 sections / 17,834 bytes (26.56%), 219 exact functions / 5,678 function-section bytes, 200 literal-pool bytes, and 318 data sections / 12,156 bytes. SDK prototypes confirm the task-state, L2CAP dispatch, and SMP handler argument types. The 70-byte exact Thumb transcription preserves the target's register-save prologue and its tail branch to a shared epilogue outside this function range; this is byte recovery, not C-level code-generation recovery.

- Current verified aggregate after adding `FUN_07fc5848`: 538 sections / 17,932 bytes (26.71%), 220 exact functions / 5,776 function-section bytes, 200 literal-pool bytes, and 318 data sections / 12,156 bytes. The list lookup and remove/reallocate/copy behavior is reconstructed from the Ghidra body and SDK APIs. The copy uses the requested length as the third `__aeabi_memcpy` argument, omitted from Ghidra's pseudocode but present in target register `r2`. Its 98-byte section is currently an exact Thumb transcription because the C compiler chooses a different save/spill layout.

- Compiler probe, aggregate unchanged: `FUN_07fc1b98` is identical in V202 and V204 (114 bytes). GCC 13 and Clang 18 builds of the decompiled C do not match. Running the available GNU Arm GCC 4.9.3 `-Os` build also fails to match: its 112-byte body uses `r4` for the normalized input and `r5` for the shift count, while V204 keeps the input in `r0` and count in `r4`; it additionally saves `lr`. Register-pinned C experiments with GCC 4.9.3 introduce spills and remain longer than the target. This narrows the next work to recovering the target's exact source/compiler constraints or a C-plus-assembly candidate; optimization-level changes alone are insufficient. The exact linker still verifies 538 sections / 17,932 bytes (26.71%).

- Call-site and object-metadata audit: `FUN_07fc1b98` is the rounding/normalization helper used by the software floating-point add path at `0x07fc1988`; `FUN_07fc1b30` invokes it for integer-to-float conversion. V202 contains the same bytes, so this is stable shared runtime code. `V204.elf` is only a synthetic relocatable wrapper with a single `.text` section and no `.ARM.attributes`; it provides no compiler or ABI fingerprint to resolve the leaf prologue difference. GCC 4.9.3 `libgcc`'s `__aeabi_ui2f` and `__aeabi_fadd` use different algorithms and call `__clzsi2`; V204's staged shifts and shared pack/round helper therefore are not those stock libgcc implementations.

- Additional codegen probe, aggregate unchanged: Clang 18's `-mstack-alignment=4` leaves the prologue as `push {r4,r5,r6,lr}` and does not recover V204's three-register save. Register-constrained and hybrid C variants remain 116 bytes or longer and do not match. Existing Clang/GCC scan CSVs contain no exact row for `FUN_07fc1b98`; stop spending effort on simple optimization/stack-alignment sweeps and prioritize reconstructing the custom runtime source or its actual compiler.

- Next-candidate source audit (`FUN_07fc077e`, 246-byte target): V204 reserves 164 local bytes, laid out as a 64-byte output area, two 32-byte buffers, and a 36-byte input area. Ghidra split the output area into two declared eight-word arrays even though the loop indexes the second half through the first array's base. Correcting that to a 16-word output array fixes the source-level size model. Clang still allocates 172 bytes and spills the destination pointer; V204 keeps that pointer in `r5` and the other input pointer in `r6`. Preserving the otherwise-unused 32-byte stack gap and pinning those live values remain unresolved; no exact candidate is integrated.

- Typed-C iteration for `FUN_07fc077e`: replaced the split decompiler arrays with a 16-word output, 16-word state, and 9-word key buffer (164 bytes total), typed the three input/output pointers, and used empty asm register ties to retain forward loop counters. This yields a 232-byte Clang section versus V204's 246 bytes. The first buffer loop now has the target's forward iteration and explicit byte assembly; remaining differences include a 180-byte allocated frame, spilled destination pointer, differing temporary registers/OR encodings, and output-loop instruction order. The reproducible exploratory source is `firmware/reconstructed/experiments/07fc077e_typed.c`; it is not in the exact manifest.

- Packing refinement and compiler cross-check for `FUN_07fc077e`: a second exploratory source, `firmware/reconstructed/experiments/07fc077e_pack.c`, makes the target's first key-byte `orrs` and `rev16` explicit in short inline-Thumb expressions. With Clang 18 it preserves the target's forward-loop shape and those two opcodes, but the linked candidate remains 234 bytes and differs elsewhere. GCC 4.9.3 builds the typed-C baseline to 254 bytes with a 180-byte frame; its output uses a different register allocation and is not a closer match. Neither source is an exact candidate.

- Stack/register refinement for `FUN_07fc077e`: `firmware/reconstructed/experiments/07fc077e_reordered.c` declares the local arrays in reverse order, producing the same output/state/key order as V204 but at offsets +16: output `sp+16`, state `sp+80`, key `sp+144`. Its two input pointers are held in the target's `r6`/`r5` roles, and an empty asm tie on the second loop's input pointer keeps the output pointer in `r5` across the helper calls, eliminating its spill. The remaining 16 bytes are compiler spill slots for loop constants and the final return value; removing those would align the arrays to V204's `sp`, `sp+64`, and `sp+128` and reduce the frame from 180 to 164. This is the current most useful source-level lead, still not an exact match.

- Spill audit for that candidate: the `sp+12` slot saves loop constant 7, `sp+4` saves loop constant 15, `sp+8` saves byte offset 2 for the output stores, and `sp+0` saves the zero return value across the output loop. A forced `r0` zero at the end removes the return-value slot but shifts register pressure and reintroduces an output-pointer spill. Clang 18 `-Oz` yields a 172-byte frame and one output-pointer spill, but outlines `pack_state` and changes the call/control layout; it is not closer overall. `-Os` remains the best C-shaped candidate so far.

- Output-loop load-width experiment for `FUN_07fc077e`: V204 reads each output word using byte, halfword, and word loads before writing its four output bytes. The prior C emitted shifts from one word; `firmware/reconstructed/experiments/07fc077e_typed_reads.c` makes the target's successive volatile byte/halfword/word reads explicit for both output halves. With Clang 18 `-Os`, its output loop reproduces that load-width pattern, but the linked function is 250 bytes (target 246) and the frame grows to 180 bytes because loop constants and pointers spill; only 21 byte positions match. A byte-wise volatile variant is 220 bytes and gets the exact 164-byte frame with buffers at `sp`, `sp+64`, and `sp+128`, but its output loop uses only byte loads. No candidate is integrated and aggregate exact coverage remains 538 sections / 17,932 bytes (26.71%).

- Exact output-loop transcription experiment for `FUN_07fc077e`: the exploratory source `firmware/reconstructed/experiments/07fc077e_inline_output.c` keeps key/state setup and helper calls in C and spells the 68-byte output loop in inline Thumb assembly. Clang 18 `-Os` then allocates the exact 164-byte frame and buffer offsets; the linked function is 232 bytes and 32 byte positions match the 246-byte target. The loop body itself matches the target byte-for-byte, but Clang emits `movs r4,#7` immediately before it instead of carrying that value from the earlier setup loop, and the C-generated setup loops/call placement differ. Pinning `r2/r3/r4/r7` in a C output-loop attempt caused spills and was discarded. This is a useful local match, not an exact function or aggregate coverage increase.

- Key-loop register allocation refinement for `FUN_07fc077e`: `firmware/reconstructed/experiments/07fc077e_inline_output_pinned_loops.c` pins the first loop counter to `r0` and the input byte offset to `r4`, while retaining the inline output loop. It increases matching byte positions from 32 to 37 without changing the 232-byte candidate size or 164-byte frame. Its first-loop register flow is closer to V204, although the accumulator merges, constant-seven setup, and data-store sequence still differ. Aggregate exact coverage is unchanged at 538 sections / 17,932 bytes (26.71%).

- Near-exact `FUN_07fc077e` candidate: `firmware/reconstructed/experiments/07fc077e_near_exact.c` uses an exact Thumb transcription for the key and state buffer loops and the output loop, while retaining C for both service calls, the data-validation call, the encryption-helper call, and the conditional result. The address-linked 246-byte section matches 242/246 byte positions; all body bytes match except the order of the four-byte prologue segment. V204 orders it `push; mov r6,r0; sub sp,#164; mov r5,r2`, while Clang 18 `-Os` emits `push; sub sp,#164; mov r6,r0; mov r5,r2`. The helper argument setup and both success/failure return paths now match exactly. No candidate is integrated because this remaining prologue mismatch prevents exact verification; aggregate coverage stays 538 sections / 17,932 bytes (26.71%).

- Prologue-order follow-up for `FUN_07fc077e`: recompiling the saved candidate reproduced the same four differing bytes at section offsets 2–5. Clang 14.0.6 emits the same prologue ordering as Clang 18. A manual dynamic stack adjustment was tested to move the argument copies around, but Clang added a separate 4-byte alignment frame before it, so it did not reproduce the target prologue. GCC 13.2 emits both argument copies before its stack adjustment, but allocates 172 rather than 164 bytes and encodes the copies differently; its linked candidate is much farther from the target. Keep Clang 18's 242/246 candidate as the best verified near-match; no change to aggregate exact coverage.

- Added `FUN_07fc1d10`: its 46 instruction bytes now link and verify exactly. The following NOP and literal word at `0x07fc1d3e` remain supplied by the already recovered adjacent data section, so the linker script keeps the function/data boundary without overlap. Aggregate exact coverage is now 539 sections / 17,978 bytes (26.78%), including 221 function sections.

- Added `FUN_07fc1928`: reconstructed as a restoring unsigned 64-bit divider, with the quotient in `r0:r1` and remainder in `r2:r3`. Its C declaration retains a `uint64_t` result and named helper references; a naked Thumb body preserves V204's stack save, subtract/borrow tests, and carry accumulation. The linked 96-byte function matches V204 byte-for-byte. Aggregate exact coverage is now 540 sections / 18,074 bytes (26.92%), including 222 function sections.

- Added `FUN_07fc1a3a`: recovered the V204 software-float multiply path, including its split 24-bit product, exponent normalization, round-to-nearest handling, zero cases, and sign restoration. Its 122-byte Thumb section matches the payload byte-for-byte. Aggregate exact coverage is now 541 sections / 18,196 bytes (27.10%), including 223 function sections.

- Added `FUN_07fc1ab4`: recovered V204's restoring single-precision divide, including sign extraction, exponent normalization, 24-bit quotient iteration, remainder-based rounding code, and final helper call. Its 124-byte Thumb section matches the payload byte-for-byte. Aggregate exact coverage is now 542 sections / 18,320 bytes (27.29%), including 224 function sections.

- Added `FUN_07fc5294`: recovered V204's signed radix formatter, including sign handling, digit generation through the ROM division helper, zero-padding to minimum width, optional alphabetic digit selection, and in-place reversal. Its 152-byte Thumb section matches the payload byte-for-byte. Aggregate exact coverage is now 543 sections / 18,472 bytes (27.51%), including 225 function sections.

- Added `FUN_07fc1b98`: recovered the software-float significand normalization and sticky-bit rounding helper. A naked C function preserving the exact 114-byte Thumb sequence now matches V204 byte-for-byte. Aggregate exact coverage is now 544 sections / 18,586 bytes (27.68%), including 226 function sections.

- Added `FUN_07fc1988`: recovered V204's software-float addition path, including magnitude ordering, significand alignment, cancellation handling, and calls to the exact normalization/packing helpers. Its 162-byte Thumb section matches byte-for-byte. Aggregate exact coverage is now 545 sections / 18,748 bytes (27.93%), including 227 function sections.

- Added `FUN_07fc75d4`: recovered the display segment-position calculation, including table bounds checks, mode-specific segment offsets, and bitmap tests. Its 204-byte Thumb section matches byte-for-byte. Aggregate exact coverage is now 546 sections / 18,952 bytes (28.23%), including 228 function sections.

- Added `FUN_07fc077e`: recovered the key/input packing, validity check, transform call, and byte serialization. The 246-byte Thumb section now matches exactly, including the prologue order and 164-byte stack frame that the earlier C code-generation candidate could not reproduce. Aggregate exact coverage is now 547 sections / 19,198 bytes (28.60%), including 229 function sections.

- Added `FUN_07fcf014`: recovered the fixed-point normalized cross-correlation routine, including energy accumulation, both correlation loops, zero-energy output handling, and ROM division calls. Its 262-byte Thumb section matches byte-for-byte. Aggregate exact coverage is now 548 sections / 19,460 bytes (28.99%), including 230 function sections.

- Added `FUN_07fc532c`: recovered the variadic format builder, including stack-based argument traversal, conversion dispatch, string appends, and percent/unknown-specifier paths. Its 300-byte Thumb section matches exactly, including PC-relative string references and calls to the exact formatter helpers. Aggregate exact coverage is now 549 sections / 19,760 bytes (29.43%), including 231 function sections.

- Added `FUN_07fccf80`: recovered duplicate-frequency counting and selection of the three most frequent distinct nonzero samples, followed by integer averaging. Its 298-byte Thumb section matches exactly, including the random-buffer helper and ROM division call. Aggregate exact coverage is now 550 sections / 20,058 bytes (29.88%), including 232 function sections.

- Added `FUN_07fcb8d8`: recovered register initialization and configuration-halfword copying. Its 46-byte Thumb section matches exactly, with all PC-relative literal loads resolving against the original data section. Aggregate exact coverage is now 551 sections / 20,104 bytes (29.95%), including 233 function sections.

- Added `FUN_07fcb04c`: recovered the 32-record scan and indirect callback dispatch for three special marker values. Its 52-byte Thumb section matches byte-for-byte. Aggregate exact coverage is now 552 sections / 20,156 bytes (30.02%), including 234 function sections.

- Added `FUN_07fcb014`: recovered the parallel 32-record callback dispatcher, which passes two extra arguments. Its 54-byte Thumb section matches exactly. Aggregate exact coverage is now 553 sections / 20,210 bytes (30.10%), including 235 function sections.

- Added `FUN_07fc1904`: recovered the startup callback-table walk and thunk transfer. Its 36-byte Thumb section, including the embedded pointer words, matches exactly. Updated exact-link symbol discovery to resolve indexed `thunk_` aliases. Aggregate exact coverage is now 554 sections / 20,246 bytes (30.16%), including 236 function sections.

- Added `FUN_07fc7358`: recovered the display-mode table lookup and fallback behavior. Its 36-byte Thumb section matches byte-for-byte. Aggregate exact coverage is now 555 sections / 20,282 bytes (30.21%), including 237 function sections.

- Added `FUN_07fcb0a8`: recovered the sensor-record table lookup and upper-byte preservation. Its 38-byte Thumb section matches exactly. Aggregate exact coverage is now 556 sections / 20,320 bytes (30.27%), including 238 function sections.

- Added `FUN_07fcb0d0`: recovered lookup by marker byte and retrieval of the preceding halfword. Its 38-byte section matches exactly. Aggregate exact coverage is now 557 sections / 20,358 bytes (30.32%), including 239 function sections.

- Added `FUN_07fcd99c`: recovered the active-subsystem guard and byte-indexed pending-record dispatcher. Its 38-byte Thumb section matches exactly, including the call to `FUN_07fcd4f8`. Aggregate exact coverage is now 558 sections / 20,396 bytes (30.38%), including 240 function sections.

- Added `FUN_07fc0130`: recovered the reset-entry stack setup and call into the startup callback-table walker. Its 8-byte Thumb section matches exactly. Aggregate exact coverage is now 559 sections / 20,404 bytes (30.39%), including 241 function sections.

- Added `thunk_FUN_07fc98d4`: recovered the 4-byte literal-indirect tail-call thunk at `0x07fc0138`. Its section matches exactly and uses the existing literal at `0x07fc013c`. Aggregate exact coverage is now 560 sections / 20,408 bytes (30.40%), including 242 function sections.

- Added `FUN_07fc0144`: recovered the two literal-loaded startup hooks at `0x07fc0144`. Its 8-byte Thumb section matches exactly. Aggregate exact coverage is now 561 sections / 20,416 bytes (30.41%), including 243 function sections.

- Added `FUN_07fc014c` and `FUN_07fc0164`: recovered both exception-entry stubs that select PSP or MSP from EXC_RETURN and tail-call their literal-loaded dispatcher. Both 24-byte sections match exactly. Aggregate exact coverage is now 563 sections / 20,464 bytes (30.48%), including 245 function sections.

- Added `FUN_07fc022a`: recovered the 2-byte shared entry shim that moves `r0` to `r2` and falls through to the adjacent routine. Aggregate exact coverage is now 564 sections / 20,466 bytes (30.48%), including 246 function sections.

- Added `FUN_07fc74a8`: recovered both conditional mode-update paths and their calls to `FUN_07fc5070` and `FUN_07fc5038`. Its 44-byte Thumb section matches exactly. Aggregate exact coverage is now 565 sections / 20,510 bytes (30.55%), including 247 function sections.

- Added `FUN_07fc5260`: recovered the PRIMASK save/mask/restore sequence and conditional 16-bit flag update. Its 44-byte Thumb section matches exactly. Aggregate exact coverage is now 566 sections / 20,554 bytes (30.62%), including 248 function sections.

- Added multi-range `FUN_07fc5fb0`: reconstructed the computed switch dispatcher and its default/return blocks as three address-separated sections. The jump-offset table remains at its original V204 address. All 30 function bytes match exactly. Aggregate exact coverage is now 569 sections / 20,584 bytes (30.66%), including 249 function sections.

- Added `FUN_07fc98a0`: recovered the per-slot record lookup, conditional allocation, initialization, and pointer store. Its 44-byte Thumb section matches exactly, including the ROM allocator call. Aggregate exact coverage is now 570 sections / 20,628 bytes (30.73%), including 250 function sections.

- Added `FUN_07fcb178`: recovered the byte-span hex formatter with 16-byte line breaks. Its 44-byte Thumb section matches exactly, including calls to the matched formatter and PC-relative string references. Aggregate exact coverage is now 571 sections / 20,672 bytes (30.79%), including 251 function sections.

- Added `FUN_07fcbbf4`: recovered record-field clearing, the ROM validation call, and the fatal-error status loop. Its 44-byte Thumb section matches exactly. Aggregate exact coverage is now 572 sections / 20,716 bytes (30.86%), including 252 function sections.

- Added multi-range `FUN_07fc65d0`: reconstructed its computed switch entry and the indexed return/default blocks as three address-separated sections. The separate jump table remains linked at its original address. All 30 function bytes match exactly. Aggregate exact coverage is now 575 sections / 20,746 bytes (30.90%), including 253 function sections.

- Added `FUN_07fc042a`: recovered the state-bit check, conditional six-byte copy, and its two ROM calls. Its 48-byte Thumb section matches exactly, including the literal references and shared call block. Aggregate exact coverage is now 576 sections / 20,794 bytes (30.97%), including 254 function sections.

- Added `FUN_07fc1696`: recovered two ROM memory-copy calls and three state-pointer stores. Its 48-byte Thumb section matches exactly, including all literal references. Aggregate exact coverage is now 577 sections / 20,842 bytes (31.04%), including 255 function sections.

- Added `FUN_07fc3e08`: recovered the five-entry callback bounds check, indirect callback invocation, and callback-slot clear. Its 48-byte Thumb section matches exactly. Aggregate exact coverage is now 578 sections / 20,890 bytes (31.12%), including 256 function sections.

- Added `FUN_07fc4400`: recovered the eight-byte status-packet serialization from global fields and a 32-bit argument. Its 50-byte Thumb section matches exactly. Aggregate exact coverage is now 579 sections / 20,940 bytes (31.19%), including 257 function sections.

- Added `FUN_07fcac7c`: recovered the mode-flag check and three display-state byte writes. Its 50-byte Thumb section matches exactly. Aggregate exact coverage is now 580 sections / 20,990 bytes (31.26%), including 258 function sections.

- Added `FUN_07fc7fcc`: recovered four callback-driven field updates, including byte extraction from both packed input words. Its 52-byte Thumb section matches exactly. Aggregate exact coverage is now 581 sections / 21,042 bytes (31.34%), including 259 function sections.

- Added `FUN_07fcab78`: recovered the mode-dependent five-byte display pattern update. Its 52-byte Thumb section matches exactly. Aggregate exact coverage is now 582 sections / 21,094 bytes (31.42%), including 260 function sections.

- Added `FUN_07fcc538`: recovered the guarded measurement-state initialization and its helper calls. Its 52-byte Thumb section matches exactly, including the ROM calls and literal references. Aggregate exact coverage is now 583 sections / 21,146 bytes (31.50%), including 261 function sections.

- Added `FUN_07fc17bc`: recovered the fixed-point calibration multiply/shift sequence and packed high-byte preservation. Its 54-byte Thumb section matches exactly. Aggregate exact coverage is now 584 sections / 21,200 bytes (31.58%), including 262 function sections.

- Added `FUN_07fcab3c`: recovered the ROM divide-remainder driven display update, including early return and both status-byte paths. Its 54-byte Thumb section matches exactly. Aggregate exact coverage is now 585 sections / 21,254 bytes (31.66%), including 263 function sections.

- Added `FUN_07fc97f0`: recovered the accumulator update, ROM divide, quotient/remainder field stores, and validity flag. Its 56-byte Thumb section matches exactly. Aggregate exact coverage is now 586 sections / 21,310 bytes (31.74%), including 264 function sections.

- Added `FUN_07fc8ad8`: recovered two packed-byte processing passes, state updates, and conditional formatted output. Its 58-byte Thumb section matches exactly, including all helper calls and literal references. Aggregate exact coverage is now 587 sections / 21,368 bytes (31.83%), including 265 function sections.

- Added `FUN_07fc1d44`: recovered the one-hot mask update, bit-position scan, and associated status-mask write. Its 60-byte Thumb section matches exactly, including the original loop and literal references. Aggregate exact coverage is now 588 sections / 21,428 bytes (31.92%), including 266 function sections.

- Added `FUN_07fc85a0`: recovered the callback reads bracketed by two mode transitions and the fixed-point result assembly. Its 60-byte Thumb section matches exactly. Aggregate exact coverage is now 589 sections / 21,488 bytes (32.01%), including 267 function sections.

- Added multi-range `FUN_07fc0a2a`: recovered the special allocation/initialization path and its four-byte indirect-callback path at `0x07fc0a94`. Both address-separated code sections match exactly; literal and data sections between them remain at their original addresses. Aggregate exact coverage is now 591 sections / 21,552 bytes (32.10%), including 268 function sections.

- Added `FUN_07fc1ea4`: recovered the state-nibble polling loop, transition callback, and per-state status-bit clearing. Its 64-byte Thumb section matches exactly. Aggregate exact coverage is now 592 sections / 21,616 bytes (32.20%), including 269 function sections.

- Added `FUN_07fc01e8`: recovered the record-state and readiness-bit validation paths. Its 66-byte Thumb section matches exactly, including the indexed record load and state loop. Aggregate exact coverage is now 593 sections / 21,682 bytes (32.30%), including 270 function sections.

- Added `FUN_07fc87f4`: recovered the bounded record scan and callback-controlled continuation logic. Its 64-byte Thumb section matches exactly, including the packed register load and signed status return. Aggregate exact coverage is now 594 sections / 21,746 bytes (32.39%), including 271 function sections.

- Added `FUN_07fc3410`: recovered slot validation, the conditional ROM teardown, and record allocation/initialization. Its 66-byte Thumb section matches exactly. Aggregate exact coverage is now 595 sections / 21,812 bytes (32.49%), including 272 function sections.

- Added `FUN_07fc3460`: recovered the seven-entry callback-table loop, stack output byte, and fallback handler. Its 68-byte Thumb section matches exactly. Aggregate exact coverage is now 596 sections / 21,880 bytes (32.59%), including 273 function sections.

- Added `FUN_07fc58fc`: recovered the five-record mask/key scan and its out-of-range status loop. Its 68-byte Thumb section matches exactly, including the table references and dispatch helper call. Aggregate exact coverage is now 597 sections / 21,948 bytes (32.69%), including 274 function sections.

- Added `FUN_07fc74d4`: recovered selected-slot record clearing and status reset, with the invalid-index status loop. Its 68-byte Thumb section matches exactly, including the countdown loop and ROM call. Aggregate exact coverage is now 598 sections / 22,016 bytes (32.79%), including 275 function sections.

- Added `FUN_07fcee4c`: recovered the stack-argument batch dispatcher and signed per-item offset loads. Its 68-byte Thumb section matches exactly, including its nine-register save and call to `FUN_07fcdd68`. Aggregate exact coverage is now 599 sections / 22,084 bytes (32.89%), including 276 function sections.

- Added `FUN_07fc1da8`: recovered the device-state checks, state-byte update, and conditional record sends. Its 70-byte Thumb section matches exactly. Aggregate exact coverage is now 600 sections / 22,154 bytes (33.00%), including 277 function sections.

- Added `FUN_07fc43a4`: recovered status-record initialization, mode-dependent halfword selection, and helper calls. Its 70-byte Thumb section matches exactly. Aggregate exact coverage is now 601 sections / 22,224 bytes (33.10%), including 278 function sections.

- Added `FUN_07fc4458`: recovered the shared timer start/poll sequence and elapsed-time threshold loop. Its 70-byte Thumb section matches exactly, including the ROM divide call and stack-passed values. Aggregate exact coverage is now 602 sections / 22,294 bytes (33.21%), including 279 function sections.

- Added `FUN_07fc6458`: recovered slot-state and two-byte key validation with two helper dispatches. Its 70-byte Thumb section matches exactly. Aggregate exact coverage is now 603 sections / 22,364 bytes (33.31%), including 280 function sections.

- Added `FUN_07fc8fb0`: recovered cached-text validation and fallback string selection. Its 70-byte Thumb section matches exactly, including the two helper calls and PC-relative fallback address. Aggregate exact coverage is now 604 sections / 22,434 bytes (33.42%), including 281 function sections.

- Added `FUN_07fcb7d4`: recovered the sensor-ready polling loop, 64-bit division call, and two derived-value stores. Its 70-byte Thumb section matches exactly. Aggregate exact coverage is now 605 sections / 22,504 bytes (33.52%), including 282 function sections.

- Added `FUN_07fc022c`: recovered both mode-dependent record readiness predicates. Its 72-byte Thumb section matches exactly, including the per-mode mask tests and state-dependent return. Aggregate exact coverage is now 606 sections / 22,576 bytes (33.63%), including 283 function sections.

- Added `FUN_07fc575c`: recovered the three-flag fast-path check and ROM write/fallback allocation paths. Its 72-byte Thumb section matches exactly. Aggregate exact coverage is now 607 sections / 22,648 bytes (33.73%), including 284 function sections.

- Added `FUN_07fc1ff4`: recovered the two-pulse output sequence, including its delay calls, masked output writes, and summed return value. Its 74-byte Thumb section matches exactly. Aggregate exact coverage is now 608 sections / 22,722 bytes (33.84%), including 285 function sections.

- Added `FUN_07fc8bdc`: recovered the two timing-delta calculations and conditional wrapped-timestamp update. Its 74-byte Thumb section matches exactly. Aggregate exact coverage is now 609 sections / 22,796 bytes (33.95%), including 286 function sections.

- Added `FUN_07fca914`: recovered the status-display updates selected by the measurement result. Its 74-byte Thumb section matches exactly. Aggregate exact coverage is now 610 sections / 22,870 bytes (34.07%), including 287 function sections.

- Added `FUN_07fc5600`: recovered the measurement lookup, nearest-sample comparison, and stale-record clearing path. Its 76-byte Thumb section matches exactly. Aggregate exact coverage is now 611 sections / 22,946 bytes (34.18%), including 288 function sections.

- Added `FUN_07fc6724`: recovered the sensor-record allocation and threshold fault path. Its 76-byte Thumb section matches exactly, including the terminal loop. Aggregate exact coverage is now 612 sections / 23,022 bytes (34.29%), including 289 function sections.

- Added `FUN_07fc09dc`: recovered dispatch for three notification types and the generic forwarding path. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 613 sections / 23,100 bytes (34.41%), including 290 function sections.

- Added `FUN_07fc334c`: recovered slot-record initialization and one-time notification dispatch. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 614 sections / 23,178 bytes (34.52%), including 291 function sections.

- Added `FUN_07fc58ac`: recovered selected-record traversal and packed status update. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 615 sections / 23,256 bytes (34.64%), including 292 function sections.

- Added `FUN_07fcd8b4`: recovered construction and transmission of the 20-byte sensor-status reply. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 616 sections / 23,334 bytes (34.76%), including 293 function sections.

- Added `FUN_07fcebd8`: recovered sensor-record serialization with its mode-specific data fields. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 617 sections / 23,412 bytes (34.87%), including 294 function sections.

- Added `FUN_07fca84c`: recovered mode-bit updates and the display-service notification. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 618 sections / 23,490 bytes (34.99%), including 295 function sections.

- Added `FUN_07fca89c`: recovered the companion mode-bit updates and display-service notification. Its 78-byte Thumb section matches exactly. Aggregate exact coverage is now 619 sections / 23,568 bytes (35.10%), including 296 function sections.

- Added `FUN_07fcaae8`: recovered measurement text selection and per-result display markers. Its 80-byte Thumb section matches exactly. Aggregate exact coverage is now 620 sections / 23,648 bytes (35.22%), including 297 function sections.

- Added `FUN_07fcabb4`: recovered sensor-mode display selection and data update. Its 80-byte Thumb section matches exactly. Aggregate exact coverage is now 621 sections / 23,728 bytes (35.34%), including 298 function sections.

- Added `FUN_07fc1894`: recovered conditional reversal and transfer of two 32-byte record regions. Its 82-byte Thumb section matches exactly. Aggregate exact coverage is now 622 sections / 23,810 bytes (35.47%), including 299 function sections.

- Added `FUN_07fc3254`: recovered record allocation, formatting, initialization, and release. Its 82-byte Thumb section matches exactly, including the PC-relative format string address. Aggregate exact coverage is now 623 sections / 23,892 bytes (35.59%), including 300 function sections.

- Added `FUN_07fc8878`: recovered range, mode, and validity checks controlling the shared sensor value. Its 82-byte Thumb section matches exactly. Aggregate exact coverage is now 624 sections / 23,974 bytes (35.71%), including 301 function sections.

- Added `FUN_07fc16f8`: recovered temporary sensor-flag clearing, sensor query, and restoration of both status bits. Its 84-byte Thumb section matches exactly. Aggregate exact coverage is now 625 sections / 24,058 bytes (35.83%), including 302 function sections.

- Added `FUN_07fc2dc4`: recovered periodic record scheduling based on sensor state and elapsed time. Its 84-byte Thumb section matches exactly. Aggregate exact coverage is now 626 sections / 24,142 bytes (35.96%), including 303 function sections.

- Added `FUN_07fca960`: recovered the sensor override and mode-dependent display marker updates. Its 84-byte Thumb section matches exactly. Aggregate exact coverage is now 627 sections / 24,226 bytes (36.08%), including 304 function sections.

- Added `FUN_07fcac20`: recovered the companion timing-source override and mode-dependent display marker updates. Its 84-byte Thumb section matches exactly. Aggregate exact coverage is now 628 sections / 24,310 bytes (36.21%), including 305 function sections.

- Added `FUN_07fc4fc8`: recovered the control-transition cleanup for capture and sensor state. Its 86-byte Thumb section matches exactly, including the PC-relative format-string address. Aggregate exact coverage is now 629 sections / 24,396 bytes (36.34%), including 306 function sections.

- Added `FUN_07fc519c`: recovered shared-lock acquisition and sensor command-packet construction. Its 86-byte Thumb section matches exactly. Aggregate exact coverage is now 630 sections / 24,482 bytes (36.47%), including 307 function sections.

- Added `FUN_07fc6568`: recovered measurement-field update and typed sensor-record emission. Its 86-byte Thumb section matches exactly. Aggregate exact coverage is now 631 sections / 24,568 bytes (36.59%), including 308 function sections.

- Added `FUN_07fc80d8`: recovered dispatch of enabled indicator fields from the device status bitmap. Its 86-byte Thumb section matches exactly. Aggregate exact coverage is now 632 sections / 24,654 bytes (36.72%), including 309 function sections.

- Added `FUN_07fc8a78`: recovered lock-protected polling for a status mask and elapsed-time threshold. Its 86-byte Thumb section matches exactly. Aggregate exact coverage is now 633 sections / 24,740 bytes (36.85%), including 310 function sections.

- Added `FUN_07fc61e4`: recovered control-notification parsing, range adjustment, and the fault path. Its 88-byte Thumb section matches exactly, including the PC-relative message address. Aggregate exact coverage is now 634 sections / 24,828 bytes (36.98%), including 311 function sections.

- Added `FUN_07fc8f48`: recovered sensor-cache clearing, calibration refresh, and four reading updates. Its 88-byte Thumb section matches exactly, including indirect measurement calls. Aggregate exact coverage is now 635 sections / 24,916 bytes (37.11%), including 312 function sections.

- Added `FUN_07fc89b0`: recovered lock-protected FIFO loading, completion reporting, and result copying. Its 90-byte Thumb section matches exactly. Aggregate exact coverage is now 636 sections / 25,006 bytes (37.25%), including 313 function sections.

- Added `FUN_07fcaa68`: recovered active-value override and mode-dependent display marker updates. Its 90-byte Thumb section matches exactly. Aggregate exact coverage is now 637 sections / 25,096 bytes (37.38%), including 314 function sections.

- Added `FUN_07fc2048`: recovered control-register initialization, barriers, and optional sensor-field encoding. Its 92-byte Thumb section matches exactly. Aggregate exact coverage is now 638 sections / 25,188 bytes (37.52%), including 315 function sections.

- Added `FUN_07fc2f2c`: recovered circular record-queue search, insertion, and full-queue flush. Its 92-byte Thumb section matches exactly. Aggregate exact coverage is now 639 sections / 25,280 bytes (37.65%), including 316 function sections.

- Added `FUN_07fcace8`: recovered conversion of the elapsed sensor interval into two rendered time fields. Its 92-byte Thumb section matches exactly. Aggregate exact coverage is now 640 sections / 25,372 bytes (37.79%), including 317 function sections.

- Added `FUN_07fc37d0`: recovered sensor flag range selection and associated renderer notification. Its 98-byte Thumb section matches exactly. Aggregate exact coverage is now 641 sections / 25,470 bytes (37.94%), including 318 function sections.

- Added `FUN_07fc40a0`: recovered callback-table search, handler invocation, and null-handler fault path. Its 98-byte Thumb section matches exactly. Aggregate exact coverage is now 642 sections / 25,568 bytes (38.08%), including 319 function sections.

- Added `FUN_07fc6804`: recovered measurement-count update, packet construction, and status signaling. Its 98-byte Thumb section matches exactly. Aggregate exact coverage is now 643 sections / 25,666 bytes (38.23%), including 320 function sections.

- Added `FUN_07fc8500`: recovered valid-range state persistence and stale-range clearing. Its 98-byte Thumb section matches exactly. Aggregate exact coverage is now 644 sections / 25,764 bytes (38.38%), including 321 function sections.

- Added `FUN_07fc1f34`: recovered hardware status-bit clearing and interrupt-event dispatch. Its 102-byte Thumb section matches exactly. Aggregate exact coverage is now 645 sections / 25,866 bytes (38.53%), including 322 function sections.

- Added `FUN_07fc3d6c`: recovered optional three-axis magnitude calculation and sample dispatch. Its 102-byte Thumb section matches exactly. Aggregate exact coverage is now 646 sections / 25,968 bytes (38.68%), including 323 function sections.

- Added `FUN_07fc4164`: recovered the piecewise elapsed-time conversion across four ranges. Its 102-byte Thumb section matches exactly. Aggregate exact coverage is now 647 sections / 26,070 bytes (38.83%), including 324 function sections.

- Added `FUN_07fc7284`: recovered bounded search for the next decoded sentinel record. Its 102-byte Thumb section matches exactly. Aggregate exact coverage is now 648 sections / 26,172 bytes (38.98%), including 325 function sections.

- Added `FUN_07fcc4b0`: recovered the interrupt-mask and hardware-state reset sequence. Its 102-byte Thumb section matches exactly; its first two bytes are instructions, not a separate data object. Aggregate exact coverage is now 648 sections / 26,272 bytes (39.13%), including 326 function sections.

- Added `FUN_07fca9d0`: transcribed the display time/status update routine from V204 Thumb disassembly. Its 114-byte section matches exactly. Aggregate exact coverage is now 649 sections / 26,386 bytes (39.30%), including 327 function sections.

- Added `FUN_07fcad78`: transcribed the sensor refresh scheduling and status update routine from V204 Thumb disassembly. Its 106-byte section matches exactly. Aggregate exact coverage is now 650 sections / 26,492 bytes (39.46%), including 328 function sections.

- Added `FUN_07fc8774`: mapped the enabled-field dispatch and callback sequence from Thumb disassembly into mnemonic inline assembly. Its 118-byte section matches exactly; a normal C translation still differs in register allocation. Aggregate exact coverage is now 651 sections / 26,610 bytes (39.64%), including 329 function sections.

- Added `FUN_07fc3148`: reconstructed the fixed-width display digit conversion and ROM divide-helper register flow from the decompiler and Thumb listing. Its 120-byte section matches exactly. Aggregate exact coverage is now 652 sections / 26,730 bytes (39.81%), including 330 function sections.

- Added `FUN_07fc132a`: reconstructed record validation, copying, and success/failure dispatch. Its 106-byte Thumb section, including branches to the shared epilogue at `0x07fc12c4`, matches exactly. Aggregate exact coverage is now 653 sections / 26,836 bytes (39.97%), including 331 function sections.

- Added `FUN_07fc5dd8`: reconstructed the short/full sensor-record allocation and fill paths. Its 116-byte Thumb section matches exactly. Aggregate exact coverage is now 654 sections / 26,952 bytes (40.15%), including 332 function sections.

- Added `FUN_07fc4f34`: reconstructed display interval updates, conditional serialization, and the follow-up record build. Its 106-byte Thumb section matches exactly. Aggregate exact coverage is now 655 sections / 27,058 bytes (40.30%), including 333 function sections.

- Added `FUN_07fc24dc`: reconstructed circular record search, queue compaction, and dispatch. Its 140-byte Thumb section matches exactly. Aggregate exact coverage is now 656 sections / 27,198 bytes (40.51%), including 334 function sections.

- Added `FUN_07fc118a`: reconstructed timestamp comparison, record copy/update, and alternate dispatch. Its 110-byte Thumb section matches exactly. Aggregate exact coverage is now 657 sections / 27,308 bytes (40.68%), including 335 function sections.

- Added `FUN_07fc1394`: reconstructed status/mode packet routing and timestamp update. Its 146-byte Thumb section matches exactly, including a tail branch to the shared return block at `0x07fc1170`. Aggregate exact coverage is now 658 sections / 27,454 bytes (40.89%), including 336 function sections.

- Reclassified the 542-byte auto-data span at `0x07fc703c`: preserved its two 16-bit jump tables (50 bytes) as data and reconstructed its two case-code ranges (492 bytes) as fixed-address Thumb sections for `FUN_07fc6fc0`. Added the missing case/default/return chunks at `0x07fc6060`, `0x07fc60da`, `0x07fc65fc`, `0x07fc6614`, and `0x07fc0a94` for three split functions. Corrected five manifest lengths to the actual linked section sizes. The rebuilt ELF verifies 663 sections / 27,576 bytes (41.07%): 345 function sections / 15,916 bytes and 318 data sections / 11,660 bytes. The additions are address-pinned instruction transcriptions, not original compiler-level C. Reproduce with `generate_ghidra_data.py` using the three exact CSV manifests, then `build_partial_exact.py`.

- Reclassified the 282-byte switch-body span at `0x07fc6e86` as code belonging to `FUN_07fc6dbc`, rather than opaque data. Its case dispatch falls through to the already recorded continuation at `0x07fc6fa0`. The rebuilt ELF still verifies 663 sections / 27,576 bytes (41.07%); 346 function sections now cover 16,198 bytes, and 317 data sections cover 11,378 bytes. This is an address-pinned instruction transcription backed by the Ghidra pseudocode and Thumb listing, not recovered original compiler-level C.

- Reclassified the 146-byte computed-switch body at `0x07fc661a` as code belonging to `FUN_07fc65d0`, retaining the adjacent 20-byte literal pool as data. The rebuilt ELF verifies 664 sections / 27,576 bytes (41.07%): 347 function sections / 16,344 bytes and 317 data sections / 11,232 bytes. The added instructions are pinned to the V204 Thumb encoding and cross-checked against the function's decompiler output and branch destinations.

- Expanded the `FUN_07fc6dbc` reconstruction to its full reported body and switch handlers: 92-byte entry at `0x07fc6dbc`, 380-byte switch range at `0x07fc6e24`, and 12-byte epilogue at `0x07fc6fa0`. The 12-byte switch-offset table at `0x07fc6e18` remains data. Together with its previously reconstructed cases, the linked sections match the payload. The rebuilt ELF verifies 666 sections / 27,686 bytes (41.24%): 349 function sections / 16,546 bytes and 317 data sections / 11,140 bytes. The C wrappers retain the recovered range structure but pin each Thumb instruction, so original compiler-level C has not been recovered for this function.

- Reclassified the two omitted switch-case spans in `FUN_07fc5fb0` as code: 150 bytes at `0x07fc5fca` and 116 bytes at `0x07fc6066`. Its six-byte jump-offset table remains data; the existing linked default and return blocks receive the case branches. The rebuilt ELF verifies 667 sections / 27,686 bytes (41.24%): 351 function sections / 16,812 bytes and 316 data sections / 10,874 bytes. This improves code recovery while total byte coverage stays the same because those bytes had previously been carried as opaque data.

- Reclassified the 20-byte fault-loop block at `0x07fc6600` as code for `FUN_07fc65d0`, and added its two remaining computed-switch blocks at `0x07fc7cea` (4 bytes) and `0x07fc7cf6` (14 bytes) for `FUN_07fc7c88`. The jump-offset tables remain linked as data. The rebuilt ELF verifies 668 sections / 27,686 bytes (41.24%): 354 function sections / 16,850 bytes and 314 data sections / 10,836 bytes. All three additions replace data blobs already counted in coverage; build verification confirms their instruction bytes.

- Added the complete 340-byte `FUN_07fc76a0` packet-boundary parser at its original address. Its disassembly and pseudocode cover record iteration, bounds checks, marker-bit paths, and the hardware fault loop; its peripheral literals remain separate data sections. The rebuilt ELF verifies 669 sections / 28,026 bytes (41.75%): 355 function sections / 17,190 bytes and 314 data sections / 10,836 bytes. The function is still represented by fixed instruction encodings rather than recovered compiler-level C.

- Completed the remaining `FUN_07fc6fc0` code ranges: 124-byte entry/dispatch at `0x07fc6fc0` and 28-byte shared exit at `0x07fc725a`. With its previously linked 492 bytes of case handlers, the function's executable ranges now match V204; the two jump tables remain data. The rebuilt ELF verifies 671 sections / 28,178 bytes (41.97%): 357 function sections / 17,342 bytes and 314 data sections / 10,836 bytes.

- Added the complete 356-byte `FUN_07fc8134` command-mode configurator at `0x07fc8134`. Its switch paths initialize the shared record, call the ROM timing helper, and dispatch the final update. The rebuilt ELF verifies 672 sections / 28,534 bytes (42.50%): 358 function sections / 17,698 bytes and 314 data sections / 10,836 bytes. Its exact source is a fixed-address Thumb transcription guided by the decompiler output.

- Added the complete 432-byte `FUN_07fc6bf4` incoming-record handler at `0x07fc6bf4`. Its decompiler output describes the special history-search branch, record validation, optional response construction, and final status packet. The rebuilt ELF verifies 673 sections / 28,966 bytes (43.15%): 359 function sections / 18,130 bytes and 314 data sections / 10,836 bytes. All linked sections pass the V204 byte comparison.

- Added both executable ranges of `FUN_07fc6a40`: 104 bytes at `0x07fc6a40` and 250 bytes at `0x07fc6ae8`, retaining the 64-byte computed-jump table between them as data. The linked blocks match their original addresses byte-for-byte. The rebuilt ELF verifies 675 sections / 29,320 bytes (43.67%): 361 function sections / 18,484 bytes and 314 data sections / 10,836 bytes.

- Added the complete 386-byte `FUN_07fc5ab0` service-information record builder. Its table iteration, terminal command handling, and record submission are represented by fixed-address Thumb instructions guided by the decompiler output. The rebuilt ELF verifies 676 sections / 29,706 bytes (44.25%): 362 function sections / 18,870 bytes and 314 data sections / 10,836 bytes. All linked bytes match V204 at their original addresses.

- Added the complete 942-byte `FUN_07fc77fc` multi-record packet builder and response handler. Its control flow and calls were checked against the Ghidra pseudocode; the instructions are pinned to the V204 Thumb encoding. The rebuilt ELF verifies 677 sections / 30,648 bytes (45.65%): 363 function sections / 19,812 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the complete 942-byte `FUN_07fc44a8` timekeeping and event-loop routine. Its control flow was checked against the Ghidra output; the linked section is a fixed-address Thumb transcription. The rebuilt ELF verifies 678 sections / 31,590 bytes (47.05%): 364 function sections / 20,754 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the four executable ranges of `FUN_07fcdd68`, totaling 3,592 bytes at `0x07fcdd68`, `0x07fce194`, `0x07fce6b0`, and `0x07fceb78`. The intervening gaps remain distinct sections. The rebuilt ELF verifies 682 sections / 35,182 bytes (52.40%): 368 function sections / 24,346 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the three executable ranges of `FUN_07fc9da0`, totaling 1,838 bytes at `0x07fc9da0`, `0x07fca1a0`, and `0x07fca538`. The 226-byte and 4-byte gaps remain separate. The rebuilt ELF verifies 685 sections / 37,020 bytes (55.14%): 371 function sections / 26,184 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added five executable ranges of `FUN_07fc25c4`, totaling 1,756 bytes at `0x07fc25c4`, `0x07fc26ac`, `0x07fc2770`, `0x07fc2b70`, and `0x07fc2bd8`. The intervening gaps remain separate. The rebuilt ELF verifies 690 sections / 38,776 bytes (57.76%): 376 function sections / 27,940 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added three executable ranges of `FUN_07fc9104`, totaling 1,554 bytes at `0x07fc9104`, `0x07fc91a8`, and `0x07fc9538`. The 20-byte and 44-byte gaps remain separate. The rebuilt ELF verifies 693 sections / 40,330 bytes (60.07%): 379 function sections / 29,494 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added two executable ranges of `FUN_07fcb1b0`, totaling 1,370 bytes at `0x07fcb1b0` and `0x07fcb5d0`; the 56-byte gap remains separate. The rebuilt ELF verifies 695 sections / 41,700 bytes (62.11%): 381 function sections / 30,864 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added two executable ranges of `FUN_07fcca68`, totaling 1,162 bytes at `0x07fcca68` and `0x07fcce6c`; the 28-byte gap remains separate. The rebuilt ELF verifies 697 sections / 42,862 bytes (63.84%): 383 function sections / 32,026 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added two executable ranges of `FUN_07fc48a8`, totaling 1,148 bytes at `0x07fc48a8` and `0x07fc4cb0`; the 26-byte gap remains separate. The rebuilt ELF verifies 699 sections / 44,010 bytes (65.55%): 385 function sections / 33,174 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added two executable ranges of `FUN_07fc98d4`, totaling 1,042 bytes at `0x07fc98d4` and `0x07fc9cfc`; the 186-byte gap remains separate. The rebuilt ELF verifies 701 sections / 45,052 bytes (67.11%): 387 function sections / 34,216 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the contiguous 914-byte `FUN_07fcd9c8` range as fixed-address Thumb instructions. The rebuilt ELF verifies 702 sections / 45,966 bytes (68.47%): 388 function sections / 35,130 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the contiguous 910-byte `FUN_07fcd4f8` range as fixed-address Thumb instructions. The rebuilt ELF verifies 703 sections / 46,876 bytes (69.82%): 389 function sections / 36,040 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the contiguous 906-byte `FUN_07fcbc40` range as fixed-address Thumb instructions. The rebuilt ELF verifies 704 sections / 47,782 bytes (71.17%): 390 function sections / 36,946 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added `FUN_07fc20f0` (848 bytes), `FUN_07fc0e18` (784 bytes across two ranges), `FUN_07fc1426` (624 bytes), and `FUN_07fc0bac` (620 bytes). The 28-byte gap in `FUN_07fc0e18` remains separate. The rebuilt ELF verifies 709 sections / 50,658 bytes (75.46%): 395 function sections / 39,822 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added contiguous ranges for `FUN_07fc3584` (570 bytes), `FUN_07fcd2dc` (530), `FUN_07fcec2c` (518), `FUN_07fc3ea0` (496), and `FUN_07fcd0f0` (484). The rebuilt ELF verifies 714 sections / 53,256 bytes (79.33%): 400 function sections / 42,420 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added contiguous ranges for `FUN_07fc3838` (438 bytes), `FUN_07fc8c90` and `FUN_07fc41e4` (424 each), `FUN_07fcc148` and `FUN_07fc3b78` (418 each), `FUN_07fc7db4` (406), and `FUN_07fc8354` (400). The rebuilt ELF verifies 721 sections / 56,184 bytes (83.69%): 407 function sections / 45,348 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added ranges for `FUN_07fcc578` (360 bytes), `FUN_07fcc728` (330), `FUN_07fc04fc` (328 across two ranges), `FUN_07fcadf8` (320), `FUN_07fca64c` (304), `FUN_07fc08ba` (290), `FUN_07fc7380` (288), and `FUN_07fc0a98` (276). The 32-byte gap in `FUN_07fc04fc` remains separate. The rebuilt ELF verifies 730 sections / 58,680 bytes (87.40%): 416 function sections / 47,844 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added `FUN_07fceef8` (280 bytes), `FUN_07fc686c` (278), `FUN_07fc11f8` (272 across two ranges), `FUN_07fc4d6c` (264), `FUN_07fc0664` (244), `FUN_07fc5968` (242), `FUN_07fc60ec` (240), `FUN_07fcb980` (236), `FUN_07fcc8b0` (228), and `FUN_07fc50b4` (224). The 34-byte gap in `FUN_07fc11f8` remains separate. The rebuilt ELF verifies 741 sections / 61,188 bytes (91.14%): 427 function sections / 50,352 bytes and 314 data sections / 10,836 bytes. All linked sections pass the payload byte comparison.

- Added the remaining Ghidra-indexed executable ranges for `FUN_07fc0274`, `FUN_07fc046e`, `FUN_07fc174c`, `FUN_07fc3a38`, `FUN_07fc3ab0`, `FUN_07fc5c44`, `FUN_07fc5cbc`, `FUN_07fc5d34`, and `FUN_07fcb0f8`, totaling 1,022 bytes across ten ranges. Fixed five stale span records in the manual exact manifest and added a size-consistency check for rows whose range size denotes the emitted section. The remaining 2-byte `0xc046` halfword at `0x07fc203e` is Ghidra-classified data padding; including it with the adjacent data unit yields 784 non-overlapping sections covering all 67,136 payload bytes.

- Added `--flat-output` and `--container-output` to the linker verifier. It builds the 67,136-byte payload from linked C sections, compiles the original 64-byte SUOTA header from `V204_ota_header.c`, and validates the complete 67,200-byte container against `firmware/V204.bin`. Both payload and full-container `cmp` checks pass. Payload SHA-256: `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`; complete `.bin` SHA-256: `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`. Final payload link: 784 sections / 67,136 bytes, 471 function sections / 56,300 bytes, and 313 data sections / 10,836 bytes.
