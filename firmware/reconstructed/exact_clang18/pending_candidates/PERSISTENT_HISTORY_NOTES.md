# Alice: persistent history conversion, 2026-11-14

These are pending C reconstructions, not installed replacements. Acceptance
still requires exact code, pools, placement and full payload/container hashes.
Behavioral emulation and instruction similarity do not relax those gates.

## Sources and dependency

- `load_and_update_persistent_measurement_state_alice.c.txt`: complete routine
  covering the original 0x48a8 and 0x4cb0 fragments. Native ac6 emits 1176 bytes.
- `load_and_update_persistent_measurement_state_alice_separate.c.txt`: alternative
  with separate classifier predicates and a 32-bit flag; native emits 1152 bytes.
  Source SHA256 `71ad8f50e2d6a72f6136e354b98c8c7b2fe577977cdc4bd963e48132694d9d65`.
- `handle_record_flag_and_queue_sensor_configuration.c.txt`: native instructions
  are correct, but its pools depend on the earlier routine. Five original loads
  at 0x4b48, 0x4b6a, 0x4b7a, 0x4b82 and 0x4b8c use the shared-context word at
  0x4f28. Converting only 0x4e98 causes retained-word overlap at 0x4f28.

Probing the complete first candidate and configuration candidate in one LTO
module, absorbing 0x4cb0, removes that overlap without changing any guards.
The configuration region is then **156 bytes exactly equal to OEM**, including
its pool. The parent region remains inexact, so neither is installed. Parent
LTO output is 1220 bytes including retained tail words, not 1220 bytes of code.

## Recovered details that prevent incorrect C

The first history loop continues over **nonzero** flags. Any zero makes its
gate false; if all fifteen flags are nonzero, the gate tests only the low byte
of input word 0x6c. Other branches read the full word. Reversing this test is
detectably wrong (negative-control emulation fails case 18).

The routine reads the volatile sample history twice. Preserve both loops.
The fifteen step deltas at shared+0x5c and fifteen classifier codes at +0x6b
form a 30-byte window; clear the enclosing union, not an undersized array.
Flash records are 36 bytes: timestamp at 0, classified byte at 4, reserved byte
at 5 and thirty payload bytes at 6. Bitmap is inverted, four words, at
weekday*8192+0x2ffec; records start at weekday*8192+0x2e000.

Original stack frame is 132 bytes: scalar spills 0..47, record 48..83,
32-byte calendar 84..115, bitmap 116..131. Separate C locals currently allocate
in another order. Aggregating them puts buffers at the right offsets but
changes address instructions. Declaration permutations and previously tested
stack-coloring switches did not fix this. The SDK compiler's struct tm is 44
bytes; do not substitute it for the recovered calendar prefix.

## Optional behavioral verifier

`check_persistent_history_emulation.py` executes original and compiled Thumb
under Unicorn 2.1.4 with synthetic RAM and flash. ROM division/memclr and
hardware-facing flash/staging/reset calls are intercepted. Calendar conversion,
threshold helper and stored-record validation execute OEM code. Compare final
global RAM, synthetic flash and ordered external-call traces. This does not
model asynchronous BLE, interrupts, real flash timing or hardware reliability.

Unicorn is an optional analysis dependency installed at
`/tmp/sr08-alice-emulation-deps`; it is not a build or source-export dependency.
From Alice's directory:

```sh
python3 pending_candidates/check_persistent_history_emulation.py \
  --unicorn-path /tmp/sr08-alice-emulation-deps \
  --candidate pending_candidates/load_and_update_persistent_measurement_state_alice_separate.c.txt \
  --random-cases 5000 --seed 4814 \
  --artifact-dir /tmp/sr08-alice-history-expanded-emulation
```

Results: first native candidate and its retained LTO version pass 304 cases
each; separate-predicate candidate passes 304 cases and a second 5104-case
run. The latter includes 3442 quarter-staging paths, 539 reset paths, 647
unclassified and 136 classified record writes. Fixtures include gate and
classifier boundaries, rollover/clamping, preexisting records and low-byte
versus full-word activity. These counts are test coverage, not proof of every
possible state or byte parity.

`check_day_record_emulation.py` also validates the released 0x552c candidate in
138 windows. That routine sums 900 seconds per valid flagged quarter-hour
record in [first/15,last/15); its old "find latest" name was misleading.
Candidate is 216 bytes with 47 differences: spill order and condition ordering
remain. It is not installed.

## Code-generation experiments and retained artifacts

`search_persistent_history_codegen.py` checks reference instructions against
OEM before scoring. Default search covered 768 forms / 312 distinct binaries:
typed versus offset loops, root volatility masks, flag widths, predicates,
index widths and ac6/ac6source. A subsequent `--annotation-sweep` covered 32
root-address-annotation forms / 8 binaries; it did not improve the leading
candidate. Scores are heuristics, never percentages of feature/bit parity.

An additional `--root-array-sweep` tested 32 combinations of incomplete byte
array root declarations with typed local prefix views (four binaries). It did
not improve the parent. This experiment was motivated by the successful display
conversions, where the global declaration type did affect address generation.

