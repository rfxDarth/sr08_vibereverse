# Alice: vendor flash driver investigation, 0x07fc3ea0

Installed source remains ASM; none of these candidates is accepted. No compiler
profile, placement rules, guard, normal source code or Jeff source changed.
Ownership is recorded in ../../../WORK_CLAIMS.md (shared reconstruction root).

Baseline copied from Alice's retained SDK/vendor candidate. Native ac6 emits
520 bytes (452 differing bytes), including its own literals, whereas OEM code
and shared pools have fixed locations. Native differences cannot be treated as
an instruction-only mismatch count. Word-table LTO cannot fit the original
candidate before fixed ER_07fc4090 (requires 0x40a4).

The inherited candidate declared spi_flash_is_busy and spi_flash_wait_till_ready
as int8_t and spi_access as uint16_t, conflicting with the reconstructed APIs.
It also had three assembler alias declarations. coherent_api uses shared
prototypes and actual exported symbol names, no __asm__ syntax. This alone
introduces truncation sites through int8_t locals/helper returns. wide_status
widens internal statuses and helper returns to int32_t, retaining the OEM final
signed-byte result conversion. Actual status sources have sign-extended values:
spi_flash_is_busy = 0/-14, wait_till_ready = 0/-1, write_enable = 0/-12 or those
errors. No new assumption is required in wide_status. An isolated
coherent_status_domain trial uses assumptions as a rejected alternative; it
is not installed and did not improve the native result.

Native conditional fences on either CS path alone increase size and cause
another selector load between initial low/high writes. The *_once variants
compute one initial mask then issue both stores, matching OEM read count.
These reduce that regression, but do not recover the complete function.
Weighted/annotation variants are also inexact; see probe_results.json and logs.

Main LTO coherent true-fence candidate overruns app_std_process_event to
0x40bc instead of 0x40a0. Main LTO wide_status gets it down to 0x40a4, a four-byte
overrun; guard rejects both. The unmodified probe normally removes temporary
link output. A diagnostic wrapper replaces TemporaryDirectory only with a
persistent nullcontext and runs the same probe, preserving output in
/tmp/sr08-alice-flash-wide-lto-debug. No validation/placement guard is bypassed.
See wide_status_main_diagnostic.log and subsequent diagnostic evidence.

## Retained main-link evidence

Both diagnostic runs finished with the placement guard rejection. Both the
inherited baseline and coherent wide-status source emit a 516-byte region,
overrunning the next function by four bytes. They are not byte-equal to each
other: see api_codegen_comparison.json. The baseline is therefore not merely
three branch diamonds away in the CURRENT module context. Do not rely on the
old near-match note without reproducing its compiler/module state.

wide_status_linked_disassembly.txt and wide_status_linked_diff.txt preserve
current wide-status output. It has buffer at sp+12 versus OEM sp+16, read
and program blocks reordered, and the final code ends at 0x4094 versus OEM
0x4090. The four local pools also shift by four; downstream code must never
be shifted to accommodate it. Baseline diagnostic directory is
/tmp/sr08-alice-flash-baseline-lto-debug. No candidate has been installed.

The SDK write-enable callee (0xbb38) has now been solved independently in Alice:
conditional fence plus annotation of the common result is native byte exact.
That conversion does not by itself solve this driver's block order or stack
layout. Its full verification is in ../flash_write_enable/.

OEM read bounds computation is scheduled after its read command/mode change,
whereas current output puts the contiguous read block earlier. Moving source
bounds checks after the command (late_bounds variants) produces byte-identical
native output to each respective baseline: the optimizer reorders it again.
Opaque size/address annotations at that point do not improve size or differing-
byte count. Individual annotations preserve the baseline output; annotating
both commutes one ADD operand order (r6,r5 becomes r5,r6). Do not repeat those
forms unchanged.

## Alice: common-return probe, next batch

common_return_a0f0 changes denied-write exits to status=255 plus shared final
signed-byte conversion, annotated after merging. Native emits 516 bytes versus
520 for wide_status. Main LTO now fits the ORIGINAL 512-byte region through
0x40a0, including all four original-position literal words. app_std_process_event
remains 0x40a0; no placement guard change. Still byte-inexact: see
common_return_verification.json, common_return_main_diagnostic.log and
common_return_linked_disassembly.txt. Compiler merges denied-path cleanup into
the common cleanup, while OEM has a separate power-down call before setting
r7=255. Stack slots, read/program placement and CS branches remain different.
The candidate is not installed; this is placement progress, not acceptance.

Adding a fence after denied-path cleanup or annotating the byte constant did
not improve native output. Combining conditional mask fences and merged mask
annotations (8 width/condition variants) also did not improve native output.
Operation hints move blocks but remain inexact; expected erase gives 512 native
bytes, still a different block layout. Do not conflate native size with LTO
placement or OEM byte equality. All probe jobs terminal. Canonical normal
source inputs still match every one of last accepted WEL build's 581 hashes.
