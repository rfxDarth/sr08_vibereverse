# Jeff — trees unified into exact_clang18/ (2026-11-17)

**479 sections / 449 units; 44 direct / 44 expanded ASM**, canonical, cmp OK, tests OK.
- exact_clang18_jeff/ and exact_clang18_alice/ were merged into `firmware/reconstructed/exact_clang18/`, which uses
  the shared `data/`. Alice's claims are released; the agent names stay in WORK_CLAIMS.md.
- Details: WORK_CLAIMS "Unification". Backup: `build/pre_unify_backup_2026-11-17.tgz`.

# Jeff — 0x302c app_db_init_next installed as C (2026-11-17)

**479 sections / 449 units; 44 direct / 44 expanded ASM** in both trees (canonical, cmp OK, tests OK).
- An annotated table index plus `__builtin_assume`-kept `!=` tests set the ISel order and so the literal pool order.
  cust_prf_funcs is now an LTO support unit. Details: WORK_CLAIMS 0x302c note.

# Jeff — 0x3b78 installed as C (2026-11-17)

**483 sections / 449 units; 45 direct / 45 expanded ASM.** Canonical, cmp OK, tests OK, in both trees (Alice synced the same day: build_v204.py, arm_compilers.py, catalog, source; backup Jeff job tmp `backup_sync3b78/`).
- switch_display_state_and_run_hooks: `__builtin_expect(enter != 0, 0)` fixes the final reload register. New
  per-unit profile `ac6likelyprob` (`-mllvm -static-likely-prob=100`) restores the layout. Details are in the
  WORK_CLAIMS 0x3b78 note.
- Next lever to try on other register-choice units (0x3838, 0x41e4, 0x8c90): strong `__builtin_expect` on a value's
  last use, plus a block-placement switch if the layout moves.

# Jeff — seventh merge: both trees in sync (2026-11-17)

**484 sections / 449 units; 46 direct / 46 expanded ASM** in both trees. Both builds match the canonical hash and
their containers `cmp` equal to firmware/V204.bin. tests/ pass in both trees.
- Alice had no new accepted work, so this was a one-way sync of Jeff's installs into her tree: the display cluster,
  0x24dc/0x2568, 0xa64c, 0x9004 and 0x552c, with build_v204.py and the catalog.
- Her CLAIMED markers, pending_candidates, README, history, reconstructed binary and shared-data paths are untouched.
- 15 installed rows were removed from the WORK_CLAIMS claims table; Alice's active 0x48a8 claim stays.
- Details: WORK_CLAIMS.md "Seventh merge". Backup: Jeff's job tmp `backup_merge9/trees.tgz`.

# Jeff — 0xa64c, 0x9004 and 0x552c installed as C (2026-11-16)