Artifacts under `/tmp/sr08-alice-history-*`: native/LTO emulation reports,
negative-control mismatch, codegen-search results, root-annotations results,
and retained LTO sources/binaries (`...-lto-artifacts`). Detailed pair-probe
log is `/tmp/sr08-alice-history-and-transition-lto.log` (expected mismatch for
parent only). Do not repeat unchanged probes.

Next useful investigation: reproduce the original scalar lifetimes and stack
address generation using ordinary C; a verified parent is prerequisite to
accepting the conditionally exact configuration function. Keep canonical RAM
names: extra aliases previously perturbed unrelated LTO literal sharing.

## First-divergence and scalar-lifetime investigation (Alice, 2026-11-16)

The user requested this new investigation after the bounded lever pass.
Original and baseline both reserve132 bytes. Ignoring PC-relative literal
displacements and branch distances, the first baseline difference is the
13th instruction at48c0: OEM loads minute into R0, spills it to SP+40, and
keeps divisor15 atSP+44; candidate keeps minute inR6. This displaces the
subsequent offset90 and zero values. The buffers alone do not explain it.

Recovered original stack uses (some slots have sequentially different owners):

| Offset | Observed lifetime/use |
|---|---|
| 0 | counter baseline saved at4b10, consumed4b72 |
| 4 | current counter saved4b04, consumed4b70 |
| 8 | entry window4922..49e4, then zero at4ace used4afc |
| 12 | daytime window4934..4a1e, then calendar hour4aec..4b20 |
| 16 | incoming minute flag48da..4a94, then divisor15 at4ada..4b26 |
| 20 | quarter-end steps4930..4aca, then record size36 and record byte offset |
| 24 | quarter-start steps4932..4b12 |
| 28 | constant92 retained48fc..4b90 for step-window indexing |
| 32 | minute step delta48f8..4cd6 |
| 36 | timestamp48bc through record creation |
| 40 | minute48c4, incremented4908, then quarter quotient4b2c..4bdc |
| 44 | divisor15, classifier mode, then quarter delta; distinct sequential values |
| 48..83 | 36-byte record; address first formed4af0 |
| 84..115 | 32-byte calendar output; address4bb4 |
| 116..131 | four bitmap words initialized4bac..4bb2 |

This is a static access/use map, not a complete CFG liveness proof. Raw
accesses and original disassembly are temporarily retained in
`/tmp/sr08-alice-history-stack-accesses.txt` and
`/tmp/sr08-alice-history-original-stack.txt`. Optimized IR from the actual
licensed ARM6.16 compiler has only three allocas (record, bitmap, calendar);
its scalar slots are allocator spills, rather than explicit C objects.

A single annotated zero reused through quiet/sample-sum/large-sample/second-
sum initialization causes the minute/divisor spills and restores the first
24 normalized instructions. First remaining mismatch is the incoming flag
stored atSP+24 instead ofSP+16. Ignoring only stack-slot numbers extends the
prefix to55 instructions, then the two time-window calculations are reversed.

Retained source: `persistent_history_lifetimes/zero_lifetime.c.txt`.
Native1176/1097 baseline becomes1168/1013. A joint regular LTO probe with the
helper and original following timer boundary fixed gives1168/1012; the
helper remains exactly156 bytes. Against the original1220-byte parent span
this also has52 missing bytes, so a simple differing-plus-missing metric is
1064 versus1096 for the old full-extent LTO candidate. This is improvement,
not parity. No full-image build/installation was attempted.

Focused negative checks: volatile minute puts its store atSP+128 and adds
accesses; a separate saved-minute object grows frame to140. Annotating
minute alone changes nothing; opaque divisor lifetime changes root registers
earlier. Different zero fan-outs, annotated threshold lifetime, time-window
annotations and incoming-flag signedness/width were checked. Best threshold
variant has1148/1012 native overlap differences but72 missing bytes; not a
better whole-span candidate. Its source is retained as
`persistent_history_lifetimes/threshold_lifetime.c.txt`.

Combining the new zero lifetime with an aggregate buffer object forces record,
calendar and bitmap into their original physical order at48,84,116, but emits
different subobject address instructions. Native1160/1013 with60 missing
bytes, so it is not the best whole-span form. Retained as
`persistent_history_lifetimes/buffer_layout.c.txt`.

Analysis scripts, object/IR outputs and rejected generated variants stay in
`/tmp/sr08-alice-history-lifetimes/` and `/tmp/sr08-alice-history-*-lifetime*.py`.
The useful new evidence is the zero's lifetime controlling early scalar
allocation, and the observed stack-slot reuse. Next source work should target
the flag/window/quarter-step lifetime interference, not repeat the old broad
flag sweep or assume an aggregate alone reproduces allocator spills.

## Allocator and separate-buffer follow-up (Alice, 2026-11-16)

