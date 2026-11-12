# Alice: callback synchronization and sample-result API

## Accepted prerequisite: real return values

OEM synchronizer stores R0 from the two window samplers at radio +0x3e/+0x40.
The installed sampler already correctly returns int16_t, but the shared legacy
window macro declared that sampler void, declared wrappers void and discarded
the return in C. The inherited pending synchronizer guessed uint16_t wrappers.
That is a cross-unit API mismatch, even where register leftovers happened to
produce the right bytes.

New additive shared header sr08_callback_samples.h defines int16_t sampler and
window APIs and a return-propagating window macro. Alice's two wrapper sources
use it; the sampler source also includes it to check its definition. Legacy
sr08_callback_mode_range.h is untouched for Jeff. No aliases or assembler syntax.
Both wrapper object CODE AND relocation lists are identical before/after with
the actual normal Clang18 flags (result_api_codegen.json).

Accepted standalone: 506 sections / 449 units; 68 direct / 70 expanded ASM,
six support tests pass. All 582 inputs match workspace. Source-only payload
67136 bytes and OTA container 67200 bytes directly equal OEM V204. No V20*.bin
in export. See result_api_verification.json, result_api_source_input_hashes.json,
result_api_audit.json and result_api_standalone_build.log. Artifacts stem
/tmp/sr08-alice-callback-result-standalone; export
/tmp/sr08-alice-callback-result-source-bundle. Merge all three source changes
and the new header together. Jeff files and legacy header unchanged.

## Pending synchronizer (ASM still installed)

baseline is inherited C. It reads reference/profile BEFORE the flag store;
OEM sets VALUES_DIFFER first. ordered_stores fixes that volatile access order.
*_typed sources include the real int16_t sample APIs, not local guesses. The
native result is unchanged by correcting signedness because results are stored
as halfwords. These candidates are not accepted implementations.

Native baseline has 100 differing bytes across its 160-byte region; private
pools differ and control-flow/register differences begin after 0x8606. The
compiler removes redundant settled/equality tests and booleanizes a raw
notification byte on the zero-pair path. Conditional fences, opaque final
operands, explicit equal-case merge, mode-constant lifetimes and zero-test
operand/hint variants do not yield byte parity. Some opaque candidates recover
initial R4/R5 constants and original first/second load registers, but change
other branches; no native candidate is exact. See source/log matrix and
probe_results.json. Do not infer a four-byte-only mismatch from total size.

ordered_stores_typed_main_lto.log establishes the current correct-API LTO
baseline after the prerequisite API correction. No normal compiler support,
flags, placement, guard or synchronizer source code changed (claim comment only).

## Current main LTO result

ordered_stores_typed_main_lto.log is terminal: linker rejects fixed literal
ER_07fc867c, next required address 0x8680. No successful candidate region exists
from this probe. This is a four-byte placement overflow, NOT a four-byte-only
instruction mismatch. That retained root-pointer word is also implicated in
the earlier range-validity pool ownership investigation. Do not relax the
placement guard or change its word value to force a pass. More faithful code
shape and literal ownership are both needed. Synchronizer ASM remains installed.
All jobs closed; accepted result-API snapshot's 582 inputs rechecked unchanged.

## Traced 0x867c ownership, next batch

ordered_traced_main_lto.log retains all guard retries; job ended rejected.
The only original 0x867c reader is 0x82b2, configure_radio_state_and_send_command_6a,
a main-module function. No initial fixed stub reads or covers 0x867c. The word
is pinned by _DroppedLiterals(gap) when a chained function comes four bytes
early and the gap is an original known pool. This path need not have an actual
stub reader, despite the older comment describing that usual case.

The final rejected diagnostic ELF has TWO overlapping sections at 0x867c:
- callback C region ER_07fc85e0, size160: 0x07fd1ea4 (cycle_control_state);
- retained original ER_07fc867c, size4: 0x07fd1e28 (device_control_state).
The candidate returns at 0x8674, pads at 0x8676 and has private pool words at
0x8678/0x867c. OEM returns at 0x867a and has its device-state word at 0x867c.
Thus changing/reinterpreting the pinned word cannot make this a valid build.
Section-specific extraction proof is literal_867c_collision.json; disassembly
is ordered_traced_disassembly.txt. Diagnostic dir remains in /tmp, but those
records are durable. Never flatten the overlapping diagnostic into firmware.

No linker-support change made: guards are doing their job. Native annotation/
fence variants on common settled assignments reduce some duplicated moves but
still differ; logged as annotated_settled/fenced_settled/fenced_store/
fenced_annotated_settled. Next work needs original C control-flow length and
pool sharing, or a reduced four-pool linker example; rerunning this same probe
or removing retention checks is not useful. All 582 installed inputs remain
identical to the accepted signed-result API build. No new full build claimed.