**484 sections / 449 units; 46 direct / 46 expanded ASM** (Jeff's tree). Canonical hash, `cmp` OK, tests pass.
- 0xa64c advance_registration_data_transfers (HID mouse/touch report pump), ac6lto. The last mismatch was the
  literal-pool word order. That order comes from ISel's reverse-post-order block walk, which a no-code
  `__builtin_assume(running | (env != 1))` fixed. The LTO link then reuses 0xa9d0's sr08_shared_context
  literal at 0xaa44, as V204 does. New FIXED_DATA_SYMBOLS: hid_mouse_sequence 0x07fcfb7a, hid_touch_y_sequence 0x07fcfb8e.
- 0x9004 convert_timestamp_to_calendar_fields, plain ac6. Proved in IR first: an exit phi [11, header],
  [month, break] gives an exact match. The source form is `goto done` plus `month = __builtin_annotation(11u, ...)`.
- Tool bug fixed: $T/tools/mkref.sh had collapsed `adds rD, rM, rD`, so mkref+ndiff showed false add-order
  differences. Re-check older "add order" parks that used it.
- 0x552c find_latest_valid_record_within_bitset, ac6lto, no switch. V204 gives the not-valid phi copy its own block
  (`beq; mov r0, r5; b join`). That needs a real else block: `else next = __builtin_annotation(total, "invalid")`,
  which emits no code but keeps the block alive (plain codegen would also need -disable-early-taildup; LTO does
  not). `__builtin_expect_with_probability(valid, 1, 0.33)` lays it out first.

# Jeff — 0x44a8 re-pushed, parked at 12 lines (2026-11-16)

No install; the tree and build are unchanged apart from pending_candidates/update_clock_and_process_events.c.txt
(the 12-line candidate; the old one is backed up in $CLAUDE_JOB_DIR/tmp/backup_44a8_cand.txt) and the additive
`hourly_record_bitmap` RAM symbol. Two LTO-only blockers remain (see WORK_CLAIMS 0x44a8 note):
- use-list order decides one add's operand order: the text-IR round trip gives V204's order, the LTO module does not;
- IndVars sinks `seconds - 28801` past a loop; every way of keeping it in the preheader swaps two registers.
New lever that worked here: `__builtin_expect_with_probability(cond, 1, p)` with p tuned per branch (0.3, 0.51).
It moves block frequencies just enough to change split/spill decisions without the big layout change of
`__builtin_expect`. Tool: $CLAUDE_JOB_DIR/tmp/tools/ltsweep.py (serial variant relinks in a kept LTO module).

# Jeff — display cluster installed as C (2026-11-16)

Jeff tree builds canonically (cmp OK against V204.bin, tests pass); inline-asm audit 51 direct / 51 expanded (was 58/59).
Installed (ac6lto): 0xa9d0 render_current_time_charging_measurement_markers_at_a9d0, then together 0xa84c, 0xa89c,
0xa8ec, 0xa904, 0xa960, 0xabb4, 0xacd0, 0xace8. LTO_FIXED_UNITS is now empty (0xab3c was pinned only because its
neighbours were stubs).
- 0xa9d0: V204's codegen input has `select (icmp ne)`. InstCombine flips single-use ne compares, and
  `__builtin_assume(is12 | (value != 1000))` gives the compare a second use without emitting code. Found by
  compiling hand-edited IR codegen-only (`-x ir -Xclang -disable-llvm-passes`).
- 0xace8: `% 3600` instead of an explicit remainder. It only matches through LTO (plain compiles mislead).
- 0xa84c/0xa89c: plain C replaces the macro asm in include/sr08_mode_update.h. The header is now unused but left
  in place (shared include, additive-only rule).
- 0xa8ec/0xa904/0xacd0 are Alice's released candidates, unchanged apart from a description comment.
- Literal copies: armlink sends each load to the furthest identical copy still in range on the pre-merge layout.
  The cluster matched only when all of 0xa84c..0xadf8 was sequential module code.
- Also installed: 0x24dc search_circular_record_queue_and_compact_if_needed + 0x2568 initialize_configuration_record_defaults
  as ONE plain ac6 group (not LTO). Their code was exact under LTO too, but their literals then merged into
  0x26ac's pool. V204 kept them in its own non-LTO object. Lever worth trying on other literal-only mismatches:
  probe the candidate under the other profile (ac6 vs ac6lto).
Tools: $CLAUDE_JOB_DIR/tmp/tools/{ccir.py, pinrun.py, lt3.sh}; backups in $CLAUDE_JOB_DIR/tmp/backup_{a9d0,cluster}.

# Jeff — lever-ledger goal met for Jeff's side (2026-11-16)

Every direct-asm unit not claimed by Alice is now installed or parked with a lever-ledger row in WORK_CLAIMS
"Parked" (Lever ledger) and its candidate in a pending_candidates/ directory. New this round: 0xa9d0, 0xace8, 0x9104
(sensor gain/LED tick, 229/817) and 0x98d4 (SDK main(): system_init, app init and main loop, 427/1553); the
remaining Alice-released units (0xa960, 0xabb4, 0x24dc, 0x552c, 0x9004, 0xa64c, 0xec2c) have rows too. 0xdd68 is
in Alice's parked ledger. Open, Alice-claimed: 0x8878, 0x48a8/0x4cb0, 0x4e98. No build inputs changed this round
(docs and pending_candidates only). Follow-up: third lever-2 rounds for 0x9104 and 0x3838 (no gain), joint lever-3 probes 9104+98d4+a64c,
3838+3584+3b78 and 8134+8500+85e0 (all fail on code length, not pool placement), and per-lever columns filled in for
0x3838, 0x8134, 0x8354, 0xd4f8/0xd9c8/0xd0f0 and 0x302c.
GlobalMerge lever (user-approved): 0x9104 improves (LTO relink 535 -> 441 raw, now the right length; candidate
`exact_clang18_jeff/pending_candidates/dispatch_radio_and_sensor_state_events_block_at_9104_globalmerge.c.txt`), still
MISMATCH; 0x8c90 and 0x3584 no gain. Installing the 0x9104 form would need the cycle_control_state block defined in C. New lever, not tried (shared RAM layout): GlobalMerge'd C globals, see WORK_CLAIMS
"Jeff since the sixth merge".

# Alice — finished wakeup handler pulled; combined build exact (2026-11-16)

User clarified either agent may pull finished work or perform syncs; no permanent
merge owner. Imported Jeff's completed 0x1c18 source/SDK rename and all required
registrations, manifest/catalogs and layout-preserving shared selector/comment.
Combined build with Alice's 0xaae8 is canonical and cmp exact: 497 sections /
449 units; 58 direct / 60 expanded ASM. All 582 exported files match; 11 tests
pass. Proof paths/backups in WORK_CLAIMS “Alice pulled completed BLE wakeup
handler”; no new repository proof files. All Alice jobs terminal.

Current goal permits installation or complete parking records. Alice parked
0x2568/0x3b78/0xd908 under WORK_CLAIMS Parked, listing best diff, candidate and
all applicable lever results. Do not reopen without new information/lever.
Other direct-asm units not claimed by Jeff still need evaluation; goal active.
No Jeff-tree edits, flash, commit or push.

# Jeff — Alice's 0xaae8 pulled into Jeff's tree (2026-11-16)

**497 sections / 449 units; 58 direct / 60 expanded ASM** (Jeff's tree). Canonical, `cmp` OK, 11 tests pass.
All of Alice's listed atomic merge items for 0xaae8 are in (see WORK_CLAIMS "Jeff since the sixth merge").
The trees now differ only by Jeff's 0x1c18 BLE_WAKEUP_LP_Handler install and rename (plus the shared-header naming
of merged_globals_5650 +5..+7, which both trees see).

# Alice — 0xaae8 finished in ordinary C; canonical full build (2026-11-16)

**497 sections / 449 units; 59 direct / 61 expanded ASM** in Alice's tree.
Fresh source-only build matches both canonical hashes, and payload/container
compare byte-identical to OEM V204. All 580 exported inputs match installed
sources. All 11 support tests pass. All Alice jobs are terminal.
Proof: exact_clang18_alice/pending_candidates/measurement_text/verification.json.
Bundle: /tmp/sr08-alice-measurement-text-source-bundle; output stem:
/tmp/sr08-alice-measurement-text-standalone. Normal build uses no cached
application objects or original image input.

Current unit 0xaae8 is finished: four ordinary threshold if-statements and a
bit-3 glyph selection, no goto/overflow/annotation builtin or assembly.
Its 84-byte module region and the entire image match. The remaining obstacle
was link layout: converting the preceding context stub to C changed following
0xab3c from FIXED to +0. An inserted Veneer$$LitPool shifted 0xab78 by four.
Preserving that existing boundary selects the original 0xade8 word, removes
the veneer, and passes full-image parity. Source/proof explain measured range
geometry and distinguish the inferred internal merge decision.

Atomic merge items: manual source select_measurement_text_update_per_result_at_aae8.c;
build_v204.py native registration and LTO_FIXED_UNITS; arm_compilers.py
fixed_code_starts; probe_arm_group.py forwarding; tests/test_lto_region_gap.py;
manual/function catalog rows. No guard weakening, instruction/literal patch,
manifest/data/shared-header/Tools or Jeff-tree changes. No commit/push/flash.

Familiarized with the sixth merge before finishing this unit. Jeff owns 0xace8
and mllvm sweeps; Alice stopped those experiments and left their machine-stage
notes in WORK_CLAIMS. Old cached context helpers assert the old snapshot and
must not be treated as proof for the merged tree. Other claims remain pending.

# Jeff — 0x1c18 BLE_WAKEUP_LP_Handler in C; lever ledger started (2026-11-16)

**498 sections / 449 units; 59 direct / 61 expanded ASM** (Jeff's tree). Canonical, `cmp` OK, tests pass.
0x1c18 is C and renamed to its SDK name (details in WORK_CLAIMS "Jeff since the sixth merge"). The lever ledger
under WORK_CLAIMS "Parked" records levers 1/2/3 per parked unit for the current goal.

# Jeff — sixth merge: Alice's accepted 0x80d8 / 0xa914 / 0xacb8 in both trees (2026-11-16)

**498 sections / 449 units; 60 direct / 62 expanded ASM** in both trees. Both builds match the canonical hash,
and both containers `cmp` equal to firmware/V204.bin. tests/ (10) pass in both trees.

- Merged from Alice:
  - 0x80d8, 0xa914 and 0xacb8 as C, with their registrations and catalog rows;
  - the arm_compilers.py module-owned literal fix plus its two tests;
  - the 0x2568 type cleanup;
  - the callback-samples header move;
  - the erase_flash_range_status caller renames.
- 0xacd0 was NOT merged.
- Alice's tree is synced from Jeff's. Her CLAIMED markers and all pending_candidates are untouched, including
  the unfinished measurement_text/ and elapsed_display_offset/ experiments.
- Shared data/ now names the 0x1f34 section WKUP_QUADEC_Handler. Layout is unchanged.
- Details: WORK_CLAIMS.md "Sixth merge".

# Alice — status dispatcher C accepted; canonical full build (2026-11-15)

**503 sections / 449 units; 65 direct / 67 expanded ASM.** Full source-only
build matches canonical payload and container hashes, and both equal OEM V204
byte for byte. Export: /tmp/sr08-alice-status-dispatch-only-source-bundle;
output stem: /tmp/sr08-alice-status-dispatch-only-standalone. All 582 exported
inputs match installed sources. Ten support tests pass. All jobs terminal.
Proof/logs: exact_clang18_alice/pending_candidates/status_dispatch_offset/.

Accepted 0x80d8 dispatcher: ordinary native ac6 C, exact 92 bytes including
alignment and its pool. Separate per-command integer annotations preserve
MOV+ADD76 / LDRB+4,+6,+7. A shared annotated offset caused pointer CSE; distinct
tags prevent it. Original flag/value reloads and command order preserved.
No inline ASM or register bindings. Merge source + ac6 group registration +
review catalog rows. No compiler support/profile, shared headers/data or
manifest edits. No Jeff/Tools edits, flash, commit, push or merge.

Do NOT merge 0xacd0 writer candidate: its own 24-byte module probe passed, but
full pair build failed with six display differences (a918, acc0, acc8-accb).
It retargeted accepted 0xa914 to ace0 and removed required acc8 root from
0xacb8. Writer source, native registrations and catalog rows restored. Failed
ELF prefix is diagnostic ONLY. Full-image guards caught this dependency;
no guard or emitted byte was patched. Current acceptance is dispatcher only.

Other evidence: measurement_text/ now has instruction-matching C using
101 | ((phase > 4) << 3), but context shifts existing ab78 by four bytes;
ASM retained. display_mode_pool/ three native released Jeff candidates shift
choose by four; ASM retained, claims released. elapsed_display_offset/ seed,
fence and source-scheduler variants keep entry reorder plus two LDR differences;
ASM retained, claim released. Signed/halfword display candidates choose ace0
rather than original ac78/acb4 in the three-unit probe. Next pool attempt must
retain a diagnostic ELF and explain movement; avoid unchanged full retries.

Switch-display-state 0x3b78 remains a six-byte near-match. Other pending claims
unchanged. Historical checkpoint sections below have older counts; this one
and status_dispatch_offset/verification.json supersede them.

# Alice — two display C conversions accepted, canonical build (2026-11-15)

**504 sections / 449 units; 66 direct / 68 expanded ASM.** Source-only export
/tmp/sr08-alice-status-mod5-registered-source-bundle (582 inputs) builds payload
and OTA container byte-identical to OEM V204. Payload SHA-256 5020c236…8570;
container c7472495…e8e8. Full hashes, input hashes and logs in
exact_clang18_alice/pending_candidates/status_mod5/verification.json and siblings.
All 582 inputs match installed sources. Ten support tests pass. All jobs terminal.

Accepted ordinary native C pair: modulo-five status display 0xa914 (76 bytes)
and packed display writer 0xacb8 (24 bytes). Integer offset annotation preserves
MOV+ADD64/STR+4; !__builtin_sub_overflow(remainder,2u,&difference) reproduces
CMP #2 / BCS where plain >=2 became CMP #1 / BHI. No inline ASM or register
bindings. Both native units in the existing main LTO link let armlink naturally
keep writer pool 0xacc8 for the distant reader. Reader-only probe was one byte
off (selected 0xacb4); the combined pair and full image pass unchanged guards.

Merge the two manual C sources plus their ARM_COMPILER_GROUPS/LTO_NATIVE_UNITS
registrations and catalog updates atomically. No compiler support/flags/data/
shared header/manifest edits. Jeff/Tools untouched; no flash/commit/push/merge.
Original sources/build/catalog backups remain in status_mod5/. Earlier export
without completed registrations is marked invalid; use the registered bundle.

Switch-display-state 0x3b78 remains a six-byte near-match; ASM retained and
claim active. Its comment-only source change is included in this full build.
Other pending claims remain unchanged. The previous section below describes
that earlier checkpoint; its 68/70 counts are superseded by this one.

# Alice — display switch C within six bytes, not installed (2026-11-15)

Canonical installed tree unchanged: **506 sections / 449 units; 68 direct /
70 expanded ASM**. Only normal-file delta is an Alice claim comment, proven
complete-object identical; 581 other inputs match prior canonical event-ring
bundle. installed_verification.json in display_switch_tail/ records proof.
No new full build claimed, no guards/compiler profiles/support edits.

0x3b78 switch_display_state_and_run_hooks now Alice-claimed. Jeff's newer
annotated native C was 34 bytes off due early callback reload into r4. A separate
volatile saved_enter slot initialized immediately AFTER first lookup retains
its SSA lookup and forces original late r1 reload/call. volatile_copy.c.txt now
matches 494/500 bytes; all bytes from 0x3bb6 to 0x3d6c exact. Remaining six bytes
are ONLY first lookup's phi/store join, locations in closest_verification.json.
No acceptance or ASM count reduction; original source remains installed.

Explicit per-edge volatile stores survive optimized IR but machine Control
Flow Optimizer merges them; register allocation also rotates because zero
needn't remain live. Best phi/store form keeps original allocation but copies
zero before common store instead of OEM two stores. Optimized .ll and native
*_branch_folder.txt dumps establish the stages. Other scoped volatile, default,
address/index/fence/PHI/taildup variants and ARM6.18/Clang14/18 probes are saved
negative results; avoid repetition. No failed flags installed. Future work
should preserve both default-zero liveness and edge stores, not retry full
variable volatility. All evidence in pending_candidates/display_switch_tail/.

Timer 0x4458 was read-only triage: already instruction-exact in Jeff candidate,
needs max-range literals shared with clock 0x44a8. Not claimed/edited; no new
unchanged pool probe. Jeff now has additional accepted work noted in shared
WORK_CLAIMS (including 1da8/3d6c); Alice did not merge his tree. Other claims
unchanged. All jobs terminal; no flash/commit/push, shared/Tools untouched.

# Jeff — Alice's 0xa9b4/0xaac8 formatters merged; 0xca68, 0xd9c8, 0xb1b0, 0xd4f8 and 0x25c4 parked (2026-11-15)

Jeff's tree is canonical: **501 sections / 449 units; 63 direct / 65 expanded ASM**. The payload matches
the canonical hash, `cmp` against firmware/V204.bin passes, and the support tests pass.

- Merged Alice's byte-exact 0xa9b4 `format_display_value_from_shared_offset_8` and 0xaac8
  `format_display_value_from_shared_offset_11` (sources copied unchanged) into the ab3c/ab78 native group and
  LTO_NATIVE_UNITS. The CSV and manual_exact rows now say C. The shared formatter macro stays, because 0xa8ec still uses it.
- 0xca68 (step counter: accelerometer FIFO -> 3 cascaded Kalman filters -> crest/trough steps) is parked at 74 of
  569 raw lines. 0xd9c8 (pulse rate from the 100-bin spectrum, ac5) is parked on register allocation only.
  Decodes and the levers tried are in WORK_CLAIMS "Jeff since the fifth merge" and the pending_candidates
  headers.
- build/lto_relink/lt2.sh: relink + raw-range diff with mid-function pools included.
- 0xb1b0 (+ 0xb5d0, BLE history-sync tick) is parked at 186 of 686 register-normalized lines, mostly block
  layout; see its pending_candidates header.
- 0xd4f8 (ac5 sliding-DFT pulse-rate tracker) is parked at 41 register-normalized lines, all armcc
  regalloc/constant hoisting; candidate in pending_candidates.
- 0x25c4 (BLE command handler, LTO) is parked at 380 of 953 register-normalized lines: same jump table and
  case order, block placement and pointer hoisting differ; candidate in pending_candidates.

# Alice — event-ring initializer types clarified; full image exact (2026-11-15)

Canonical **506 sections / 449 units; 68 direct / 70 expanded ASM**. Ten support
tests pass. Source-only payload and OTA directly equal OEM V204, hashes
5020c236… / c7472495…. All 582 exported inputs match workspace.

0x2568 initialize_configuration_record_defaults now uses the canonical shared
event ring types instead of a redundant 23-word struct with misleading names.
The former "type" is capacity 16; "capacity" is element size 20; secondary
capacity 8 and both storage links are explicit. Primary state at +0x34,
secondary at +0x48. Existing header asserts layouts. Remaining register/literal
ASM blocks are preserved; this is a type/readability cleanup, NOT ASM removal.
Complete normal Clang18 object identical (896 bytes) and full build canonical.
No shared/Jeff/Tools changes, no compiler/profile/guard changes.

Evidence: pending_candidates/event_ring_init/verification.json,
typed_cleanup_object_comparison.json, source_input_hashes.json,
installed_audit.json, support_tests.log and standalone_build.log.
Export /tmp/sr08-alice-event-ring-types-source-bundle; artifacts stem
/tmp/sr08-alice-event-ring-types-standalone. Merge source and catalog/diagnostic
metadata; no ABI/name change. Claim stays active for pure-C conversion.

Pure-C baseline using volatile fields emits 48/39 differences; nonvolatile 52/22
has correct frame/store layout but different early constants/pointer order and
registers. Declaration/field/call order, inline helper, aggregates, word view,
constant/pointer annotations, fences, O levels and ARM6.18/ARM5 provenance
probes are negative; details in README/probe_results. Scheduling-source 26,
list-burr unchanged 22, linearize unsupported. Avoid unchanged reruns.
All jobs terminal. Other pending claims unchanged; no flash/commit/push.

# Alice — local-literal builder fix verified; range C retry still rejected (2026-11-15)

Canonical installed tree: **506 sections / 449 units; 68 direct / 70 expanded
ASM**. Both payload/container equal OEM, hashes 5020c236… / c7472495….
**Ten support tests** pass. All 582 normal inputs equal accepted support-fix
source bundle. No ASM count reduction this batch; legitimate compiler-context
lookup defect fixed with regression proof, no guard relaxation.

stub_assembly used to look for an equal local word before resolving the value
of an external MODULE-owned target. It could miss an existing local duplicate
and create a needless temporary copy. context_word lookup now precedes own[]
selection. Fixed-target behavior, sealed words and missing-local copy retries
covered by four tests (one red before the fix), alongside six prior tests.
No constants/instructions rewritten, checks unchanged. Merge arm_compilers.py
and tests/test_stub_local_literal.py. Jeff/shared header/data untouched.

Accepted standalone: /tmp/sr08-alice-local-pool-value-standalone.{elf,payload.bin,bin};
export /tmp/sr08-alice-local-pool-value-source-bundle. Evidence in
pending_candidates/device_pool_reduction/: verification.json, source_input_hashes.json,
standalone_build.log, support_tests.log and local_duplicate_before_test.log.

New reproduce.py is an optional source-only 4-pool linker model, no OEM binary.
Code-bearing pools share; standalone words do not. All 96 order/reader controls
select 867c. Making far pools standalone reproduces 8568 -> 84e4 -> 832c ->
private82bc, eight cases each. association_matrix.json / *_results.json retain
observations. Mapping symbols alone and separate-reader sections were negative
controls; separate_reader_model.py.txt preserves that earlier version.

Range-checker C was retried with the fix (ac6lto/native, same proven one-hint
candidate). Full 104-byte region matches, but existing caller 0x82b2 still
loads 8568 instead of 867c (f2 -> ad), the identical prior one-byte/hash failure
b8f19849…. Fix is real but NOT sufficient to solve this selection. Rejected
experiment in range_standalone_build.log, range_rejected_differences.json,
range_source_input_hashes.json. Own C source and registrations restored;
restored_verification.json proves all 582 inputs match accepted support snapshot.
No new post-restoration build claimed. Experimental 67/69 audit is not current.

Next useful pool reduction must model actual initializer/native checker context,
not merely equal pool eligibility; avoid repeating same full conversion without
new cause. No new guards/exclusions, no byte patching. All jobs terminal;
range/callback/flash claims remain active. No flash/commit/push.

# Alice — callback literal conflict traced, installed build unchanged (2026-11-15)

Canonical remains **506 sections / 449 units; 68 direct / 70 expanded ASM**.
All 582 installed build inputs still byte-equal last accepted callback-result
API source bundle. No source, guard, compiler support, profile or header changes
this batch; no fresh full build claimed. All jobs terminal.

0x85e0 investigation now has exact ownership evidence. Original 0x867c is read
only at 0x82b2 by a main LTO C function, with no initial fixed-stub reader. The
retention algorithm pins that known pool word after a chained function arrives
four bytes early (_DroppedLiterals(gap)); it is not introduced by a stub read.
Final rejected diagnostic ELF has callback section's cycle_control_state word
0x07fd1ea4 AND retained original device_control_state word 0x07fd1e28 at that
same VMA 0x867c. Candidate return is at 0x8674 (+NOP at 0x8676, private pools
0x8678/867c), OEM return at 0x867a. It is a real layout/content conflict, not
permission to drop retention or overwrite a word. Guards remain unchanged.

Durable evidence: callback_sync/literal_867c_context.json,
literal_867c_collision.json, ordered_traced_disassembly.txt and
ordered_traced_main_lto.log. The latter captures the full retry sequence and
strict rejection; /tmp/sr08-alice-callback-sync-lto-debug retains the diagnostic
ELF with overlapping sections. Do not flatten/use that ELF as firmware.

New settled-assignment opacity/fence native variants remain inexact and are
recorded in probe_results.json/README. Original synchronizer ASM stays, claim
active. Useful next actions: recover original code shape, or reduce the four
root-pointer pools and pre-merge ownership behavior; not another unchanged
main probe. Jeff/shared files untouched; no flash/commit/push.

# Alice — signed sample-return APIs corrected; full byte parity (2026-11-15)

Canonical installed tree: **506 sections / 449 units; 68 direct / 70 expanded
assembly units**. No new ASM conversion this batch. The sampler API correction
removes an actual cross-unit type mismatch needed by the pending synchronizer.
Both payload/container directly equal V204; hashes 5020c236… / c7472495….
Six support tests pass; all **582** exported inputs match current workspace,
no original firmware in export. New header accounts for +1 input.

OEM synchronizer stores R0 from 0x833c/0x856c window wrappers. Their legacy
macro declared wrappers AND sampler void, although 0x85a0 already returns
int16_t. New additive sr08_callback_samples.h supplies real signed-result APIs
and a return-propagating macro. Alice's two decompiled wrapper sources use it;
0x85a0 source includes it to check its definition. Both wrapper code sections
AND relocation lists are identical with normal Clang18 flags. Legacy shared
sr08_callback_mode_range.h and Jeff files untouched. Merge all three C source
changes plus new header atomically. No compiler/guard/profile/placement changes.

Evidence: pending_candidates/callback_sync/result_api_{verification,codegen,
source_input_hashes,audit}.json and result_api_standalone_build.log. Export
/tmp/sr08-alice-callback-result-source-bundle; artifacts stem
/tmp/sr08-alice-callback-result-standalone. Last inputs rechecked unchanged.

0x85e0 synchronizer is now Alice-claimed, original ASM installed. Its pending
C also read reference/profile BEFORE setting VALUES_DIFFER; ordered_stores
corrects that volatile ordering. *_typed candidates use proper sample APIs.
Native fencing/opaque final tests recover some original register assignment but
remain inexact. Main LTO ordered_stores_typed rejects fixed literal 0x867c:
next required 0x8680. No successful new C region from that run. Four-byte
placement overflow is not four differing code bytes; don't weaken guards.
See README/probe_results in callback_sync/. All jobs terminal. Flash wrapper
and previous pending claims unchanged; no flash/commit/push.

# Alice — measurement/display routine now C, full image exact (2026-11-15)

**Canonical: 506 sections / 449 units; 68 direct / 70 expanded assembly units.**
Source-only payload (67136 bytes) and OTA container (67200) directly equal OEM
V204, hashes 5020c236… / c7472495…. Six support tests pass; all 581 exported
inputs match current workspace. No original firmware in export.

`update_measurement_display_and_mode_state` (0x7380) is ordinary main ac6lto C,
exact across all 296 bytes. It stores result mode, updates two-minute result
slots and runs timed display/event transitions. The inherited near-match swapped
mode==1 and value!=0. A conditional compiler signal fence in an inline helper
prevents reassociation, and caching display_mode prevents a reload. Fence emits
no hardware instruction. Partial RAM view offsets are statically asserted.

First probe failed at unrelated ER_87ec: inherited raw sensor_field_state[]
declaration conflicted with the newer canonical shared struct and enlarged the
publisher by four. Using sr08_sensor_field_state.h and its tail byte +0x58
restored layout without changing native candidate output. typed_sensor_main_lto.log
is the successful probe; clean_main_lto.log records the earlier failed form.
No support/profile/guard/placement/shared-header changes, Jeff files untouched.
Merge source, main ac6lto registration and catalog/diagnostic metadata.

Artifacts: /tmp/sr08-alice-measurement-display-standalone.{elf,payload.bin,bin};
export /tmp/sr08-alice-measurement-display-source-bundle. Durable proof in
pending_candidates/measurement_display/: verification.json, source_input_hashes.json,
installed_audit.json, typed_sensor_main_lto.log and standalone_build.log.
Claim closed, all jobs terminal. No flash/commit/push. Flash wrapper 0x3ea0
remains claimed and inexact as documented below; no new candidate installed
there. Other active candidates and prior atomic merge requirements unchanged.

# Alice — flash wrapper now fits its fixed region, still inexact (2026-11-15)

Canonical installed tree remains **507 sections / 449 units; 69 direct / 71
expanded ASM**. All 581 current normal build inputs still match last accepted
WEL build hashes; no normal-source/guard/profile changes this batch. No new
full build claimed. Last accepted payload/container remain canonical.

0x3ea0 common_return_a0f0.c.txt replaces direct denied-write return -1 with
status=255 and a common final annotated signed-byte conversion. Native shrinks
520 -> 516 bytes. Main LTO now fits original 0x3ea0..0x40a0 (512 bytes including
four original-position pools), preserving app_std_process_event at 0x40a0.
This removes the previous overflow without any placement-rule change.
It still differs in 422/512 bytes: block placement, stack slots, CS branch
shape, and merged cleanup. Original has a separate denied-path power-down call
before r7=255, whereas this candidate shares the common call. NOT installed;
original ASM stays. Claim active. Evidence in flash_operation/README.md,
common_return_verification.json, common_return_main_diagnostic.log and
common_return_linked_disassembly.txt. Diagnostic dir:
/tmp/sr08-alice-flash-common-return-lto-debug; all jobs terminal.

Conditional mask phi/annotation matrix, denied cleanup fences, byte annotations
and operation-likelihood hints are recorded negative probes. An erase-likely
hint gives 512 native bytes but different code; do not treat size as equality.
Next work must recover original block/cleanup/register behavior, not simply
fit the slot. No Jeff/header/Tools edits, no flash/commit/push.

# Alice — flash write-enable now C; current-header standalone exact (2026-11-15)

**Canonical: 507 sections / 449 units; 69 direct / 71 expanded assembly units.**
Both payload (67136) and OTA container (67200) directly equal OEM V204. Hashes
remain 5020c236… / c7472495…. Six support tests pass; all 581 exported inputs
match the current workspace, no original firmware in export.

`drive_ring_s_output_state_machine` (0xbb38) is SDK spi_flash_set_write_enable,
now ordinary native ac6 C, exact across all 52 region bytes. A conditional
compiler fence on the WEL error path plus final status annotation preserves
the common return; neither emits an ARM instruction. No hints/initial-status
annotation needed. No compiler-support, profile flag, placement or guard changes.
Merge source, ac6 registration and catalog/diagnostic metadata. Jeff source untouched.

Artifacts: `/tmp/sr08-alice-flash-wel-current.{elf,payload.bin,bin}`;
export `/tmp/sr08-alice-flash-wel-current-source-bundle`. Durable proof:
`exact_clang18_alice/pending_candidates/flash_write_enable/verification.json`,
source_input_hashes.json, installed_audit.json, installed_native.log and
current_standalone_build.log. A concurrent shared-header edit during first build
replaced unused fields +5..7 with padding. Fresh export/full rebuild against
current header passed; old exported-build proofs explicitly first_export_*.
No header modification by Alice in this batch. Claim closed. No flash/commit/push.

0x3ea0 flash wrapper remains claimed and ASM installed. Retained main LTO
output disproves a current three-branch-only mismatch: inherited candidate and
API-consistent wide-status candidate both emit 516 bytes, overrun app_std
by four, but differ in stack slots/block ordering. See flash_operation/README.md,
api_codegen_comparison.json and wide_status_linked_diff.txt. Guards reject both;
no candidate installed. Conditional fences cause duplicate initial selector
reads unless initial mask is computed once. Weighted, annotated and late-bounds
variants are inexact; avoid repeating. Diagnostic link dirs retained in /tmp;
no live jobs. Previous OTA/status API and SPI batches below still need merging
as documented; shared edits additive rules remain in force.

# Alice — SPI transaction converted to C, full standalone verified (2026-11-15)

**Canonical: 508 sections / 449 units; 70 direct / 72 expanded assembly units.**
Complete source-only payload and OTA container directly equal OEM V204. Hashes
remain 5020c236… / c7472495…. Six support tests pass. All 581 exported inputs
match workspace; no original firmware is in the export.

`update_mode_dependent_output_state_during_flash_transfer` (0xbb94) is now
ordinary C, identified as Renesas `spi_transaction` in our own SDK's spi_58x.c.
Native ac6 registration is required; no LTO profile/support/guard changes.
All 48 bytes match: select pin, assert CS, spi_access, re-read selector,
release CS and return the full word. A compiler-only fence on the pin-0 path
retains the OEM branch direction; annotating only its constant reproduces
register allocation. Neither emits hardware instructions. Previous weighted
select/fence variants failed; logs and sources are retained to avoid repetition.

Artifacts: `/tmp/sr08-alice-spi-cs-standalone.{elf,payload.bin,bin}`;
export `/tmp/sr08-alice-spi-cs-source-bundle`. Durable evidence:
`exact_clang18_alice/pending_candidates/spi_chip_select/verification.json`,
source_input_hashes.json, installed_audit.json, installed_native.log and
standalone_build.log. Claim closed. Merge the source and ac6 registration
with metadata; Jeff's files remain untouched. The OTA/status API batch below
still needs to be merged atomically as documented. No flash/commit/push.

The same branch-direction finding may help the released 0x3ea0 flash driver,
but its different register lifetimes still need independent proof. That source
also needs prototype/asm-alias cleanup before acceptance; see pending candidate.
Other pending candidates and previous negative results remain in their notes.

# Alice — OTA patch-data handler in C; flash status API made explicit (2026-11-15)

**Canonical standalone: 509 sections / 449 units; 71 direct / 73 expanded
assembly units.** Complete payload (67136 bytes) and OTA container (67200)
directly equal OEM V204. All 581 exported inputs match workspace; export has
no original firmware. Six support tests pass, no preprocessing failures.
Artifacts: `/tmp/sr08-alice-ota-data-standalone.{elf,payload.bin,bin}`;
export `/tmp/sr08-alice-ota-data-source-bundle`. Durable checkpoint in
`exact_clang18_alice/pending_candidates/ota_patch_data/verification.json`,
source_input_hashes.json, installed_audit.json and standalone_build.log.
Canonical hashes unchanged: 5020c236… / c7472495….

`suotar_patch_data_ind_handler` (0xc148, full 424-byte region) is ordinary
SDK/vendor C in the main ARM6 LTO module. Two compiler-only signal fences
preserve code-size read, pending-copy store and image-length store order;
neither emits an ARM instruction. Flash-write adapter is explicitly inline,
matching the original call graph. Header validation, progress/error handling,
XOR checksum, flash programming and 66-byte frame buffer/explicit trailing-byte
clears are retained. Static assertions fix the 64-byte header layout. Claim closed.

The old erase API was void while this handler checks its returned R0 status.
Alice's actual wrapper is now `erase_flash_range_status`, explicitly returning
the driver result, with a consistently renamed source/manifest/catalog/generator.
All five active C callers use it; legacy `erase_flash_range` is a linker alias
at the same 0x3e90 entry for remaining ASM. The shared header ADDS the status
prototype and preserves the old void declaration for Jeff. No Jeff source or
shared data was edited. Wrapper's 16 code bytes AND call relocation are identical;
three standalone C callers also have identical native output. Full image covers
both LTO callbacks. See status_api_changes.json, erase_status_codegen.json and
status_callers_native_comparison.json. Merge wrapper rename, alias, header and
all caller updates together; no duplicate implementation is emitted.

No compiler-support, placement or hash-guard changes in this batch. The new
ARM5 initializer barrier search (32 variants, O2/O3 and pointer/index forms)
did not improve its existing 24-byte mismatch; ASM stays installed. Results are
in `pending_candidates/control_initializer/`, with source generator and JSON.

Useful next independent target: released 0x3ea0/0xbb94 SPI chip-select branches.
Jeff found select-lowering drops branch weights and MBP flips a 50/50 tie.
An UNTESTED possible construct is a compiler fence in only the pin-3 branch,
keeping a real IR branch instead of a select, then source order/weights if needed.
Do not repeat old unconditional ternary/__builtin_expect-only or compiler-flag
sweeps. A fence before the common store alone would not address that IR issue.

# Jeff — 0x1f34 is SDK WKUP_QUADEC_Handler, now C; 0x302c parked (2026-11-15)

- 0x1f34 renamed (Jeff tree only) from `clear_interrupt_status_bits_dispatch_corresponding_at_1f34` to the SDK
  `WKUP_QUADEC_Handler` (wkupct_quadec.c, DA14585 variant, with syscntl_use_highest_amba_clocks inlined). Installed as
  `("ac6lto", ["WKUP_QUADEC_Handler"])`, BYTE_EXACT. V204's link folded both callbacks: QUADDEC_callback is never
  registered, and WKUPCT_callback (merged_globals_5650+0x48) is only ever set to
  conditionally_initialize_peripheral_and_schedule_service, in the asm routine run_sensor_measurement_state_cycle.
  The source therefore tests the callback for NULL and calls that function directly. Renamed in build_v204.py,
  exact_clang18_jeff/data/V204_tables.c (vector [16] comment), exact_clang18_jeff/data/V204_data_sections.ld, the
  manifest and both CSVs. The shared ../data copies still carry the old name for Alice's tree.
- 0x302c `app_db_init_next` parked. Candidate and the build changes it needs are in
  exact_clang18_jeff/pending_candidates/app_db_init_next.c.txt. Build and shared header restored.
- Merged from Alice, sources copied unchanged:
  - `erase_flash_range_status` (0x3e90; `erase_flash_range` is now a manifest function alias at the same entry);
  - `suotar_patch_data_ind_handler` (ac6lto);
  - `update_mode_dependent_output_state_during_flash_transfer` and `drive_ring_s_output_state_machine` (ac6).
  CSV rows and the generate_function_names.py entry were copied from Alice. Jeff's C callers still call
  `erase_flash_range` through the alias. Backups are in the job tmp backup_merge4.
- Merged Alice's 0x7380 `update_measurement_display_and_mode_state` (ac6lto), plus her switch of 0xaa68, 0x8774 and
  `apply_sensor_control_action` to the shared sr08_sensor_field_state.h declaration. All copied unchanged; backups are
  in the job tmp backup_merge5.
- 0x20f0 `process_sensor_reading_and_update_state` (battery service tick) decoded and parked. Candidate:
  exact_clang18_jeff/pending_candidates/process_sensor_reading_and_update_state.c.txt.
- 0x1da8 `handle_matched_device_state_send_corresponding_at_1da8` (vendor accelerometer probe) is now C
  (ac6lto, BYTE_EXACT). A compiler-only `__atomic_signal_fence` in the variant-3 branch keeps one `strb` per branch,
  as in V204. Jeff's build_v204.py FIXED_DATA_SYMBOLS gains `sensor_probe_setup_pairs` (0x07fcfac6) and
  `v204_data_07fcfacc` for the LTO link.
- 0x3d6c `optionally_calculate_three_axis_magnitude_dispatching_at_3d6c` is now C (ac6lto, BYTE_EXACT). The keys:
  volatile x/y locals assigned y first (V204's store order, with x keeping the higher slot), a separate call per
  path (V204 tail-merges them at the bl), and `!(magnitude_axes < 0)` for V204's bmi.
- Full build canonical: 502 sections, 449 units, payload 5020c236..., container equals V204.bin. Audit: 63 direct /
  67 expanded. Tests OK.

# Jeff — merged Alice's 0x32bc, 0x8fb0 and 0x86b8; 0x44a8 parked (2026-11-15)

Jeff's tree is canonical: 509 sections, 449 units, payload 5020c236…, container equals V204.bin. Audit: 70 direct /
74 expanded.
- Copied Alice's byte-exact C unchanged:
  - 0x32bc `app_easy_gap_undirected_advertise_start_create_msg` (ac6);
  - 0x8fb0 `validate_cached_text_payload_return_install_at_8fb0` (ac6);
  - the 0x86b8 single-switch dispatcher (ac6ltowordtables). It absorbs 0x86e0; that source and its manifest entry
    were removed.
- With them came her placement support: LTO_ABSORBED_FUNCTION_STARTS, separate_code_starts, and
  arm_compilers.lto_function_region_base.
- Not merged:
  - Alice's newer `suotar_patch_data_ind_handler` group, still in progress in her tree;
  - her erase_flash_range_status rename.
- 0x44a8 is parked; see the entry below.
- 0x8c90 `dispatch_timed_state_callbacks` (display multiplexer): parked at 97/209 lines, register allocation only.

# Jeff — three more units parked on byte mismatch (2026-11-15)

Jeff's tree is unchanged and canonical: 514 sections, 450 units, payload 5020c236…, container equals
V204.bin. These were parked with candidates in `exact_clang18_jeff/pending_candidates/` (details in
WORK_CLAIMS.md under "Jeff since the fifth merge"):
- 0x8354 `read_three_byte_samples_and_update_history` (sensor FIFO reader): 342 diff lines under LTO.
- 0xd0f0 `compute_and_store_display_coordinates`: really a blood-pressure estimator (armcc 5 unit).
  The arithmetic matches; V204's 40-byte frame layout doesn't.
- 0x41e4 `update_motion_sample_history_and_activity_flags`: 440 of 448 bytes. Only a spilled constant
  `1` and the argument register choice remain.
- 0xd2dc `filter_accelerometer_sample_and_classify_level` (armcc 5): the tail matches up to
  registers; the filter stores differ (stmia merging), and the profile byte is reached as a
  cross-object offset.
- 0x3584 `process_sensor_mode_and_update_display`: fully decoded (vital-signs display update).
  LLVM's switch over the mode tests makes it 16 bytes long.
- 0x44a8 `update_clock_and_process_events` (clock/calendar/scheduler, 942 bytes): fully decoded,
  about 294 of 393 normalized lines differ. The causes are constant hoisting, a spilled -1 constant,
  load PRE across map_elapsed_ticks, and block placement.

# Alice — full radio action dispatcher in C; module-gap placement fixed (2026-11-15)

**Canonical standalone: 510 sections / 449 source units; 72 direct / 74 expanded
assembly units.** Payload and full OTA directly equal OEM V204. All 581 exported
inputs compare equal to workspace; bundle contains no original firmware.
Artifacts: `/tmp/sr08-alice-radio-action-gap-standalone.{elf,payload.bin,bin}`;
export `/tmp/sr08-alice-radio-action-gap-source-bundle`. Durable verification,
source hashes, audit and build log are in
`exact_clang18_alice/pending_candidates/radio_action_dispatch/` (verification.json,
source_input_hashes.json, installed_audit.json, gap_standalone_build.log).
Six support tests pass. Hashes remain 5020c236… / c7472495….

`dispatch_radio_state_action_block_at_86b8` is now one ordinary C switch over
all 188 bytes, absorbing the old 0x86e0 chunk. A zero-instruction signal fence
before the 16 store fixes the zero/16 register-materialization order. Scalar
annotations and volatility/lifetime variants did not. Parent's old assembly
macro invocation and separate chunk source are gone; catalog/manifest updated,
manual CSV marks the historical chunk absorbed. Alice ignores that obsolete
split via LTO_ABSORBED_FUNCTION_STARTS; shared frozen layout/data untouched.

New additive `include/sr08_sensor_field_state.h` reconciles the dispatcher's,
publisher's, control action's and display override's RAM declarations. It covers
the 0x68-byte arena with overlapping byte/wide views. All three existing readers
compile to identical native output before/after; full parity also passes.

The first whole build exposed a real linker-support bug: current-module
functions separated by an omitted later-module function were laid out as +0
neighbors. The publisher moved from 0x8774 to 0x86b8. Retained scatter/ELF
confirmed it, not a source-code change. `separate_code_starts` now carries later
module entry addresses from the manifest; lto_function_region_base anchors the
next function and prevents an incorrect halfword host across that gap. The
existing strict address/byte/overlap/hash checks remain intact. Regression tests
use the actual 0x869c/0x86b8/0x8774 case; ordinary contiguous runs still use +0.

Claim closed. Merge the parent source, retired-child deletion, manifest/catalog/
manual CSV, shared header and its three Alice readers, build settings, compiler
support, tests and notes together. Jeff's tree has not been changed. Keep the
shared dispatch macro until Jeff has the C conversion; then remove it if unused.
The previous range-validity and reading-acceptance claims remain pending; no
pool-exclusion experiments from that batch were reinstated.

# Alice — range-check C recovered; full-image literal regression parked (2026-11-15)

Current normal sources/configuration are restored to the canonical checkpoint:
**513 sections / 450 units; 73 direct / 76 expanded assembly units. No further
assembly replacement was accepted in this batch.** The 0x8878 C candidate
matches its complete 104-byte region in the shared module. A single hint on
upper-bound/ID failures fixes the previous block-layout mismatch; positive
source-only inversions fold the bounds and do not match.

The FULL image guard rejects one byte elsewhere: existing C routine 0x82b0's
LDR at 0x82b2 selects an earlier identical pointer instead of OEM's 0x867c pool.
Excluding unused pools 0x8568 then 0x84e4 moves it to 0x832c, which three OEM
routines actually need. A native-object compile of the existing C caller gives
the same failing image. All new native flags/groups and pool exclusions were
reverted. No compiler-output rewriting or weakened check. Keep the range C
pending; do not repeat those four whole-image experiments unchanged.

Restoration evidence is retained at
`exact_clang18_alice/pending_candidates/range_validity/restoration_verification.json`:
579 of 581 inputs are byte-identical to the last source-only canonical snapshot;
the two remaining files differ only by CLAIMED comments, and both compile to
byte-identical complete objects with the normal flags. Build configuration is
byte-identical; the retained canonical OTA still directly equals OEM. This is
restoration/object equivalence, not a fresh successful full build. Fresh audit
has no preprocessing failures. Support tests pass 3/3.

`range_validity/README.md` explains the instruction result and all failed link
layouts, with retained logs/JSON and a reproducible OEM pool ownership check.
`reading_acceptance/README.md` records 0x8500 aligned-copy, volatile-word,
constant-one and base-alignment experiments. They remain inexact; original ASM
stays installed. Both new claims remain Alice's, with consistent source markers.

Next useful independent candidate: released 0x86b8/0x86e0 in the word-table
module. Jeff's prior notes say only zero/16 materialization order differs; try
C value-lifetime changes (e.g. a narrow annotation of the 16 value) before more
compiler-flag sweeps. It is not claimed yet. For 0x8878, reduce the four-pool
link-sharing example instead of adding exclusions to OEM-used pools.

# Alice — advertising and flash device-name path converted (2026-11-15)

Two more assembly units are ordinary C in Alice's native ac6 groups:
`app_easy_gap_undirected_advertise_start_create_msg` (0x32bc, full 144-byte
region) and `validate_cached_text_payload_return_install_at_8fb0` (0x8fb0,
full 84-byte region). All instructions, alignment and literal/string bytes
match OEM. New additive headers provide SDK advertising types and the
single-argument name-reader declaration; no compiler-support, shared data,
linker guards or Jeff sources were changed.

**Final standalone checkpoint: 513 sections / 450 units; 73 direct / 76
expanded assembly units, no preprocessing failures.** This is two fewer than
Alice's preceding 75/78 checkpoint. Payload (67136 bytes) and full OTA container
(67200 bytes) directly equal OEM V204, hashes unchanged (5020c236… / c7472495…).
All 581 exported inputs match workspace, and the bundle contains no original
firmware. Support tests pass 3/3. Proof retained in:
`exact_clang18_alice/pending_candidates/device_name_reader/verification.json`,
`source_input_hashes.json`, `standalone_build.log`, `installed_audit.json` and
`installed_native.log`. Earlier advertising-only proof is retained separately.
Temporary export: `/tmp/sr08-alice-advertising-name-source-bundle`;
artifact stem: `/tmp/sr08-alice-advertising-name-standalone`.

The advertising builder needs an ordered volatile setup view and a host-address
annotation. Snapshot name length before existing scan-response length to get
the original final addition operand order. The reader needs a record-address
annotation and a separate nonzero-length check annotation. Returning immediately
on an invalid record fixes fallback ADR/MOV scheduling without another hint.
Annotations emit no runtime instructions. Both claims closed; discarded source
variants removed, decisions and byte-diff logs retained alongside both READMEs.

Other claims remain pending. The initializer's additional 12 pointer/index
lifetime variants do not beat the earlier 24-difference candidate. The 0xd2dc
motion-filter routine was inspected but is not claimed or converted. Jeff's
post-fifth-merge conversions are still separate; these counts describe Alice.

# Alice — advertising command builder is C (2026-11-15)

`app_easy_gap_undirected_advertise_start_create_msg` (0x32bc) now matches all
144 OEM bytes using ordinary native ARM6 C, including its three literal words.
Reconstructed advertising types come from our SDK 6.0.24.1464. A volatile setup
view preserves separate channel/mode stores and the store order; the host
address annotation preserves SDK subobject addressing without runtime code.
Snapshotting name length before scan-response length reproduces the final ADD
operand order. No assembly/register bindings/output rewriting/guard changes.
The device-name getter now shares a canonical one-argument prototype; its
three former extra parameters were unused, and its instructions are unchanged.

**Verified Alice standalone: 514 sections / 450 units; 74 direct / 77 expanded
assembly units.** Both payload and full container directly equal OEM V204.
All 581 source-export inputs compared equal to workspace at this checkpoint;
no original firmware is in that export. Three support tests pass. Evidence:
`exact_clang18_alice/pending_candidates/advertising_command/verification.json`,
`standalone_build.log`, `installed_native.log`, `installed_audit.json` and
README.md. Temporary export `/tmp/sr08-alice-advertising-source-bundle`;
artifact stem `/tmp/sr08-alice-advertising-standalone`.
Jeff's post-fifth-merge conversions remain separate. 0x32bc claim closed.

# Alice — two unsigned display formatters converted after fifth merge

`format_display_value_from_shared_offset_8` (0xa9b4, 28 bytes) and
`format_display_value_from_shared_offset_11` (0xaac8, 32 bytes) are ordinary C
using canonical typed RAM declarations and byte views. Both are native objects
in the existing ac6lto module; no compiler-support or parity-guard changes.
**Alice standalone: 515 sections, 450 units; 75 direct / 78 expanded assembly
units.** Expanded count falls from 80 at the fifth merge; direct count stays 75
because these two used a header assembly macro. Jeff's subsequent conversions
are separate and are not yet merged into Alice. This successful build also
verifies Alice against the current shared header, superseding the earlier
concurrent-build failure noted below.

Final verification: `/tmp/sr08-alice-formatters-postmerge-typed-verification.json`.
Export: `/tmp/sr08-alice-formatters-postmerge-typed-source-bundle` (579 inputs,
all compared to workspace; no original image). Build/artifact stem:
`/tmp/sr08-alice-formatters-postmerge-typed-standalone`. Full payload (67136 bytes)
and OTA container (67200 bytes) directly equal OEM V204; hashes remain
5020c236… / c7472495…. Optional differential emulation passes 780 synthetic
cases across the six display candidates/installed functions; support tests 3/3.
Keep the shared legacy formatter macro until Jeff merges these two conversions,
then remove it: Jeff's current tree still uses it.

Signed formatter retry still fails literal placement at 0xacb0. Four display
candidates remain pending; no linker workarounds installed. Averager 0xcf80:
720 scalar/order/volatility forms plus seven count-width forms gave no byte
improvement. Initializer 0xd908: reuse the context pointer; pending ARM5 C now
has 24 differing bytes at -O2 (136 bytes total), versus 108 at the old default
baseline. Still not installable; neither optimization flags nor inexact output
were promoted. Both remain claimed. See pending candidate notes for evidence.

# Jeff — 0xc728 process_sensor_sample_and_maybe_save_record in C; 0x8134 and 0xa84c/0xa89c/0xabb4 parked

`process_sensor_sample_and_maybe_save_record` (0xc728, 392 bytes) is C in Jeff's ac6lto module. **Full build
canonical (payload 5020c236…, container equals V204.bin): 514 sections, 450 units; audit 73 direct / 78 expanded.**
Shared header change, layout unchanged: `include/sr08_radio_configuration.h` splits `reserved_2b_to_41` around
`record_check { state; time_event; }` at 0x36, since V204 addresses the time event as record_check + 1. Alice's tree
also builds canonically with it (rebuilt 2026-11-15).
Parked with notes in WORK_CLAIMS.md ("Jeff since the fifth merge"): 0x8134 (register allocation only) and
0xa84c/0xa89c/0xabb4 converted together (0xabb4 exact, but armlink picks other copies of shared literals).

# Jeff — periph_init (0xadf8) in C; 0xabb4 and 0x7380 parked

`initialize_peripheral_state_and_interrupts` (0xadf8, 360 bytes) is all C in Jeff's ac6lto module: SDK periph_init
with the vendor pad, timer0, UART2 and SPI flash setup. **Full build canonical (payload 5020c236…, container equals
V204.bin): 515 sections, 450 units; audit 74 direct / 79 expanded.** 0xabb4 and 0x7380 are parked with candidates in
`exact_clang18_jeff/pending_candidates/`; details in WORK_CLAIMS.md ("Jeff since the fifth merge").

# Jeff — fifth merge: both trees in sync

Alice's post-fourth-merge work (0xc8b0, 0x519c, 0xee4c, native-context 0xab3c/0xab78/0xac7c, compiler fixes and
tests, exporter fix, candidates) and Jeff's (ac6ltowordtables module, 0x8040, 0xaa4c, 0xaa68, 0xac20) are now in both
trees. 0xaa4c keeps Jeff's memcpy form; Alice's native form is
`exact_clang18_*/pending_candidates/write_display_values_53_65_at_selected_offset_alice.c.txt`. **Both trees build to
the canonical payload and container: 516 sections, 450 units; audit 75 direct / 80 expanded.** Details in
WORK_CLAIMS.md ("Fifth merge"). Alice's active claims (display word writers, persistent history, the record-flag handler 0x4e98)
keep their CLAIMED markers in her tree.

# Jeff — display digit writers 0xaa4c, 0xaa68, 0xac20 in C (Jeff's tree)

All three are plain C in the ac6lto module, no assembly or annotations. 0xaa4c uses a two-byte `memcpy`
from a string literal, which gives V204's second-store addressing. 0xaa68/0xac20 format a value with the
0x3148 digit formatter or mark digits with a goto chain. `arm_compilers._place_lto_module` now treats a
stub load merged into another stub's removed literal copy as a moved load, so the relink retry runs; 0xac20
needed it. **Full build canonical: 522 sections, 450 units; audit 81 direct / 86 expanded.**
Alice installed her own 0xaa4c in parallel; choose one at the next merge. Notes and the parked 0xa914
analysis are in WORK_CLAIMS.md ("Jeff since the fourth merge").

# Alice — sensor batch dispatcher converted with ARM5; standalone equality verified

Installed ordinary C for `dispatch_batch_item_three_sign_extended_at_ee4c`:
**72 bytes exactly equal to OEM, including the literal word**. ARM Compiler
5.06u7 reproduces the register-homing frame and argument evaluation; prior
Clang attempts did not. Volatile **pointed-to samples**, plus initializing the
uint8 index before the context guard, give the exact load/scheduling order.
Pointer parameters themselves need not be volatile. Source follows project
formatting, with no inline assembly, bindings or special flags. Claim closed.

**Latest canonical standalone checkpoint: 522 sections / 451 units,
78 direct / 84 expanded assembly units.** All 580 exported inputs exactly match
the workspace. Payload and complete container directly compare byte-for-byte
equal to OEM. Original firmware is absent from the source export.

- Export: `/tmp/sr08-alice-batch-dispatcher-source-bundle`
- Log: `/tmp/sr08-alice-batch-dispatcher-standalone.log`
- Artifacts: `/tmp/sr08-alice-batch-dispatcher-standalone.{elf,payload.bin,bin}`
- Payload SHA: `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`
- OTA SHA: `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`

Also recovered six pending C display writers/formatters at a904/acb8/acd0/a8ec/
a9b4/aac8. Native instructions match apart from pools; all 780 behavioral cases
pass. Full probes fail literal-retention collisions at acc8 or acb0. They remain
claimed and uninstalled. A self-contained small linker reduction DOES reproduce
the writer's original 24 bytes with ordinary private copies in all six object
orders; next extend it with competing display pools. Evidence, unsuccessful
experiments and commands: Alice's `pending_candidates/display_word_writers/README.md`.
Do not repeat unchanged full probes or failed ELF-alias experiments.

Only accepted normal-build change this batch is the C dispatcher and its ac5
group. A temporary retention-anchor experiment was reverted; arm_compilers.py
is identical to the verified four-display snapshot below. Three regression
tests pass. No new dependency, data/header/Tools/Jeff-tree edits, flashing,
commit or push. Persistent-history work and overall zero-assembly goal remain
active; all Alice jobs terminal at this checkpoint.

# Alice — prior four-display checkpoint

New installed ordinary C: 0xaa4c `write_display_values_53_65_at_selected_offset`
(28 bytes), 0xab3c `update_status_display_using_remainder_rom_at_ab3c` (60),
0xab78 `select_two_display_patterns_mode_flag_at_ab78` (60), and 0xac7c
`choose_display_state_bytes_from_mode` (60), including alignment/pools.
No assembly or register bindings remain in these sources. Their claims closed.

**Fresh isolated source-only build passes: 523 sections / 451 units, 79 direct /
85 expanded assembly units.** All 580 exported inputs are identical to the
workspace. No original firmware is in the export. Direct OEM comparison proves
both the 67,136-byte payload and 67,200-byte container are byte-identical.

- Export: `/tmp/sr08-alice-display-four-formatted-source-bundle`
- Build log: `/tmp/sr08-alice-display-four-formatted-standalone.log`
- Artifacts: `/tmp/sr08-alice-display-four-formatted-standalone.{elf,payload.bin,bin}`
- Payload SHA: `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`
- OTA SHA: `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`

Merge the compiler/build/probe changes with these sources. `LTO_NATIVE_UNITS`
compiles selected ordinary C without -flto, then links the normal objects into
the existing module for shared literal pools. Pure LTO lost their annotations
and changed instruction selection. No new linker regions, RAM aliases or flags
that relax parity. The wrapper uses regular files for Wine diagnostics to
avoid inherited-stderr hangs. The diagnostic-copy helper resolves temporary
cross-stub copies by ELF section only to request existing strict-link retries;
overlapping diagnostic images still cannot produce accepted placements.
Three focused regression tests pass. See Alice's
`pending_candidates/display_pointer_views/README.md` for evidence and commands.
Superseded candidate copies removed; the emulator now reads installed sources.

Persistent-history parent/configuration work below remains pending. The overall
zero-assembly goal is active. No Tools, shared data/header or Jeff-tree edits;
no flashing, commit or push. All Alice jobs are terminal at this checkpoint.
Next useful native-context candidates: display halfword/word writers at
0xa904, 0xacb8 and 0xacd0 (check current claims first).

# Alice — prior persistent-history checkpoint; parent byte match pending

Alice continues the zero-inline-assembly goal. Complete pending C now covers
0x48a8+0x4cb0 minute history, classification and quarter-hour persistence.
Original assembly remains installed. Joint C/LTO probing makes configuration
routine 0x4e98 **156 bytes exactly equal to OEM**, resolving the shared 0x4f28
literal overlap, but the parent still differs. Do not install either yet.

The native alternative matches OEM RAM, synthetic flash and I/O traces in
**5104 emulated cases**; the first candidate and its retained LTO variant each
pass 304. A deliberately reversed history condition fails the verifier.
These are bounded behavioral checks, not bit parity or hardware guarantees.
768 C-form variants and 32 root-annotation variants have been investigated;
register allocation, stack-buffer order and literal placement remain unresolved.

See Alice's `pending_candidates/PERSISTENT_HISTORY_NOTES.md` for source hashes,
commands, scope, retained logs and experiments to avoid repeating. The 0x552c
record-summing candidate also passes 138 windows, but remains released/inexact.
Optional Unicorn is only in `/tmp`; no new normal build dependency.

At that checkpoint the baseline was canonical: **451 units / 526 sections, 83 direct /
89 expanded assembly units**. Of its 580 exported inputs, 576 are identical
and four differ only in comments (preprocessed tokens checked equal). No new
conversion accepted at this checkpoint; all Alice jobs terminal, parent and
configuration claims active. These inventory figures are superseded by the
accepted display batch above. Jeff's tree and Tools untouched. No flash/commit/push.

# Jeff — 0x8040 dispatcher in C via a second (word-table) LTO module

Per the user's OK for per-unit -mllvm switches: Jeff's tree has a second LTO module, ac6ltowordtables, whose armlink
code generation uses -arm-synthesize-thumb-1-tbb=false. six_way_command_dispatch_default_branch_at_8040 (with its
0x8068 chunk) is now C there. Full build canonical: 525 sections, 450 units; audit 84 direct / 89 expanded.
0x86b8 (one register-order difference) and 0x3ea0 stay parked. Alice's tree is not changed; bring this over at the
next merge. Details are under "Jeff since the fourth merge" in WORK_CLAIMS.md.

# Alice — two packet routines converted to exact C; verified and ready to merge

Alice completed `advance_sensor_cycle_and_toggle_mode_flags` (0xc8b0,
**244 bytes including literals**) and `build_sensor_command_packet_acquiring_shared_at_519c`
(0x519c, **100 bytes including literals**) as ordinary native `ac6` C. Pointer
annotations preserve source/payload addressing without inline assembly or
instruction bytes. Both installed-source probes pass. Typed prefix views reuse
canonical RAM linker names; no new aliases, compiler flags or linker rules.

**Final source-only build passes:** 580 exported inputs, 526 sections, 451 units,
complete 67,136-byte payload and 67,200-byte container. All exported inputs are
identical to the current workspace. The export has no original firmware,
scan CSV or object intermediates. OTA also compared directly equal to OEM V204.

- Export: `/tmp/sr08-alice-sensor-packets-source-bundle-complete`
- Log: `/tmp/sr08-alice-sensor-packets-standalone-complete.log`
- Artifacts: `/tmp/sr08-alice-sensor-packets-standalone.{elf,payload.bin,bin}`
- Payload SHA: `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`
- OTA SHA: `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`

Audit: **83 direct / 89 expanded** assembly-containing units, no preprocessing
failures. Overall zero-inline-assembly goal remains active and incomplete.
Both claims closed; all Alice jobs terminal. Jeff's tree and Tools were not
edited. No flashing, commit or push.

For Jeff's next merge, include Alice's exporter fix: it now enumerates configured
SDK assembly sources, including the startup source omitted after merge four.
Also include the new shared LLC prefix header checked against our own SDK22,
the two native groups, C sources and updated catalogs. Superseded c8b0/header
candidate drafts were removed from Alice's pending folder.

Important finding: extra RAM aliases change `data_at`'s unique-symbol decision
and can perturb LTO literal sharing far from the edited function. The first
alias attempt failed the unchanged address guard; the final version reuses
canonical names and passes every guard. The RAM map is unchanged and matches
the supplied pre-merge backup. The pointer-annotation technique may help other
parked address-folding cases. See WORK_CLAIMS.md and Alice's latest history entry.

# Jeff — fourth Jeff/Alice merge (trees in sync)

User-provided pre-merge backup: `/home/drath/.claude/jobs/62256b5a/tmp/backup_merge4/trees.tgz`.
Alice confirmed the archive exists; it has not been restored over the merged trees.
The subsequent user request resumes Alice's work specifically on
`advance_sensor_cycle_and_toggle_mode_flags` (0xc8b0).

Alice's and Jeff's trees are synced again: Alice's installs since the third merge were ported into Jeff's tree, then
Alice's tree and the shared data/ were regenerated from Jeff's. Both build to the canonical payload and container
hashes and to byte-identical containers (528 sections, 451 units; audit 85 direct / 91 expanded assembly units).
Alice's 0xc8b0 claim stays active; everything installed was cleared from WORK_CLAIMS.md. Details are in
WORK_CLAIMS.md and in the "fourth Jeff/Alice merge" section of both DEVELOPMENT_HISTORY.md files. Asm porting is
paused at the user's request.

# Alice — HID sequence investigation and prototype cleanup

Installed only a declaration cleanup in the signed display caller: canonical
formatter header plus explicit uint32 cast. Complete Clang18 ELF objects
before/after are byte-identical under exact build flags;proof in WORK_CLAIMS.md.
Unsigned-decimal behavior is preserved. No new full-build claim for this edit.

The0xa64c registration-transfer label was incorrect: it pumps HID mouse/touch
macros. Full C candidate,analysis alias driver,and report/table explanation are
in Alice pending_candidates/. Native336-byte region and LTO both still differ,
so original stays installed. Local report initializer fixes LTO .rodata placement
without relaxing guards. Shared header/caller descriptions are comments only;
no shared ABI/map or data-byte edits.

Fresh audit:451units,96 direct/117expanded,zero preprocessing failures. Last
full-image and source-only gates remain status-wait77710/51538 below. All
claims released and all Alice jobs terminal. Jeff tree untouched. Goal active,
incomplete.

# Alice — measurement-initializer investigation after status-wait checkpoint

No additional conversion accepted. Full typed C for initialize_sensor_processing_state
0xec2c is preserved in Alice pending_candidates/. The first166 bytes match
except two literal-load offsets after preserving cached-zero/counter lifetimes;
remaining register/root lifetimes and loop addressing still differ. Original
implementation stays installed. Both %3 defaults use remainder+97;seed-derived
values and every reset array are explicit.

The physical arena07fd0b58 needs a larger typed measurement view in addition
to the existing smaller status-context view. Reproducible analysis-only probe:
pending_candidates/probe_measurement_context.py. No shared RAM alias,map or
compiler/placer changes were installed. WORK_CLAIMS.md has addresses/results
and the required prototype correction before eventual installation.
All Alice claims released and all probe processes terminal. Last accepted
status-wait checkpoint below remains current:561sections451units,96 direct/117
expanded. Jeff tree untouched. Goal active,incomplete.

# Alice — latest verified BLE-clock status-wait checkpoint

Goal active,incomplete: exact V204 bytes and zero inline asm. Converted
0x8a78 entirely to C as poll_status_until_match_or_ble_timeout. The old
"hand-written register-save frame" interpretation was false: ordinary void C
reproduces all96bytes. Four pushed caller-register slots are local storage;
the POP leaves timeout inr0 incidentally,not the previously documented status
address. Hardware "lock" is BLE clock sampling. Status match exits immediately;
clock elapsed time is a timeout,not a minimum-duration delay.

Renamed0x1ee8 void wrapper to wait_i2c_rx_fifo_or_timeout;correct I2C receive
FIFO semantics. Updated Alice callers,manifest/catalog/generator/manual index.
Shared header and layout changes are additive;old declarations/selectors
remain for Jeff. Merge these changes together. Jeff tree untouched.

Full77710 and source-only51538 exit0:561sections451units,canonical hashes
independently checked. Payload67136,OTA67200bytes. Audit2278:96 direct/117
expanded,no preprocessing failures. Artifacts /tmp/sr08-alice-statuswait.*
and /tmp/sr08-alice-statuswait-standalone.bin;579-file source-only bundle
/tmp/sr08-alice-statuswait-bundle. All Alice jobs terminal;no compiler/placer
policy changes. The batch dispatcher0xee4c volatile-pointer candidate was
probed but remains parked;details in WORK_CLAIMS.md.

Older checkpoints below are historical. Goal remains incomplete.

# Alice — latest verified decimal-formatter checkpoint

Goal active,incomplete: exact V204 bytes and zero inline asm in reconstructed
sources. Decimal display formatter0x3148 is now entirely C,including its
physical segment table. Native ac6 reproduces all140bytes. Documented unsigned
comparison preserves original leading-padding codegen; equality output-loop
bound preserves instruction ordering. No asm or fixed-register constraints.

Full96822 and source-only61794 exit0:562 sections,451 units,canonical payload
and OTA hashes independently checked. Payload67136,container67200bytes.
Audit71400:97 direct/118 expanded,zero preprocessing failures. Artifacts
/tmp/sr08-alice-decimal.{elf,payload.bin,bin},
/tmp/sr08-alice-decimal-standalone.bin;579-file standalone source bundle
/tmp/sr08-alice-decimal-bundle. All Alice processes terminal. Merge function
source,ac6 compiler group and CSV style. No shared ABI/data/placer changes.
Redundant pending C deleted. Normal data ownership suppresses the old digit
table output,now covered by the compiler-emitted C constant.

Jeff's ongoing tree was read only to avoid duplicate work;not edited or merged.
Older checkpoints below are historical. Remaining assembly still requires
further work;this is not completion of the goal.

# Alice — queue/calendar investigation after correlation checkpoint

No additional code conversion accepted. Zero-asm C candidates for queue
compactor0x24dc and calendar converter0x9004 are in Alice pending_candidates/.
The queue is close (copy/multiply pair plus two shared literal loads differ
in LTO). Calendar needs arithmetic scheduling/branch codegen work.
Corrected calendar field descriptions: year since1900; last word is one-based
day-of-year. Shared header changes are comments only; ABI/names unchanged.
Host candidate matches Python UTC calendar fields for49716 timestamp cases;
this is semantic validation,not V204 machine-code or runtime parity.
WORK_CLAIMS.md records probes and boundaries. All claims released,all jobs
terminal. Last accepted correlation checkpoint below remains current:
563sections451units,98 direct/119 expanded. Jeff files untouched.

# Alice — latest verified correlation checkpoint

Goal active,incomplete: exact V204 bytes and zero inline asm throughout
reconstructed sources. compute_fixed_point_normalized_cross_correlation
0xf014 now fully C, with explicit wrapping32 arithmetic and the original
two-stage signed division. ARM5 emits the original264-byte aligned region.
Inlining arithmetic as C expressions, ordered comparisons and split sample
loads/shifts resolved allocation differences; no asm or fixed registers.

Full24039 and source-only76767 exit0:563 sections,451 units,canonical hashes.
Payload67136 bytes,container67200. Audit11230:98 direct/119 expanded,zero
preprocessing failures. Artifacts /tmp/sr08-alice-correlation.* and
/tmp/sr08-alice-correlation-standalone.bin;578-file source-only bundle
/tmp/sr08-alice-correlation-bundle. All correlation jobs terminal. Merge
function source,ac5 group,CSV style. No shared ABI/data/placer changes.

Older checkpoints below are historical. The frequency-average0xcf80 C
candidate is parked (allocation and padding boundary); Jeff files untouched.

# Alice — investigation batch after identity update

No new conversion accepted. Three zero-asm C candidates preserved in Alice's
pending_candidates/: display value/mode0xa960 (only five literal loads differ
in LTO), phase glyph display0xaae8 (select/pools differ), and fixed-point
correlation0xf014 (ARM5 register/scheduling mismatch). Original sources remain
installed. WORK_CLAIMS.md records results; all claims released and all probe
processes terminal. Current audit99 direct/120 expanded across451 units,zero
preprocessing failures. The verified HID-sender checkpoint below remains the
last accepted build; no linker gates or compiler profiles changed this batch.

# Alice — latest verified HID sender checkpoint (2026-11-14)

Goal active,incomplete: exact V204 bytes and zero inline asm in reconstructed
sources. Latest accepted allocate_ble_data_record_and_send0x3ab0 is fully C,
identified as a HOGPD_REPORT_UPD_REQ sender,not a generic sensor record or
CUSTS1 message. SDK layouts match report length4,index6,payload7 and the vendor
reports-in-flight byte34. Both diagnostics are ordinary C string literals.
Native ac6144-byte region exact,no assembler constraints.

Full95864 and standalone66132 pass canonical hashes:564 sections,451 units,
67136-byte payload,67200-byte OTA. Audit34678:99 direct/120 expanded,zero errors.
Artifacts /tmp/sr08-alice-hid-sender.{elf,payload.bin,bin} and
/tmp/sr08-alice-hid-sender-standalone.bin;578-file source-only bundle
/tmp/sr08-alice-hid-sender-bundle. All Alice processes terminal.

Merge dependencies:sender C source,ac6 group,catalog update. No shared headers
or ABI/placer changes. Local task-getter declaration follows SDK uint16 API;
legacy shared ROM header has wider declaration and was left unchanged.
Previous NVDS-word-table,parameter-update callback and unbound display-helper
changes below remain needed. Jeff files/private data untouched. Older sections
are historical;use this checkpoint for current counts.

# Alice — latest verified BLE callback checkpoint (2026-11-14)

Goal active,incomplete: exact V204 bytes and zero inline asm in reconstructed
sources. Alice works in exact_clang18_alice; Jeff owns his tree. Latest accepted
param_update_request_timer_cb0xad78 is fully C,128 bytes exact. The old generic
sensor-freshness label was misleading; SDK user_app_connection already mapped
this address to its parameter-update callback. Two wrapping reference checks,
6001/4001 thresholds,80/80 interval request and200-delay timer preserved;no
unverified conversion of time units or meaning for word74 is asserted.

Full44909 and standalone31524 pass canonical hashes:565 sections,451 units,
67136-byte payload,67200-byte container. Audit44998:100 direct/121 expanded,
zero preprocessing failures. Artifacts /tmp/sr08-alice-ble-timer.{elf,payload.bin,bin}
and /tmp/sr08-alice-ble-timer-standalone.bin;578-file source-only bundle
/tmp/sr08-alice-ble-timer-bundle. All Alice jobs terminal.

Merge dependencies in WORK_CLAIMS.md:callback source/name/manifest/catalog,
ac6lto group,two caller updates,and additive shared layout selector. No new
shared RAM fields or compiler/placer changes. Jeff files remain untouched.
Previous NVDS-native-word-table and display-helper changes below remain needed.
Older checkpoint sections below are historical,not current counts.

# Alice — latest verified checkpoint (2026-11-14)

Goal active,incomplete: bit-matching firmware and zero inline asm throughout
reconstructed sources. Alice works in exact_clang18_alice; Jeff owns his tree.
Latest: NVDS getter0xa7a0 fully C,with original word jump table. Two old assembly
chunks became one nvds_get_func unit. Total451 units,101 direct/122 expanded
assembly-containing units,zero preprocessing failures. Full44648 and source-only
70067 passed canonical hashes:566 sections,67136-byte payload,67200-byte OTA.
Artifacts /tmp/sr08-alice-nvds-c.{elf,payload.bin,bin} and
/tmp/sr08-alice-nvds-c-standalone.bin;578-source-file bundle
/tmp/sr08-alice-nvds-c-bundle. All Alice processes terminal.

Matching recipe: native ac6wordtables profile disables Thumb1 synthetic TBB
only for this group. Scalar readonly NVDS defaults are folded via shared
sr08_nvds_config.h initializer; BD address still read from nvds_data_storage.
V204_nvds.c uses the same initializer,stored14 bytes unchanged. Global LTO
compression disable was rejected because it changes a correct bond-handler
switch. No linker/hash validation weakened. See WORK_CLAIMS.md for merge
checklist; Jeff's files/private data were not changed.

Older sections below are historical; use this checkpoint for current counts.

# Agent identity and current tree — supersedes historical path labels

Alice works in `firmware/reconstructed/exact_clang18_alice/` (renamed from
`exact_clang18/`). Use Alice in ownership labels and future notes. Jeff owns
`exact_clang18_jeff/`; his directory and self-references were left unchanged.
Historical `/tmp/` artifact names are retained because those are real paths.
Third merge baseline: 569 sections,452 units,103 direct/124 expanded assembly
units per WORK_CLAIMS.md. Reconstruction remains incomplete. This naming task
does not resume firmware conversion work.

# Current merge status — supersedes older handoff sections

Second merge completed per WORK_CLAIMS.md and DEVELOPMENT_HISTORY.md. Both
trees reported canonical payload/container hashes:575 sections,455 units.
Fresh independent Alice audit /tmp/sr08-current-merged-audit.json:112 direct/136
expanded assembly entries,zero preprocessing failures. The earlier156 count
is superseded. Alice and parallel may diverge again as work resumes; do not
assume continued identity or blindly copy compiler/data files. See shared
WORK_CLAIMS.md for current ownership. This audit did not rerun the full build.

# SR08 V204 reconstruction handoff — 2026-11-14

## Objective and current state

Goal remains ACTIVE and incomplete: readable C, independent of original firmware
build artifacts, exact V204 bytes, and zero inline assembly in reconstructed
sources. Do not claim completion from the image hash alone.

Alice: `firmware/reconstructed/exact_clang18_alice/`,455 active manifest entries.
Latest audit:132 entries with direct assembly syntax,156 after expanding project
headers (24 hidden by macros),zero preprocessing failures. Counts include
register bindings and unused inline functions; they are not a behavior percentage.
Object/library-backed entries, inactive macros and compiler-specific branches
still require separate final audit. Earlier134/158 and136/160 counts are superseded.

Preserve all existing staged/unstaged work. No commits, pushes, flashing or new
subagents. Tools/SDK directories stay unchanged. Never print license keys or
TOOLS.INI LIC lines. Set shell workdir explicitly to the repository root.

## Coordination

Another agent, Jeff, works in exact_clang18_jeff. Do not edit that directory.
Read WORK_CLAIMS.md and per-source claims before choosing work. The trees were
re-synced by Jeff in the third merge (2026-11-14): 569 sections, 452 units,
103 direct / 124 expanded assembly units in both. WORK_CLAIMS.md has the details.
Shared include/data changes must preserve old fields/offsets/sizes. Coordinate
through notes. Do not blindly copy either tree's compiler groups or data files.

## Latest verified build

UART2 checkpoint supersedes the earlier timing-window checkpoint.
Repository /tmp/sr08-uart-config.elf,payload.bin,bin passed (20704 exit0).
Source-only /tmp/sr08-uart-config-bundle passed (1415 exit0), outputs
/tmp/sr08-uart-config-standalone.elf,bin. Both592 sections,455 units,67136-byte
payload,67200-byte container. Independently rehashed payload and containers:

- Payload:5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570
- Container:c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8

Audit /tmp/sr08-uart-config-audit.json:132 direct/156 expanded,zero errors.
Whitespace check passed. Display probe83396 exited1 and was rejected; original remains installed.

## Latest accepted C conversion

accumulate_two_timing_deltas_update_wrapped_at_8bdc,0x07fc8bdc:96 bytes,ac6lto.
Queries two record windows, with an intervening volatile store and post-call
reload; adds results and commits the published word only on a9000-threshold
crossing. Simple if/else-if predicates preserve the original comparisons;
equivalent early-return/goto spelling changed bound registers and conditions.
No new RAM aliases, layouts or compiler/placer policy changes.
Candidate/probe files: build/cand/name_and_timing/, /tmp/sr08-window-sum-lto.log.
Its raw time pointer0x07fd0858 is another site that must use the parallel
clock_timekeeping_state symbol if that symbol is merged into Alice.
All earlier accepted BLE, RCX/cache and console recipes are in development history.

Cached-name validator remains original/parked, not accepted. Source candidates
in build/cand/name_and_timing/ read20 bytes from flash0x64000 into merged574c
at+0x14. Validate marker43, length1..17 and strlen; invalid marker132/fallback
SR08,length4. Ac6/LTO84-byte output still differs22 byte offsets: lost persistent
record pointer, root+39 length load instead of record+19, and fallback ADR/MOV
order. Split helper/source scheduling identical; -Os/O1/O2 worse; ARM5 --gnu
with portable assertions ran but differed65 bytes. Do not repeat unchanged.
No validator gates were weakened and the failed C candidate was not installed.

## Post-sync dependencies and accepted compiler recipes

- gapc_param_update_commands=RAM0x07fd53c0 is now a Alice dependency. Preserve
  the new RAM-table symbol; shared GAPC header was not changed.
- coordinate_queue_state=RAM0x07fd1f1c is a Alice dependency, in canonical
  V204_ram_symbols.json and extern in sr08_coordinate_queue.h. Preserve on sync.
- device_control_state=RAM0x07fd1e28 is canonical; do not remove based on old
  HID-cleanup experiments. Shared type is sr08_radio_configuration_state.
- V204 profile record alias at0x07fc0110 refers to existing fixed data, allocates
  no storage and must be treated as data, not a Thumb function. Meaning unknown.
- ac6source preserves the six-byte reverse copy with separate store/increment.
  Alice build/addgroup.py ALREADY preserves arbitrary compiler keys, including it.
- PRIMASK C routine uses native Clang18 intrinsics/signal fences plus aggressive
  machine CSE and disabled tail merging; flags live in SOURCE_FLAGS.
- initialize_state_and_return_one uses ac6apcs for its four-byte stack frame.
- arch_printf is344-byte native ac6 C, with96-byte buffer/24-byte integer scratch,
  va_list declared first, captured destination and ordered volatile byte writes.
  sr08_format.h now returns void; V204 epilogue restores LR through r0, not a count.
- Integer formatter is152-byte ac6lto SDK arch_itoa, without the guard absent from
  V204. Original SDK reversal loop matches; native scheduling rewrites do not.
  SDK notices retained in copied console sources.

## Verification and tooling rules

Normal builds do not consume original V20*.bin/Ghidra/intermediate artifacts.
Manifest is authoritative. export_source_bundle.py exercises source independence.
Native compiled text ranges own any emitted literal pools; only fully covered
old fixed-data sections are suppressed. Partial overlaps still fail.

LTO uses source-built surrounding-code context. Strict link, instruction/address
and loaded-value validation, overlap rejection and canonical hashes must remain.
Diagnostic overlap links are never accepted outputs. The merged placer has
per-site raw retries, kept literals, halfword-region chaining and pre-merge range
checks; preserve those changes. SR08_LTO_KEEP retains artifacts. SR08_LTO_SPILL
expects a numeric scatter address, NOT a directory.

Wine builds and native ac5 need elevated sandbox execution; native ac5 otherwise
dies SIGSYS. Native ac6 works sandboxed. No need to install/upgrade tools.
Do not interpret expired observation as stopped work: poll the same handle or
inspect authoritative terminal state before restarting.

Audit command:

    python3 firmware/reconstructed/exact_clang18_alice/audit_inline_assembly.py --list

Default GCC preprocesses all455 entries, excluding compiler/system headers by
line-marker ownership. --require-zero returns1 while assembly remains. Bundle
use needs --arm-tools-dir. Latest report /tmp/sr08-window-sum-audit.json. The
previous independent audit bundle matched the repository report exactly.

## Parked work and next actions

Consult live WORK_CLAIMS before selecting another function. Do not repeat
unchanged parked candidates. Display candidates in build/cand/display_modes
still have literal/address-generation mismatches; traced isolated signed-byte
formatter reaches strict link but selectsace0 instead ofac78 at a8f4. Combined
mode/remainder probe fails context a906 value validation. Placer checks untouched.
Packed-word stores shift the second function toaccc rather thanacd0 under both
LTO/native grouping; halfword store selectsace0 rather thanacb4. Broader changed
addressing/global-merge evidence is needed before another attempt.

Shared display/halfword macros hide assembly in24 entries; use the audit output
for systematic conversion. SDK app_db_init_next/advertising allocation and other
hard cases are documented in WORK_CLAIMS and development history. Keep the full
zero-assembly goal intact; bit parity is already available but C recovery is not.

## UART2 accepted checkpoint (supersedes pending-candidate notes)

quiesce_irq_source_wait_pending_bit_at_c4b0 is now C,120-byte native ac6.
Repository /tmp/sr08-uart-config.bin and source-only bundle
/tmp/sr08-uart-config-bundle -> /tmp/sr08-uart-config-standalone.bin both pass
canonical hashes:592 sections,455 units. Independently hashed payload and both
containers. Builds20704/1415 exited0. Audit70649 exited0:132 direct/156 expanded,
zero preprocessing failures. Old sandbox run8558 failed in ARM5 execution and
was superseded by elevated verified builds. No compiler/placer policy changes.
Alice display-pattern probe0xab78 exited1; original source retained,claim released.
Candidate preserved outside ignored build scratch:
exact_clang18_alice/pending_candidates/select_two_display_patterns_mode_flag_at_ab78.c.txt.
Native ac6 uses different registers/address formation and grows into next entry;
LTO fails L6291E ER_07fcabac overlap (next available0x07fcabb4). Do not install.

## Merge handoff requested by user (done: third merge, 2026-11-14)

Jeff (the agent in exact_clang18_jeff) owns the next merge/sync. Alice is stopping new conversions and
preserving accepted work in place. Do NOT git-stash the shared worktree wholesale:
it contains both agents' staged/unstaged changes. The only unfinished Alice
candidate is preserved in pending_candidates as text,not included in manifest.
All original gates remain strict; no failed candidates installed.

Alice-only UART2 change since prior handoff: native ac6 compiler group for
quiesce_irq_source_wait_pending_bit_at_c4b0,its C source,and corrected catalog
description. No new shared headers or RAM symbols for this conversion. Merge
this group additively into parallel's groups; do not overwrite its UART ISR work.
Earlier Alice-only changes/dependencies are listed above and in WORK_CLAIMS.md.
Parallel-only fixed clock_timekeeping_state symbol requires migration of Alice's
raw0x07fd0858 references when merging,as already noted.

Final fresh Alice build34352 PASSED (exit0):592 sections,455 units,canonical
payload/container hashes independently rechecked. Log /tmp/sr08-main-handoff.log;
outputs /tmp/sr08-main-handoff.{elf,payload.bin,bin}. Fresh audit55023 exited0:
132 direct/156 expanded,zero preprocessing failures. All Alice processes terminal.
Candidate archive includes README explaining rejected probe; claim released.
Goal remains incomplete and user-paused for handoff; do not resume conversions
or perform merge until requested. No commits,pushes or flashing performed.

Postmerge Alice investigation: elapsed display0xace8 original remains installed;
C candidate parked in exact_clang18_alice/pending_candidates/. See WORK_CLAIMS.md for
exact scheduling/literal mismatch and rejected LTO21042. Corrected misleading
minute/second comment to hours/minutes. No compiler/group/shared-data changes;
no Alice processes running.

Alice status dispatch0x80d8 recovered as C but parked,not installed. Candidate
in pending_candidates/; native/LTO direct offsets differ from V204 base+0x4c
address formation. See WORK_CLAIMS.md. All Alice probes terminal,no new build
inputs or compiler policies changed in this investigation.

Latest Alice verified checkpoint: named clock alias migration for accumulator
0x8bdc accepted,96 bytes exact. Repository7158 and source-only69485 passed
canonical hashes; /tmp/sr08-clock-alias.bin and
/tmp/sr08-clock-alias-standalone.bin. Source-only577 files. Audit112 direct/136
expanded,zero failures. This Alice-only source change must be included in the
next sync; uses existing clock_timekeeping_state declaration/layout,adds no
shared dependencies. All Alice processes terminal. Goal active,incomplete.

Latest accepted Alice step: display-pair writer0xaa4c one inline ADD block
replaced by C pointer arithmetic;28 bytes exact,native ac6 group. Two asm
literal loads remain. Repository39210/source-only10397 exit0,575 sections,
canonical hashes independently checked. /tmp/sr08-display-add.bin and
/tmp/sr08-display-add-standalone.bin. Audit57350:112 direct/136 expanded.
All-C trial parked,not installed. All Alice processes terminal.

Postmerge BLE wakeup discovery0x1c18: SDK BLE_WAKEUP_LP_Handler + inlined
power_up/patched_ble_regs_pop. Pure C candidate matches every non-literal
native instruction. LTO rejected: unused/retained root pool word at1e70 grows
existing process_radio_state_if_active into next fixed region. Artifacts
/tmp/sr08-wakeup-keep/,trace /tmp/sr08-wakeup-trace.log. Candidate preserved in
pending_candidates/,not installed. Detailed evidence in WORK_CLAIMS.md.
No Alice processes live,no placer/gate changes.

Wakeup follow-up: numeric-reference variant rejected (+8 bytes shifts GPIO0);
source preserved in pending_candidates/*_numeric.c.txt. Correction: extra1e70
literal in named variant is LIVE for wakeup LDRs1c60/1cb2,not unused; do not
delete it. Root-relative relocations vs numeric scalar addresses change pool
sharing. See WORK_CLAIMS.md and numeric artifacts. No installed changes.

Latest accepted checkpoint: BLE wakeup0x1c18 now C control flow with TWO
one-instruction shared-pool loads remaining. Native ac6 group,196 bytes exact.
Replaces naked full asm body; all-C candidate still pending. Repository64366
and standalone64052 pass canonical hashes:574 sections,455 units. Artifacts
/tmp/sr08-wakeup-c.bin and /tmp/sr08-wakeup-c-standalone.bin;577-file bundle
/tmp/sr08-wakeup-c-bundle. Audit112 direct/136 expanded,no failures. No Alice
processes live. Goal remains active; zero asm not achieved.

Current LIVE Alice step: piecewise mapper0x4164 all-C installed (no asm).
LTO97300 probe exit0,128 bytes exact. Native readable bounds equivalent and
exact. Source-only79438 exited0,573 sections,canonical hash; bundle
/tmp/sr08-piecewise-c-bundle,output /tmp/sr08-piecewise-c-standalone.bin.
Alice full build18087 subsequently PASSED (exit0),573 sections,canonical
payload/container hashes independently verified. Log /tmp/sr08-piecewise-c.log. Audit87610
exit0:111 direct/135 expanded,no failures. Complete Alice gate before final
acceptance. Existing mapper claim remains Alice-owned.

Latest accepted checkpoint: all-C piecewise mapper0x4164 accepted with full
Alice build18087 and source-only79438 exact;573 sections,455 units. No inline asm in
this routine. Alice111 direct/135 expanded. All Alice processes terminal.

Alice rename verification: full build89026 exited0 from exact_clang18_alice,
569 sections,452 units. Payload and container hashes independently match
canonical values. Outputs /tmp/sr08-alice-rename.{elf,payload.bin,bin},log
/tmp/sr08-alice-rename.log. Source-only export /tmp/sr08-alice-rename-bundle
succeeded (577 files); all452 manifest paths exist. Audit62334 exited0:
103 direct/124 expanded,zero preprocessing failures. No stale operational
exact_clang18/ paths in Alice code/manifests. Historical /tmp artifact names
remain unchanged. Jeff tree untouched. All Alice jobs terminal.

Alice postmerge cleanup: 11 stale unmanifested custs1 manual duplicates removed
(six contained asm); live C definitions in custs1_profile.c retained. Five
active manual custs1 files untouched. Function catalog source/style/summaries
corrected. Exported inputs byte-identical to last verified Alice rename build
and before/after cleanup:577 files plus README. Audit unchanged103 direct/124
expanded,no failures. Jeff tree untouched. Clock renderer0xa9d0 C candidate
parked on branch/layout differences,not installed; details in WORK_CLAIMS.md.
All Alice processes terminal.

Alice sensor initializer0xd908 C candidate parked,not installed. Existing
checked sensor-status structs cover full history/sample layout; candidate
preserves original store order but native/LTO register and loop allocation
differs. pending_candidates/initialize_shared_control_state_tables.c.txt.
See WORK_CLAIMS.md for probes already tried. Original source restored exactly;
no build/manifest/header policy changes. All Alice jobs terminal.

Alice latest accepted step:11 halfword writers now use additive shared helper
sr08_display_halfword_store.h with no fixed-register binding. Still one asm
literal load each. All11 object sections/relocations unchanged; main29070 and
standalone35924 canonical (569 sections,452 units). /tmp/sr08-alice-halfword.bin
and /tmp/sr08-alice-halfword-standalone.bin. Audit103 direct/124 expanded;
family construct count22 ->11. Old helper retained for Jeff; migrate/remove
once both trees stop using it. All-C family candidate parked on8e50 vs8e3c
literal selection,not installed. All Alice jobs terminal.

Alice action dispatcher0x8040/8068 C candidate parked,not installed. Word-table
profile fixes dispatch prefix; field-base addressing/default-return layout
still differs. pending_candidates/action_dispatch_8040/ has two clean C forms
and rejected-attempt notes. Original sources restored. No compiler/manifest/
shared-header changes this investigation. All Alice jobs terminal.