Compiler pass dumps now identify the scalar mismatch precisely. Native
ARM6.16 `-print-after=greedy,virtregrewriter,stack-slot-coloring,prologepilog`
shows incoming minute flag spilled to frame index11, then stack-slot coloring
merges it with the later divisor15 spill (index17) into index8. Frame
finalization places that atSP+24. OEM also shares the flag with the later
divisor15, but atSP+16. The coalescing pair is correct; physical slot order
and other live ranges differ. The compiler dump is in
`/tmp/sr08-alice-history-lifetimes/zero_long/allocator-diagnostic.txt`.

Six declaration-order trials on the zero-lifetime candidate recover original
physical buffer positions without an aggregate: declare written[4], calendar,
record together at the old record declaration and initialize written at its
original later point. Record isSP+48, calendarSP+84, bitmapSP+116. This retains
direct add-SP addressing. Source `persistent_history_lifetimes/ordered_buffers.c.txt`.
Fresh joint LTO gives1168 bytes/1010 overlap differences plus52 missing =1062
missing-inclusive differences; helper4e98 still exactly156 bytes. Earlier
zero-lifetime result was1064 by the same metric; old full-size baseline1096.

Focused classifier branch weights move the flag slot as far asSP+20. Native
mode1-likely plus ordered buffers gives1184 bytes/1020 overlap differences
plus36 missing =1056, slightly better than1062. This ranking explicitly
includes missing tail bytes; the higher overlap count alone is misleading.
Source `persistent_history_lifetimes/weighted_mode.c.txt` is a pending
alternative, not an accepted module placement (see subsequent results).
Swapping mode1/mode2 source order, input-flag widths, finer probabilities,
late record-length/divisor annotations and a separate output-mode variable
do not resolve the slot mismatch. An explicit volatile divisor/mode union
recovers itsSP+44 object but changes store ordering and other spills; making
minute explicit too shrinks frame to124, so it is not a solution. Generated
rejected variants and scripts remain temporary, not normal build sources.

The first weighted joint LTO probe rejects a four-byte shift of4fc8. The
preceding reset_mode_state_and_publish_status_records at4fa0 acquires an
extra07fd557c pointer word at4fc4, pushing the07fd1e28 word to4fc8 and its
following function to4fcc. Preserving4fc8's original boundary resolves that
first displacement but the guard next rejects5070 at5074. This is a real
literal-pool cascade from this changed input, not a successful link or a
reason to relax the guard. A diagnostic with all aligned module boundaries
fixed is being checked; no production placement setting changed.

The all-aligned-boundaries weighted diagnostic finished rejected: armlink
L6291E reports actual four-byte overruns at4fc8 and5070. Thus explicit FIXED
metadata cannot repair this candidate's extra literal words. The weighted
variant remains rejected for module placement; the best placement-valid
source is ordered_buffers.c.txt, joint LTO1168/1010 plus52 missing, helper
156/0. All diagnostic jobs are terminal. Both retained new variants pass
Clang18 ARM C11 syntax with implicit declarations treated as errors; actual
ARM6 native and licensed LTO results above remain the code-generation
evidence. No installed firmware/build setting/shared data changed.

## Local classifier regions and per-unit tail merging (Alice, 2026-11-16)

The renewed active goal is to continue to exact matching; the routine is
claimed again rather than treating another negative batch as completion.
Original real-code sections contain553 instruction tokens; the linked
ordered-buffer candidate has529. Normalization resolves literal words and
branch direction solely for diagnostics. Original first24 instructions and
a following30-instruction stretch at48dc match, as does a30-instruction tail
at4ce8 versus candidate4cc8. These runs are instruction/operand matches
with PC displacements normalized, not byte acceptance or percentages.
Analysis: `/tmp/sr08-alice-history-region-anchors.py` and its token diff.

Smaller classifier comparison: OEM4950..4988 has28 instructions. It computes
the first sum and large-sample flag, forms a combined threshold, then reads
the volatile history again. Crucially mode2 later reuses BOTH raw inputs:
49d8 compares original sum inR7 with90, and4a18 normalizes original flagR3
again. This explains why raw flag survives normalization (COPY toR4), and
why first sum must remain live through the second loop. Our single shared
threshold allows those inputs to die. Merely spelling the same expression
twice is CSE'd; operand/result-annotation experiments recover two uses but
change allocation elsewhere and have not improved the whole function.
Retained illustrative source: `persistent_history_lifetimes/two_threshold_inputs.c.txt`.
Several variants move threshold formation before the second loop, but their
local instructions/registers still differ. No equivalence claim is made.

Targeted machine-CSE/tail-merge controls were tried on the changed sources.
Disabling machine CSE shrinks the frame to124 and worsens matching. Disabling
tail merging on ordered_buffers.c.txt adds four instructions/eight bytes.
A fresh comparative joint link compiles ONLY this candidate natively with
`-mllvm -enable-tail-merge=false`, preserving all other module flags and the
following original timer boundary. Result1176 bytes/1013 overlap differences
plus44 missing =1057; helper4e98 remains exactly156 bytes. Native baseline
in the same context is1168/1010 plus52 =1062. This is the current best
placement-valid diagnostic, still very far from byte parity.

The per-candidate native compilation deliberately bypasses the analysis
object cache for both phases, so differing compiler flags cannot reuse the
same candidate object. Other identical module objects are cached. Wrapper
and output: `/tmp/sr08-alice-history-native-region-profiles.py`, its.log, and
`/tmp/sr08-alice-history-regions-native-{baseline,no-tail}/`. This is a
diagnostic profile, not an installed normal-build change or full-image
verification.

Compiler-family checks: ARM5.06u7 O3/Ospace with GNU anonymous-union support
emits1124/1084 for original source and1128/1081 for ordered source with the
annotation replaced by literal0. Its prologue loads four roots before its
156-byte frame allocation, unlike OEM's immediate132-byte allocation.
ARM6.18 original source1172/1086; ordered annotated source1160/1027. Neither
improves the current ARM6.16 result; these bounded checks do not exclude all
other compiler versions/settings. No Tools files were changed.

All jobs in this batch terminal. Source candidates and existing notes are
the only repository changes. Installed code, shared data and production
compiler/linker settings are unchanged. There is no external blocker; next
work can continue on the two-use raw-input lifetimes or other original
control-flow regions, using the placement-valid no-tail profile for comparison.

## Two-use threshold and qualifier controls (Alice, 2026-11-16)

The smaller-region comparison is now explicit in temporary
`/tmp/sr08-alice-history-region-comparison.log`: OEM4950..4988 is28
instructions, including threshold formation BEFORE the second sample loop.
The current ordered candidate also has28 instructions in the corresponding
logical region but moves the threshold after the second loop; equal counts
therefore do not establish the same control/data flow. Keeping raw flag/sum
uses distinct from the first threshold, then separately materializing the
mode2 result, was tested with shared/literal/fresh second-sum initializers.
Those controls do not improve the whole candidate; their altered register
pressure changes the early minute allocation. Native two-result controls
emit1172 or1180 bytes with1097..1101 overlap differences. The existing
two_threshold_inputs.c.txt remains the useful raw-input lifetime example.

A full16-mask root-qualifier check on the then-new ordered/no-tail candidate
found native mask7 (only clock pointer nonvolatile)1176/970 plus44 missing.
An earlier revision of these notes wrongly rejected it as removing an observed
second tail hour load. That interpretation is RETRACTED: direct V204 disassembly
at4ce2 loads the hour ONCE, compares0 at4ce4 and23 at4ce8 with the same register.
The two earlier hour reads occur across calls in other parts of the function.
Tests retaining calendar_hour volatile had1172/1011 plus48 or1176/1014 plus44;
those numbers remain historical evidence, but retaining a duplicate tail load
is not a fidelity requirement. See the later correction and single-hour probes.
No qualifier was changed in production.

Local SDK project provenance: DA14585 ble_app_peripheral examples currently
select ARMCLANG6.18, C99, Optim7 and v6Lto=1. This is a clue from the local
SDK examples, not proof of the manufacturer's build settings. ARM6.18
ordered/no-tail check emits1176/1045 plus44 missing, worse than6.16 in the
current source form. The earlier ARM5 checks also differ more substantially
in prologue/frame structure. No new compiler installed or Tools file edited.

Temporary scripts/results: history-two-results.py, history-ordered-volatility.py,
history-clock-fields.py and history-arm618-notail.py under /tmp/sr08-alice-*.
All jobs terminal. Best placement-valid diagnostic remains native ARM6.16
no-tail1176/1013 plus44 missing=1057, helper156/0. Active exact-match goal
is unchanged. More original data-flow/control-flow reconstruction remains
available; no external blocker or proof of impossibility has been found.

## Mode snapshots and shared scalar phases (Alice, 2026-11-16)

New best placement-valid diagnostic is
`persistent_history_lifetimes/snapshot_phase_union.c.txt`, compiled natively
with per-candidate tail merging disabled and linked in the existing module
with the following original timer boundary fixed:1196 bytes,924 overlap
differences plus24 missing =948 (previous placement-valid best1057). Helper
4e98 remains exactly156 bytes. Retained link dir
`/tmp/sr08-alice-history-regions-snapshot-phase-no-tail/`; log
`/tmp/sr08-alice-history-snapshot-phase-lto.log`. This is still inexact, not
an install or full-image acceptance build.

Source evidence behind this change: OEM stores a mode snapshot atSP+44 and
reloads it after clearing memory, preserving mode1/mode2 tests our ordinary
SSA local eliminates. A volatile mode local after the three buffers gives
native1200/990 plus20 missing=1010. Taking one nonvolatile snapshot for the
initial dispatch and another for post-clear dispatch matches the observed
load grouping and gives1192/951 plus28=979 natively; joint link1192/950
plus28=978, helper156/0. Source mode_snapshots.c.txt retained.

A typed volatile union reuses the mode object's storage for the initial
divisor15, matching OEM's observed non-overlapping roles atSP+44 and
recovering timestampSP+36/initial minuteSP+40. The linked result is the948
above. The first local mismatch becomes swapped minute/divisor stores, not
a frame-size or root-register difference. Native1196/926 plus24=950.
Making minute/quarter explicit too shrinks the frame to124, so that trial is
not retained as a solution. Plain switches/case order give identical code;
branch weights worsen this source. Ordinary Os/O1/source-scheduler controls
are worse; list-burr and no-strict-aliasing unchanged. ARM6.18 default and
no-tail are worse for this new source as well.

Other source fidelity findings, retained separately from linear best:
- OEM has one shared value40 loop (plus the distinct leading40 loop). This
  candidate currently duplicates the all40 fill; explicit shared label
  recovers OEM's loop count but shrinks output to1176/1021 plus44=1065.
  Source shared_fill_loop.c.txt retains this structurally faithful join.
  Moving the value99 block lexically alone does not change output.
- OEM computes quarter-end minus quarter-start once before mode dispatch,
  then carries it across the threshold helper and compares zero. Factoring
  classifier_step_delta explicitly recovers that data flow AND the original
  incoming-flag SP+16 spill. Source classifier_step_delta.c.txt emits1188/1030
  plus32=1062; whole linear score is worse, so keep it as a structural
  candidate rather than discard the recovered slot evidence. An annotation
  on that difference does not change output.
- OEM's record-copy loop has independent any-data and classified predicates.
  Splitting them in C changes code but does not yet match its two tests.
  Record index widths, byte-array/union representations, scalar signedness
  with equivalent unsigned comparisons, inline helper extraction and
  distinct initial-zero annotations do not improve this source. A later
  record-zero lifetime changes allocation but not for the better. Inline
  extraction of the sample sum/gate emits identical native bytes, confirming
  that simple source factoring alone does not control those lifetimes.

Address-normalized instruction comparison still finds more strict LCS
matching tokens in some older compact variants than in the linear948 best;
therefore the948 metric must not be presented as that many independent
algorithm errors or as a percentage of correctness. Different metrics
guide local work; only exact original bytes plus the full build gates can
accept a replacement. No flags/guards/bytes in production were changed.
All current diagnostics have finished; exact-match goal remains active.

## Dispatcher and record-loop follow-up (Alice, 2026-11-16)

New best placement-valid diagnostic: `persistent_history_lifetimes/step_delta_dispatch_p01.c.txt`.
Native ARM6.16 Oz/no-tail standalone1200 bytes,901 overlap differences plus20
missing=921. Shared-module result1200/898 plus20=918; helper156/0. Original
timer-handler boundary remains fixed diagnostically, original layout guards
remain enabled. Retained script/log `/tmp/sr08-alice-history-step-delta-p01-lto.py`
and `.log`; module `/tmp/sr08-alice-history-regions-step-delta-p01-no-tail/`.
Wine compiler required the established escalation; initial sandbox-only call
failed before producing an object, then completed successfully under Wine.
This is not an installed replacement or a canonical full-image build.

This source combines the carried classifier-step difference with probabilities
0.01 for mode2 and0.99 for mode1. These are code-generation experiments, not
observed runtime frequencies or claims about manufacturer source. It still
orders the dispatcher differently from OEM; a lower raw byte score alone
cannot establish source fidelity or semantic equivalence.

`ordered_mode_dispatch.c.txt` separately recovers OEM's CMP2/BEQ/CMP1/BNE
sequence with R1: rare mode2 explicit goto, lexical mode1 body first, distinct
annotated comparison for mode1, no-tail plus disable-block-placement. Native
1200/1071 plus20=1091. Unlike ordinary case reordering, the distinct SSA input
prevents comparison-chain canonicalization. Block targets/registers elsewhere
remain inexact; this profile is diagnostic only.

`independent_record_flags.c.txt` recovers the two zero tests and one final
record.classified store: hold classified independently, annotate its one-value,
and share an annotated one-value within the iteration. Native1184/1015 plus36
=1051. At4b4a onward the common MOV1, CMP/BEQ/MOV, CMP/BEQ/MOV, increment and
backedge match OEM's structure, with different registers. Merely changing the
flag integer widths did not recover this; a distinct annotated one-value is
what preserves the independent selections. Combining with weighted best gives
1200/935 plus20=955 natively, worse than921. Combining with ordered-dispatch
profile gives1192/1049 plus28=1077. Preserve the structural result separately.

Other completed negative probes: first explicit EABI quotient/remainder call
returns identical bytes to `%`; changing second remainder worsens both bases.
Moving a volatile minute declaration across buffer/phase declarations locates
it atSP128/112/80/44/40, but extra accesses worsen all ten variants. All probe
jobs finished. Rechecked582 frozen bundle inputs against live tree: only the
dd68 claim comment differs. No production source, flags, headers or data changed
in this follow-up. Exact-match goal and Alice history claim remain active.

## Ordinary mode snapshots replace explicit scalar union (Alice, 2026-11-16)

New best placement-valid diagnostic is `persistent_history_lifetimes/value_mode_step_delta_p01.c.txt`:
native1200/895 plus20 missing=915; shared-module1200/892 plus20=912, helper156/0.
Link retained `/tmp/sr08-alice-history-regions-value-mode-step-delta-p01-no-tail/`;
script and log `/tmp/sr08-alice-history-value-mode-delta-lto.py` and `.log`.
Same diagnostic native Oz/no-tail/p01 weighting and original layout guards as
previous918. This remains inexact; production build inputs unchanged.

An ordinary uint32 mode plus `__builtin_annotation(mode,"cleared mode snapshot")`
after the fallback clear preserves the mode decision groups without the explicit
volatile divisor/mode union. `mode_value_snapshot.c.txt` gives1196/924 plus24=948
natively and restores the first24 normalized instructions, including the correct
initial minute/divisor store order. `value_mode_step_delta.c.txt` adds the explicit
carried step difference and restores the first41 normalized instructions, including
incoming-flag SP16; native1188/1033 plus32=1065. First remaining difference is the
literal92 spill SP24 versus OEM SP28. This structural improvement is separate from
best full-span byte score. Weighted variant gives the new912 joint result above.

LLVM Stack Slot Coloring dump for the41-prefix source is retained at
`/tmp/sr08-alice-history-slot-dump.txt` (captured stderr directly; normal compiler
wrapper returns stdout only). It confirms minute SSA values initially fi4 and fi7,
with initial minute storage reused for mode and initial divisor storage reused for
quarter-end steps. Thus these are compiler-colored spills, not missing explicit
scalar C objects. An initial hypothesis that divisor15 stayed live until the third
division was disproven by the dump: fi3 is overwritten by quarter-end steps at1088B.
Changing third division to either explicit EABI quotient call leaves bytes identical.
Separate divisor annotations likewise do not change output; no need to retry them.

Other completed probes:16 explicit saved-minute snapshot forms and8 member-specific
phase qualifiers do not improve the best.14 minute-value annotation forms produce
identical binaries to their two bases. Raw sum/large-flag lifetimes can be preserved
on these ordinary-mode bases, but all14 combinations worsen allocation/whole-span
matching. Narrowing mode itself to uint8/int8/uint16 does not improve the best;
see `/tmp/sr08-alice-history-value-mode-width.log`. No new installed source or
production flags. All jobs terminal; exact-match claim/goal remain active.

## Combined structure and comparison canonicalization (Alice, 2026-11-16)

`persistent_history_lifetimes/value_mode_sum_comparison.c.txt` is now a stronger
UNWEIGHTED candidate: native1196/911 plus24 missing=935; shared module1196/909
plus24=933, helper156/0. Retained `/tmp/sr08-alice-history-regions-value-mode-sum-comparison-no-tail/`
and `/tmp/sr08-alice-history-value-mode-sum-lto.py`/`.log`. Exact byte comparison
confirms its FIRST84 BYTES MATCH OEM, not only normalized instructions. First
mismatch at0x48fc: saved literal92 stack offset byte07 versus06 (SP28 vsSP24).
All original placement guards still enabled. Overall weighted best remains912;
no complete match or installed replacement.

Annotation on the sum limit90 changes optimizer treatment while leaving algorithm
unchanged. Annotation on daytime limit35999 restores OEM literal0x8c9f where
ordinary C produced equivalent35998 plus opposite comparison. A shared-fill
variant with both comparison limits is retained as
`persistent_history_lifetimes/shared_fill_original_comparisons.c.txt`: native1180,
1016 overlap differences plus40=1056. Against553 original instruction tokens,
LCS matches331 exact normalized tokens (412 ignoring register names), versus
322 for the same shared-fill source before comparison controls. These are
sequence-alignment diagnostics, not percentages of functional/byte completion.

A16-combination source test covered common40 fill, independent record flags,
raw classifier inputs and explicit ordered mode dispatcher. Shared-fill alone
on the ordinary-mode base improved exact-token LCS316 to322. All four together
needs140-byte frame; its source is not a solution. Explicit dispatcher plus
no-block-placement broadly changes later block order. Repeating its8 cases with
ordinary placement improves token matching but still does not match. Annotated
comparison predicates do not improve these candidates; the candidate-duration
1699 cutoff still becomes1700, even when annotating its constant or result.
Both are mathematically equivalent; bit parity still requires OEM encoding.

Resetting second_sum with fresh0 at the original lexical point instead of the
shared annotated zero worsens all8 new cases. This tests a register-pressure
hypothesis, not proof the OEM source shared that zero. Local variable annotate
attributes were tested separately from value annotations: all7 cases shift the
initial timestamp slot and worsen the unweighted935 comparison; none is retained.
See `/tmp/sr08-alice-history-local-variable-annotations.log`. All jobs terminal. No production source,
flags, headers or data changed; active goal remains whole-function byte match.

## Spill assignment evidence and rejected explicit frame (Alice, 2026-11-16)

Whole typed132-byte C work-frame experiment mapped the12 observed scalar slots,
record48,calendar84,bitmap116 with static layout assertions. Ordinary, volatile
scalar fields, and annotated aggregate ALL require156-byte actual frames because
compiler spills remain in addition to the explicit object. Native1232/1178+12,
1200/1151+20,1196/1088+24 respectively. None retained/installed. Script and log
`/tmp/sr08-alice-history-explicit-frame{-gen,}.py` and `.log`. This is evidence
against forcing the original layout with a C aggregate, not an acceptance path.

Actual ARM6.16 before/after Stack Slot Coloring dump retained at
`/tmp/sr08-alice-history-spill-map.txt` for unweighted value_mode_sum_comparison.
`/tmp/sr08-alice-history-map-spills.py` pairs unchanged instruction indices across
pass dumps; summary `/tmp/sr08-alice-history-spill-map-summary.txt`. Initial-minute
fi19 maps4; initial divisor fi18 maps3; later quarter-end fi7 reuses3, mode fi9
reuses4, incremented minute fi6 maps7, literal92 fi5 maps8. This identifies real
reuse decisions behind OEM's different early stack offsets. Reference weights in
the summary are approximate sums of printed machine-block frequencies, not
asserted internal compiler weight values. The upstream CURRENT LLVM implementation
sorts spill intervals by weight and reuses nonoverlapping colors:
https://llvm.org/doxygen/StackSlotColoring_8cpp_source.html . It is LLVM24, not
proof of ARM6.16's implementation; release10 source URLs could not be retrieved.
The actual before/after dump, rather than upstream version assumptions, supports
the mappings above.

Nohoist and speed spill modes leave both unweighted/weighted candidate bytes
unchanged; size mode changes6 bytes on the unweighted source without fixing its
first mismatch; deferred spilling changes early slots and is worse. Four debug
profiles (full/line-tables on two bases) leave bytes identical. Nine unsigned
wrapping/signed-fwrapv tests on three bases also leave bytes identical, ruling
out the tested signed-overflow hypotheses. These profiles are all diagnostic;
production settings unchanged.

Late record-mode branch frequencies (nine probabilities) affect earlier register
allocation, but do not improve915 weighted native best or the84-byte prefix.
Quarter-gate probabilities (14 cases, two bases) worsen all candidates, often
moving the timestamp spill ahead of the initial subtraction; do not reuse as
source evidence about real branch frequencies. Logs have corresponding names
`record-mode-frequency`, `quarter-gate-frequency`, `wrapping-time`, `debug-codegen`,
`spiller-controls` under /tmp/sr08-alice-history-*. No new accepted candidate this
batch; best placement-valid score912 and unweighted84-byte prefix/933 remain.
All jobs terminal; no production edits, claim/goal active. Remaining work is
whole-function C and shared-pool byte parity, not only scalar-slot agreement.

## Field-specific mode + record predicates:844 shared diagnostic (Alice, 2026-11-16)

**Status correction:** this source has a fourth hour read where OEM has three.
The844 score remains historical byte evidence only; it is not a fully faithful
source baseline. Use the later single-hour candidates and correction below.

New best placement-valid candidate is
`persistent_history_lifetimes/mode_field_and_independent_record_flags.c.txt`.
Native ordinary Oz (DEFAULT tail merging, NO per-candidate mllvm flags, NO branch
probability hints):1196 bytes/824 overlap differences plus24 missing=848. Shared
module result1196/820 plus24=844; helper156/0. Original timer boundary fixed only
as before; original placement guards enabled. Script/log
`/tmp/sr08-alice-history-mode-field-record-lto.py`/`.log`; module
`/tmp/sr08-alice-history-regions-mode-field-record-default/`. No install or full
canonical-image acceptance. This supersedes912 as the best placement-valid score.

Input field qualifier narrowing was the key: among32 masks, classifier_mode's
volatile qualification changes the first normalized prefix from55 to41. Other
minute_flag,minute_sample,reset_word qualifiers do not change these outputs.
Activity_word qualification changes later code. The retained source uses a plain
input-root pointer with minute_flag,minute_sample,activity_word,reset_word members
volatile and classifier_mode plain; reserved-byte access and low-byte activity
access retain explicit volatile casts. This reproduces ALL early original scalar
slots (timestamp36, initial/incremented minute40, divisor/mode44, incoming flag16,
minute_delta32, saved92 at28), without an explicit scalar union. Retained precursor
`classifier_mode_field_snapshot.c.txt` is1224/1051 plus4 excess=1055 natively and
exceeds the1220 parent envelope; it is not placement-accepted. Masks24 and30 are
byte-identical;30 conservatively preserves qualification of all other used fields.

Then default tail merging plus independently held record flags (the earlier
recovered common annotated one-value/two tests/final flag store) gives the new844
shared result. Source test matrix `/tmp/sr08-alice-history-precise-tail-structures.log`.
Original553 instruction tokens; new candidate544. Token LCS319 exact/408 ignoring
registers, versus322/400 for the older unweighted935 source. Therefore raw score
improvement is not a percentage of algorithm recovery. New source has55 normalized
prefix instructions but ONLY18 raw matching bytes (first differing early branch
has a different target); the older unweighted933 source still holds the84-byte raw
prefix evidence. Do not confuse these two metrics or candidates.

Observed-access check on the field-specific precursor: low-byte activity read
still exists at494a, and three full-word reads remain in classifier branches. Both
history loops remain volatile. This is static access evidence, not full behavioral
emulation of the new source or proof of manufacturer's C qualifiers.

Other completed probes: original Ghidra logical threshold spellings (16 variants)
are worse than the retained factored predicate;12 window-expression/raw-mode-load/
value-annotation forms do not resolve the remaining scheduling. Expressing daytime
from entry window recovers the first literal at55 but next register differs (56
normalized prefix). Nine fresh sum-zero variants are worse or unchanged. Signal
fences in7 positions change some mode/quarter load ordering without extra ARM
barrier instructions, but do not improve overall score; not retained. Three scheduler
controls plus source scheduling over3 bases do not help; post-RA scheduling moves
initial literal loads and mismatches at instruction3. Optimization test completed
six cases on input-field base (O1/Os/O2-no-unroll, tail on/off), all worse. First
nonvolatile-state O1 case needs unresolved __aeabi_memset after loop idiom conversion;
remaining5 cases were NOT run. No invented helper address or guard relaxation.
Eight early/raw classifier predicate combinations on the new record source do not
beat848 native. All these experiments finished; claim and full exact-match goal
remain active. Next mismatches remain time-window/load scheduling and first/second
sum register allocation / early predicate lifetimes; whole-function byte parity is
still required. No production source, header, data or compiler settings changed.

## Corrected hour-read criterion and current single-hour candidates (Alice, 2026-11-16)

IMPORTANT CORRECTION: the earlier claim that OEM reloads hour between testing0
and23 was wrong. Direct disassembly of V204.bin (header64, payload base07fc0000)
shows4ce2 LDR r0,[r2,#32];4ce4 CMP r0,#0;4ce8 CMP r0,#23. There is no second load.
The two other hour reads are before record setup and the midnight fix-up, across
external calls. OEM total is THREE hour loads; the historical844 C source has FOUR.
The earlier paragraph rejecting nonvolatile-clock controls has been corrected in
place. No production firmware ever used that inaccurate C source.

Current retained clock-correct candidates, both shared-placement validated and
still INEXACT:
- `persistent_history_lifetimes/value_mode_single_hour_p01.c.txt`: explicit one
  hour snapshot within the minute_delta-zero condition. Native1200/838 plus20
  missing=858; shared1200/830 plus20=850, helper156/0. Uses the existing diagnostic
  mode probabilities0.01/0.99 and native no-tail profile. Retained module
  `/tmp/sr08-alice-history-regions-single-hour-p01-no-tail/`, script/log
  `/tmp/sr08-alice-history-single-hour-p01-lto.py`/`.log`.
- `persistent_history_lifetimes/value_mode_single_hour.c.txt`: NO probability
  hints. Native1192/834 plus28 missing=862; shared1192/827 plus28=855, helper156/0.
  Same diagnostic native no-tail profile. Retained module
  `/tmp/sr08-alice-history-regions-single-hour-unhinted-no-tail/`, script/log
  `/tmp/sr08-alice-history-single-hour-unhinted-lto.py`/`.log`.
- `mode_field_and_record_single_hour.c.txt` retains the unweighted independent
  record-flags variant corrected to one hour read; native1180/1013 plus40=1053.
  This is structurally useful, not the lowest-byte-score candidate.

These have the corrected hour access pattern; no complete behavioral emulation
or whole-image byte acceptance is claimed. Shared helper exactness and region
placement are not full parent parity. The old844 score should not be described
as more faithful merely because its byte alignment is numerically lower.

One cleanup was independently verified: removing the record classified-zero value
annotation is byte-neutral. Fresh old/clean shared parent binaries and helper
binaries compare IDENTICAL. The historical source now uses plain classified=0.
Native state-field qualifier tests (15 cases) do not fix earlier scheduling.
Making word_24 nonvolatile improves raw count3 but hoists its read ahead of the
connection-state check, unlike OEM; not adopted. State arrays remain volatile.

Corrected-clock probe matrix: four clock-field qualifier masks and an explicit
conditional snapshot produce the same1180 native binary shape. Eight per-site
clock/mode/merged-byte qualifier combinations and seven hour-comparison value
annotations do not improve that variant. Nine single-hour probes on older bases
expose the better1200/838 profile above. Eight weighted and eight unweighted
combinations with plain mode field, independent record flags and shared40 loop
remain worse. Six mode-probability controls include the no-hint855 shared source;
no real frequency inference is made from any hint.

Record width follow-up: with independent annotated one-values, uint8 any-data flag
recovers OEM's LSLS#24 zero test. Retained
`single_hour_independent_byte_flags.c.txt` (unhinted, one hour read):1188/996 plus32
=1028 natively, versus1029 with uint32 flag. It is a structural candidate, not a
placement-accepted replacement. Classified-byte width has no effect. Eight type
cases completed. The source remains pure C with no assembly blocks.

All jobs finished. Only pending C and existing work notes changed. Original
ASM implementation stays installed and canonical build inputs unchanged. Goal
remains full-function C, original shared literal layout and complete byte parity.
