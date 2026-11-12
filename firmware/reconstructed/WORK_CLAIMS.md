# Work claims: V204 conversion

All work now happens in one tree, `exact_clang18/`. Jeff and Alice used parallel copies (`exact_clang18_jeff/`,
`exact_clang18_alice/`) until the unification on 2026-11-17; the Agent column keeps those names for history and for
new claims (either agent, or another named one).

The table lists only active claims and released/parked units. Installed units are removed at each merge; their
history is in the merge sections and DEVELOPMENT_HISTORY.md.

Before starting a unit, check this list and add yours. A claimed unit's source also gets a
`/* CLAIMED: ... see WORK_CLAIMS.md */` first line (a comment, so the bytes don't change).
Changes in the shared `include/` and `data/` folders are additive only.
Either agent may pull verified finished units or perform synchronization; there
is no permanent merge owner. Carry required settings/renames together and verify
the combined build. The user's permission covers necessary symbol renames when
importing completed work; preserve addresses, layout and emitted bytes.

Merge of 2026-11-14 (fourth merge, done by Jeff while Alice was paused): Jeff's tree was the base; Alice's
post-third-merge installs (0x1ee8 wait_i2c_rx_fifo_or_timeout, 0x3148, 0x8a78, 0xa7a0 nvds_get_func with the new
`ac6wordtables` profile, 0xad78, 0xf014, 0x3ab0 summary, data/V204_nvds.c) were ported in, then Alice's tree and the
shared `data/` were regenerated from Jeff's. Both trees build to the canonical payload and container hashes and to
byte-identical containers (528 sections, 451 units; 85 direct / 91 expanded assembly units). Overlaps: the display
halfword family (0x8b20..0x8bd0) and allocate_ble_data_record_and_send use Jeff's all-C ac6lto versions; for the two
pending candidates both agents had edited, Alice's is `<name>.c.txt` and Jeff's is `<name>_jeff.c.txt`. Installed
rows were cleared; parked rows and Alice's active claim stay. Pre-merge backup of both trees, data/, include/ and
these notes: Jeff's job tmp `backup_merge4/trees.tgz` (temporary). DEVELOPMENT_HISTORY.md has the third merge's details.

| Unit (V204 name) | Address | SDK name | Agent | Status |
|---|---|---|---|---|
| process_sensor_frame_entry_dd68 (+ e194, e6b0, eb78) | 0x07fcdd68 | sensor frame processing (whole routine) | Alice | released: parked; corrected whole C candidate, ARM5 O2 3596 bytes /3450 overlap differences and80 missing bytes; source/compiler/pool ledger below |
| synchronize_callback_values_and_notify | 0x07fc85e0 | callback value synchronization | Alice | released: parked; native 160 bytes / 100 differences; LTO retained-word collision; complete lever ledger below; ASM remains |
| load_and_update_persistent_measurement_state_block_at_48a8 (+ 0x4cb0) | 0x07fc48a8 | minute histories / quarter-hour activity and sleep records | Alice | released 2026-11-17 at unification (Alice away): parked; was an active exact-match goal; mode snapshots/shared divisor-mode union joint1196/924 plus24 missing=948; helper exact; SP+16 structural candidate also retained |
| handle_record_flag_and_queue_sensor_configuration | 0x07fc4e98 | queue configuration on record-state transition | Alice | released: parked jointly with48a8; all156 bytes exact, installation requires the inexact parent/pool owner |
| initialize_sensor_processing_state | 0x07fcec2c | measurement-state initialization | Jeff | parked (lever ledger row) |
| average_top_three_nonzero_sample_values_by_frequency | 0x07fccf80 | sample-frequency average | Alice | released: parked; 0xcf80: ARM5 300 bytes / 77 differences; candidate and lever results in Alice parked ledger |
| initialize_shared_control_state_tables | 0x07fcd908 | sensor state initializer | Alice | released: parked; all applicable lever results in Alice parked ledger; ARM5 O2 136 bytes / 24 differences; control_initializer |
| wait_shared_timer_delta_exceed_requested_at_4458 | 0x07fc4458 | BLE base-time delay | Jeff | released: parked (code exact; literals live in 0x44a8 pool) |
| process_sensor_frame_and_update_state_block_at_eb78 | 0x07fceb78 | unresolved / existing name | Jeff | released: chunk of process_sensor_frame_and_update_state (0x07fcdd68-0x07fcebc4); convert with the whole routine |
| apply_range_mode_validity_checks_preserving_at_8878 | 0x07fc8878 | sensor reading validity | Alice | released: parked; own104 bytes exact, full image differs one82b2 LDR byte; complete pool/ownership ledger below; ASM retained |
| save_valid_measurement_range_clear_stale_at_8500 | 0x07fc8500 | sensor reading acceptance | Alice | released: parked; native best 112-byte region / 90 differences; full LTO 108-byte extent still inexact; complete bounded lever results below; ASM retained |
| perform_flash_memory_operation | 0x07fc3ea0 | vendor flash wrapper | Alice | released: parked; main LTO 512 bytes / 422 differences; source/profile/pass and pool results below; ASM remains |
| start_or_stop_sensor_calibration | 0x07fc3838 | sensor calibration start/stop | Jeff | released 2026-11-16: parked again, one register choice left (see Jeff 0x3838 note) |
| read_three_byte_samples_and_update_history | 0x07fc8354 | FIFO sample reader | Jeff | released: parked (byte mismatch, see Jeff notes) |
| compute_and_store_display_coordinates | 0x07fcd0f0 | blood-pressure estimate (armcc 5 unit) | Jeff | released: parked (byte mismatch, see Jeff notes) |
| update_motion_sample_history_and_activity_flags | 0x07fc41e4 | motion history / wake / level flag | Jeff | released: parked (register rotation only, see Jeff notes) |
| filter_accelerometer_sample_and_classify_level | 0x07fcd2dc | accelerometer filter / motion level | Jeff | released: parked (byte mismatch, see Jeff notes) |
| process_sensor_mode_and_update_display | 0x07fc3584 | sensor mode / display update | Jeff | released: parked (byte mismatch, see Jeff notes) |
| update_clock_and_process_events | 0x07fc44a8 | clock tick / calendar / event processing | Jeff | released 2026-11-16: parked again at 12 normalized lines (rebase add order + night-check sink; see 0x44a8 note) |
| process_motion_axes_and_activity_state_block_at_ca68 (+ block_at_ce6c) | 0x07fcca68 | motion axes / activity state (whole routine) | Jeff | released: parked (74 of 569 raw lines, see Jeff notes) |
| estimate_pulse_rate_from_sample_window | 0x07fcd9c8 | pulse rate from the sample window | Jeff | released: parked (ac5 regalloc only, see Jeff notes) |
| process_measurement_records_and_sensor_state_block_at_b1b0 (+ b5d0) | 0x07fcb1b0 | BLE history-sync tick | Jeff | released: parked (block layout, 186 of 686 normalized lines, see Jeff notes) |
| update_sensor_signal_state_from_sample | 0x07fcd4f8 | sliding-DFT pulse-rate tracker (ac5) | Jeff | released: parked (ac5 regalloc/constant hoisting only, see Jeff notes) |
| dispatch_sensor_and_display_events_block_at_25c4 (+ 26ac, 2770, 2b70, 2bd8) | 0x07fc25c4 | BLE command handler | Jeff | released: parked (380 of 953 normalized lines, block placement, see Jeff notes) |
| dispatch_radio_and_sensor_state_events_block_at_9104 (+ 91a8, 9538) | 0x07fc9104 | sensor gain/LED adaptation tick | Jeff | parked (lever ledger row); candidate in Jeff pending_candidates/ |
| initialize_sensor_measurement_state_block_at_98d4 (+ 9cfc, 9da0, a1a0, a538) | 0x07fc98d4 | SDK arch_main.c main() (system_init, app init, main loop inlined) | Jeff | parked (lever ledger row); candidate in Jeff pending_candidates/ |
| dispatch_timed_state_callbacks | 0x07fc8c90 | TIMER0 callback (display multiplexer) | Jeff | released: parked (byte mismatch, see Jeff notes) |
| process_sensor_reading_and_update_state | 0x07fc20f0 | battery service tick (ADC calibrate, level, charger state) | Jeff | released: parked (byte mismatch, see Jeff notes) |
| configure_command_record | 0x07fc8134 | command record setup | Jeff | released: parked, see "Jeff since the fifth merge" |

## Unification into exact_clang18/ (2026-11-17, by Jeff, at the user's request)

Alice was away and parallel work was no longer needed, so both trees were merged into `firmware/reconstructed/exact_clang18/`:
- base: Jeff's tree (identical in sources, build settings and catalog to Alice's after the 0x302c sync); paths
  rewritten, and the build now reads the shared `firmware/reconstructed/data/`. Jeff's private `data/` copy was
  dropped; its only extra was the `hourly_record_bitmap` RAM symbol, which only the parked 0x44a8 candidate needs.
- pending_candidates: union of both. Where both had a file, Alice's newer version was kept (display_word_writers,
  initialize_shared_control_state_tables, PERSISTENT_HISTORY_NOTES). The two README files were concatenated.
- DEVELOPMENT_HISTORY.md: Jeff's history with Alice's extra entries inserted in place. README: Jeff's, plus Alice's
  LTO_FIXED_UNITS paragraph.
- Alice's CLAIMED first-line markers were not carried over. Her active 0x48a8 claim is released. She also had
  V204_reconstructed.bin, a build artifact, which was not carried over.
- Outside references were repointed: root README, reconstructed README, functions/rename_decompiler_symbols.py,
  data/generate_ghidra_data.py, third_party READMEs, build/addgroup.py, build/lto_relink/relink.py.
- Verified: 479 sections / 449 units, canonical hash, container `cmp` equal to firmware/V204.bin, audit 44 direct /
  44 expanded, tests OK.
- The old trees were removed. Backup of both trees, data/, include/ and the notes:
  `firmware/reconstructed/build/pre_unify_backup_2026-11-17.tgz`.
- Paths in the older sections below refer to the old trees.

## Seventh merge (2026-11-17, by Jeff, at the user's request; Alice idle since 2026-11-16 05:21)

Jeff's tree was the base. Alice had no accepted work newer than her 0x1c18 pull: her tree differed from Jeff's only by
her CLAIMED marker lines, tree-specific paths, the 0xab3c LTO_FIXED_UNITS entry (which Jeff dropped on purpose when the
display cluster went in), and row order in V204_manual_exact.csv.
- Synced into Alice's tree from Jeff's, with paths rewritten to hers (build_v204.py keeps the shared `data/` for
  DATA_DIR and LTO_READONLY_SOURCES):
  - build_v204.py, V204_function_names.csv;
  - 15 manual sources: the display cluster (0xa84c, 0xa89c, 0xa8ec, 0xa904, 0xa960, 0xa9d0, 0xabb4, 0xacd0, 0xace8),
    0x24dc + 0x2568, 0xa64c, 0x9004 and 0x552c. This includes FIXED_DATA_SYMBOLS hid_mouse_sequence and
    hid_touch_y_sequence.
- Kept in Alice's tree: her CLAIMED first lines (0x8878, 0xcf80, 0x4e98, 0xd908, 0x48a8, 0x4cb0, 0x3ea0, 0xdd68, 0x8500,
  0x3b78, 0x85e0), pending_candidates/, README.md, DEVELOPMENT_HISTORY.md, V204_reconstructed.bin and
  rename_function_identifiers.py (shared-data path).
- Not merged: Jeff's tree-local data/ additive `hourly_record_bitmap` RAM symbol. Only the parked 0x44a8 candidate
  needs it, so the shared data/ is unchanged.
- Installed rows cleared from the claims table (15): format_signed_state_byte_as_three_display_digits 0x07fca8ec; write_literal_halfword_to_shared_state_offset_0x40 0x07fca904; write_shared_state_byte_44_and_word_40 0x07fcacd0; find_latest_valid_record_within_bitset 0x07fc552c; advance_registration_data_transfers 0x07fca64c; convert_timestamp_to_calendar_fields 0x07fc9004; search_circular_record_queue_and_compact_if_needed 0x07fc24dc; select_measurement_text_update_per_result_at_aae8 0x07fcaae8; use_supplied_timing_value_derive_display_at_a960 0x07fca960; render_current_time_charging_measurement_markers_at_a9d0 0x07fca9d0; convert_elapsed_sensor_time_minute_second_at_ace8 0x07fcace8; initialize_configuration_record_defaults 0x07fc2568; select_measurement_marker_value_according_active_at_abb4 0x07fcabb4; update_mode_bits_and_notify_display_service 0x07fca84c; update_companion_mode_bits_and_notify_display 0x07fca89c.
- Both trees build to the canonical hash, and their containers `cmp` equal to firmware/V204.bin: 484 sections, 449 units.
  Audit 46 direct / 46 expanded. tests/ pass in both trees.
- Pre-merge backup: Jeff's job tmp `backup_merge9/trees.tgz` (both trees, data/, include/, WORK_CLAIMS.md, HANDOFF.md).

## Sixth merge (2026-11-16, by Jeff; Alice paused mid-experiment)

Jeff's tree was the base. Only Alice's accepted, full-image-verified work came over. Her unfinished experiments
(pending_candidates measurement_text/, elapsed_display_offset/, probe_cached_context.py) were not touched.
- From Alice:
  - accepted native C units 0x80d8 dispatch_enabled_indicator_fields_for_device_status (ac6 group) and the
    0xa914 / 0xacb8 pair (main display native group + LTO_NATIVE_UNITS), with their catalog rows;
  - the arm_compilers.py change that resolves a module-owned literal target before looking for a local copy,
    plus tests/test_stub_local_literal.py and tests/test_lto_region_gap.py;
  - the 0x2568 event-ring type cleanup (still asm; her claim stays);
  - the read_callback_pair_for_mode_window_39_3a/42_43 move to sr08_callback_samples.h, the 0x85a0 include, and
    the summary rows for those units;
  - the `erase_flash_range_status` calls in initialize_display_image_region_and_fixed_header,
    stage_and_program_flash_region_3c000, translate_rom_result_to_display_coordinates, user_app_disconnect and
    user_app_on_pairing_succeeded. Jeff's 0xc728 caller got the same rename.
- Installed rows were cleared from the claims table (15 units, now C in both trees: 0x8040, 0x1da8, 0xbb38,
  0xbb94, 0x3d6c, 0xaa4c, 0xac20, 0xaa68, 0x1f34, 0xc728, 0x7380, 0xadf8, plus 0x80d8/0xa914/0xacb8).
- NOT merged: the 0xacd0 writer candidate (per Alice's note; its source stays asm and her claim stays).
- From Jeff: everything under "Jeff since the fifth merge" (0x1da8, 0x3d6c, 0x1f34 WKUP_QUADEC_Handler rename,
  periph_init 0xadf8, 0xc728, Alice's 0xa9b4/0xaac8 already merged earlier).
- Alice's tree was then synced from Jeff's merged tree. Her 14 CLAIMED marker lines were kept, along with her
  pending_candidates, README.md, DEVELOPMENT_HISTORY.md and V204_reconstructed.bin. Her build still uses the
  shared data/. In data/, the 0x1f34 section name and the vector-table comment are now WKUP_QUADEC_Handler.
  Layout is unchanged.
- Both trees build to the canonical hash, and their containers `cmp` equal to firmware/V204.bin: 498 sections,
  449 units. Audit: 60 direct / 62 expanded, no preprocessing failures. tests/ (10) pass in both trees.
- Pre-merge backup: Jeff's job tmp `backup_merge7/trees.tgz` and `merge8/` (temporary).

## Fifth merge (2026-11-14, by Jeff; Alice paused at a usage limit)

Jeff's tree was the base; files were classified by modification time against the fourth merge (14:50).
- From Alice: advance_sensor_cycle_and_toggle_mode_flags (0xc8b0, ac6), build_sensor_command_packet_acquiring_shared_at_519c
  (ac6), dispatch_batch_item_three_sign_extended_at_ee4c (ac5), the native-context display routines 0xab3c / 0xab78 /
  0xac7c (`LTO_NATIVE_UNITS`), the diagnostic stub-copy resolver and Wine output capture in arm_compilers.py with
  tests/, the export_source_bundle.py SDK-startup fix, generate_function_names.py, her catalog rows, comment-only
  source edits and pending candidates (display_word_writers/, display_pointer_views/, persistent history).
- From Jeff: everything under "Jeff between the fourth and fifth merges" (ac6ltowordtables module, 0x8040, 0xaa4c,
  0xaa68, 0xac20, the removed-copy relink retry).
- Overlaps: 0xaa4c keeps Jeff's plain-LTO memcpy form (no annotation, no native compile); Alice's is the `_alice`
  candidate, and LTO_NATIVE_UNITS now lists her three other routines. arm_compilers.py keeps both copy fixes (Alice's
  resolves copies in overlapping diagnostic links, Jeff's a copy armlink removed in a normal link); probe and build
  pass native_units for the main module only. Alice's active claims keep their CLAIMED markers in her tree.
- Both trees build to the canonical payload and container hashes: 516 sections, 450 units. Audit 75 direct /
  80 expanded, no preprocessing failures. tests/ (3) pass.

## Alice between the fourth and fifth merges (now in both trees)

### ARM5 sensor dispatcher accepted (2026-11-14)

`dispatch_batch_item_three_sign_extended_at_ee4c` is ordinary C and byte-exact
over all **72 bytes including its root literal**. ARM5 5.06u7 reproduces its
four-register home slots, frame and right-to-left sample argument evaluation.
Plain/volatile pointer parameters with nonvolatile samples each differed in 21
bytes; volatile samples reduced this to ten, and moving the uint8 index init
before the context guard made the output exact. The simpler nonvolatile-pointer
form is installed. Full 32-bit count and wrapping uint8 index are preserved.
No new flags, aliases, bindings, assembly or linker modifications. Claim closed;
obsolete prior ARM6 candidate removed. For similar sensor units, test compiler
provenance before repeating Clang scheduling searches; this evidence is specific
to 0xee4c and does not establish the compiler of every other sensor routine.

Fresh standalone source-only build: **522 sections / 451 units; 78 direct /
84 expanded assembly units**, no preprocessing failures. All 580 exported
inputs match workspace files. Both payload and OTA compare directly equal to
OEM V204. Export `/tmp/sr08-alice-batch-dispatcher-source-bundle`; log/artifacts
`/tmp/sr08-alice-batch-dispatcher-standalone` with the usual suffixes. Three
existing support regression tests pass; all Alice jobs terminal. No Tools,
shared data/header or Jeff-tree changes, flashing, commit or push.

Six display candidates in `pending_candidates/display_word_writers/` remain
claimed/uninstalled: native bodies match except pools, 780 emulated cases pass,
but strict linking fails with retained-word overlap at acc8/acb0. Ordinary LTO,
native context, and moving retention references off the data word did not fix
the full case. The latter tool experiment was reverted exactly. Small native
C/private-copy context links DO match the writer's 24 OEM bytes in all six
input orders; reproduce and expand that reduction before changing the builder.
Full evidence and failed approaches are in that folder's README.

### Four display conversions and compiler fixes (2026-11-14)

Alice installed four ordinary-C display routines at 0xaa4c (28 bytes),
0xab3c (60), 0xab78 (60) and 0xac7c (60), including alignment/literals.
`LTO_NATIVE_UNITS` compiles these units without -flto, then links their normal
objects in the existing module for shared pools. Native instruction selection
preserves their pointer annotations; full LTO did not. No instruction bytes,
register bindings, new RAM aliases or relaxed parity checks were introduced.

The standalone source-only build is canonical: **523 sections, 451 units,
79 direct / 85 expanded assembly units**. All 580 exported build inputs match
workspace files exactly. Payload and OTA were also compared directly to OEM
V204. Export `/tmp/sr08-alice-display-four-formatted-source-bundle`; final log
`/tmp/sr08-alice-display-four-formatted-standalone.log`; artifacts use the same stem.
All four display claims closed; obsolete installed-candidate copies removed.
The optional emulator reads installed sources and verifies all 1024 config-byte
cases. Detailed native/LTO evidence is in
`pending_candidates/display_pointer_views/README.md`.

Merge Alice's build/compiler/probe changes together: native-unit configuration,
Wine regular-file output capture, and diagnostic cross-stub temporary-copy
ownership detection. The latter only requests existing raw-load retries;
diagnostic overlap links cannot yield placements. Three focused regression
tests pass, including rejection of unproven copy metadata and inherited-stderr
success/failure handling. No Tools, shared data/header or Jeff-tree changes.

### Pending persistent-history family (2026-11-14)

Complete C for 0x48a8+0x4cb0 is preserved in Alice's pending folder, with a
separate-predicate alternative. Original assembly remains installed. Five raw
loads in the parent use the context literal at 0x4f28; this explains why the
configuration candidate cannot be converted in isolation. Joint C/LTO probing
passes placement/retained-word guards and makes 0x4e98 exactly 156 OEM bytes,
but the parent is not byte exact. No new assembly conversion is accepted.

Optional Unicorn analysis compares executed OEM and C Thumb, global RAM,
synthetic flash and ordered I/O traces. Original candidate native/LTO each pass
304 cases; alternative passes 304 and a separate **5104-case** run. Reversing
the flag-history test fails case 18 (negative control). Released 0x552c C also
passes 138 record-window cases, but still has 47 differing bytes. None of these
behavioral results establish bit parity or real-device reliability.

Codegen searches: 768 forms / 312 binaries, then 32 root-annotation forms / 8
binaries; no exact parent. Preserve source patterns used by the search helper.
Detailed findings, commands, candidate hashes, stack layout and unsuccessful
experiments are in Alice's `pending_candidates/PERSISTENT_HISTORY_NOTES.md`.
Optional Unicorn resides only in `/tmp/sr08-alice-emulation-deps`; normal build
and source export have no new dependencies. Tools and Jeff's tree untouched.

At the earlier persistent-history checkpoint, the installed-input check was: **576
files identical and 4 comment-only C changes with identical preprocessed
tokens** (580 inputs total). Audit remains 451 units, 83 direct / 89 expanded.
These counts are superseded by the display batch above. Claims on the parent/configuration
family remain active. No flashing, commit or push.

- `advance_sensor_cycle_and_toggle_mode_flags` (0x07fcc8b0): ordinary native
  `ac6` C, exact **244 bytes including four literals**. Typed prefix views of
  canonical RAM names; explicit low-byte/kind/high-byte report serialization;
  capture `llc_env[0]` before mode hooks. Two pointer annotations retain V204's
  addressing without assembly. No custom flags or linker/placer changes.
- `build_sensor_command_packet_acquiring_shared_at_519c` (0x07fc519c): ordinary
  native `ac6` C, exact **100 bytes including three literals**. Samples BLE
  base-time counter (not a lock), writes the 20-byte 0x0c profile record, computes
  CRC-32 over 15 payload bytes with seed 0x4a59af55. Payload pointer annotation
  retains distinct byte stores. Both claims are closed.
- Shared `include/sr08_sdk_llc.h`: RSSI prefix layout checked against our own
  downloaded SDK 6.0.22, RSSI offset 0x24. RAM-symbol map unchanged, verified
  against the supplied pre-merge archive. **Do not introduce extra aliases for
  the canonical RAM roots:** that makes `data_at` ambiguous and perturbs LTO
  shared literals. The initial alias attempt failed the existing address guard;
  the final version keeps all guards unchanged and passes.
- `export_source_bundle.py` now includes every configured SDK assembly source;
  the fourth merge's startup source had been missing. Bundle README now records
  the native Arm and Wine/Keil requirements. Bring this exporter fix over too.
- Full source-only gate from `/tmp/sr08-alice-sensor-packets-source-bundle-complete`
  passes: **580 exported inputs, 526 sections, 451 units, 67,136 payload bytes**.
  All 580 inputs were compared to the current workspace with no differences.
  Export contains no firmware image, scan CSV or object intermediates.
  `/tmp/sr08-alice-sensor-packets-standalone.{elf,payload.bin,bin}`;
  log `/tmp/sr08-alice-sensor-packets-standalone-complete.log`.
  Payload SHA `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`;
  OTA SHA `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`.
  OTA also compared directly equal to OEM V204.bin.
- Audit **83 direct / 89 expanded** assembly-containing units, zero preprocessing
  failures; both converted functions are absent from the affected list. All
  Alice jobs terminal, no remaining Alice claim. Jeff tree/Tools untouched;
  no flashing, commit or push. Overall zero-inline-assembly goal remains active.

## Jeff between the third and fourth merges (now in both trees)

Installed as C:
- SDK startup (0x07fc0144-0x07fc0193) assembled from third_party/renesas_sdk_6.0.18.1182.1/startup_DA14585_586.s
  (copied unchanged) via build_v204.SDK_ASSEMBLY_SOURCES and arm_compilers.place_assembly (armasm 6.16, __MICROLIB).
  Renamed to SDK names: Reset_Handler, NMI_Handler, HardFault_Handler, SVC_Handler, PendSV_Handler, SysTick_Handler,
  Default_Handler, NMI_HandlerC (0x1df8), HardFault_HandlerC (0x1d88).
- set_shared_halfword_40_to_* (11 units, 0x8b20-0x8bdc), update_mode_flags_and_transitions (0x3a38),
  allocate_ble_data_record_and_send (0x3ab0; Alice installed it too), advance_display_timing_and_serialize_interval_changes
  (0x4f34), publish_enabled_sensor_field_trigger_periodic_at_8774 (0x8774; FIXED_DATA_SYMBOLS sensor_field_state
  0x07fd1ffc), configure_radio_state_and_send_command_6a (0x82b0), program_peripheral_registers_from_descriptor (0x88e0,
  the SDK i2c_init vendor variant; the i2c_init rename waits on include/sr08_device_registers.h),
  queue_computed_status_records (0x50b4), apply_sensor_control_action (0x8e58): ac6lto.
- clear_state_counter_at_offset_four (0xd8a0), clear_state_word_at_offset_1c (0xebc4): ac5.
- rwble_isr (0xb980, was dispatch_pending_peripheral_operations): SDK 6.0.18 rwble.c verbatim (USE_POWER_OPTIMIZATIONS
  dlg_* handlers), ac6lto, exact on the first probe. Renamed with it: calibrate_rcx20 (0x566c, was
  initialize_peripheral_control_state; RCX_CALIB_TIME folded in). arch_rwble_last_event and
  set_boost_low_vbat1v_overhead are merged_globals_5650 +3/+4, rcx_cal_in_progress +0.
- register_custom_gatt_service_and_initialize_state (0xbc40): SDK 6.0.18 suotar.c suotar_init + suotar_set_dle_params_in_db
  verbatim (SUOTA_VERSION_1_3), ac6lto, except that V204 allocates the service descriptor from KE_MEM_KE_MSG (the SDK
  uses KE_MEM_NON_RETENTION). New FIXED_DATA_SYMBOLS suotar_default_handler 0x07fcf780. The rename to suotar_init waits
  on include/sr08_gatt_service_descriptor.h, which uses the old name.
- hogpd_init (0x77fc, was build_measurement_packet_and_handle_reply): SDK 6.0.18 hogpd.c verbatim, ac6lto. The earlier
  "register allocation" mismatch was V204's KE_MEM_NON_RETENTION heap index, 2 instead of the SDK enum's 3 (suotar_init
  shows the same); with that the candidate is exact. Renamed to hogpd_init.
- Removed Jeff's 11 unmanifested manual_sources/custs1_*.c duplicates too (the live ones are in decompiled_sources/custs1_profile.c) and took Alice's CSV rows for them.
- apply_sensor_control_action needed build_v204.LTO_SEALED_STUB_LITERALS (0x07fc9194-0x07fc91a4, the mid-routine island
  of dispatch_radio_and_sensor_state_events, which no earlier V204 load shares although identical literals were in
  range) and a `sealed_literals` keyword on arm_compilers.place_lto_module, passed by build_v204.py and probe_arm_group.py.
- Shared macros no longer used by Jeff's tree: SR08_DEFINE_DISPLAY_HALFWORD_WRITER, SR08_DEFINE_CLEAR_NONZERO_STATE_FIELD,
  SR08_DEFINE_EXCEPTION_STACK_ENTRY, SR08_DEFINE_NONRETURNING_SPIN_LOOP, sr08_startup_exception_vectors.h.

Jeff candidates parked in exact_clang18_jeff/pending_candidates/ (blockers):
- update_mode_bits_and_notify_display_service (0xa84c), update_companion_mode_bits_and_notify_display (0xa89c): code
  identical; their literals are in the display pools 0xab78-0xac7c (Alice's range): convert together.
- handle_record_flag_and_queue_sensor_configuration (0x4e98): code identical; pool word order differs.
- synchronize_callback_values_and_notify (0x85e0): armclang threads the settled/first==second tests differently.
- find_latest_valid_record_within_bitset (0x552c): instructions match; register allocation/spills differ.
- convert_timestamp_to_calendar_fields (0x9004, released by Alice): V204 increments year in r5, armclang re-derives
  it from a stack copy; month loop subtract shape differs (ac6 and ac6lto, eight variants).
- advance_sensor_cycle_and_toggle_mode_flags (0xc8b0, Alice's claim; explored before I saw it): control flow exact;
  the 0x50 record copy differs (V204 loads 0xc6..0xd2 with movs+register offsets and spills; armclang forms base+200).
  Its RSSI byte is llc_env[0]->rssi (ROM llc_env 0x07fd7918, +0x24): header draft sr08_sdk_llc.h.txt.
- configure_peripheral_and_wait_for_status_flags (0x1c18, BLE_WAKEUP_LP_Handler; Alice's released candidate): in
  Jeff's tree it links, and only the two merged_globals_5650 loads (0x1c60, 0x1cb2) differ. V204 loads them from
  0x1fa4, 0x1f34's own copy (0x1f34 itself loads 0x20ec), while armlink merges them into 0x1e70, the copy of the
  module function process_radio_state_if_active (0x1e60). In V204 0x1e60 has no pool and loads 0x20ec.

## Jeff between the fourth and fifth merges (now in both trees)

The user approved per-unit `-mllvm` codegen switches on 2026-11-14 (named profiles, documented per unit).
- New second LTO module `ac6ltowordtables` (arm_compilers.LTO_COMPILERS / LTO_LINK_FLAGS; build_v204.main links it
  after `ac6lto` against the rebuilt image; probe_arm_group.py accepts it). armlink's hidden
  `--lto_llvm_options=-arm-synthesize-thumb-1-tbb=false` applies to a whole module's code generation, and the SDK's
  hogpd_report_cfm_handler (main module, LTO-only) needs its TBB table, so the vendor word-table units get their own
  module. In LLVM 12's ARMConstantIslands only that cl::opt, SLS hardening (driver rejects it for v6-M) or
  execute-only disable Thumb-1 TBB.
- six_way_command_dispatch_default_branch_at_8040 (0x8040, absorbing chunk 0x8068): all C from Alice's candidate,
  typed as a config pointer at cycle_control_state + 0x4c, case 5 before case 4 (default shares case 4's return),
  case 3 stores in V204 order. Its manifest/name rows for 0x8068 and the layout line .v204.func.07fc8068 were removed;
  the asm callers in 0x91a8/0x9538 now `bl six_way_command_dispatch_default_branch_at_8040` (the old macro label
  dispatch_six_command_identifiers_through_table_at_8040 was the same address).
- arm_compilers._place_lto_module.image_word falls back to the surrounding image outside the module. Without it a stub
  load of a word beyond the context stubs (0x82b2 -> 0x867c) is emitted raw, so its own identical literal (0x832c)
  is not seen as live and armlink does not merge 0x8040's device_control_state loads into it.
- Full build canonical: 525 sections, 450 units; audit 84 direct / 89 expanded.
- 0x86b8 in ac6ltowordtables: all literal loads now match V204; only case 3's `movs r1,#0` before `movs r2,#16`
  differs (ours materialises 16 first). No LTO codegen switch changes it (misched/pre-RA-sched/regalloc/
  machine-cse/sink sweeps); store-order and struct-assignment variants do not either.
- switch_display_state_and_run_hooks (0x3b78): full C candidate (pending_candidates/switch_display_state_and_run_hooks.c.txt):
  35-entry state descriptor table at 0x07fcfc54 ({u16 state; u16; enter(prev) +4; leave(next) +8}), 7 low pins at
  0x07fcfab8 and 6 high pins at 0x07fcfaac (FIXED_DATA_SYMBOLS display_state_descriptors / display_low_pins /
  display_high_pins, added in Jeff's build_v204.py), states <= 21 drive the pins (OUTPUT) and start timer0 + SWTIM_IRQn,
  later states release them (INPUT_PULLDOWN). Blockers: (1) LTO inlines update_state_bits_and_publish_empty_status(0, 8)
  here; V204 calls it (probes used a noinline copy; plain ac6 gives the same code). (2) With that, 504 vs 500 bytes:
  V204 materialises `movs r6,#1` before the `display_pins_driven == 0` test (B1) and shares it with the store, loop 2's
  `high`, 1 << 15 and | 1. IR dumps (-mllvm -print-after=consthoist) show ConstantHoisting hoists the i1 `true`
  (high; Thumb-1 cost 2 because it sign-extends to -1) to loop 2's preheader. It only reaches B1 with a second use under
  the taken branch, which the call (0, 8) and the i8 store do not give. Not changed by: volatile/bool flag, high = flag,
  local flag copy, unconditional store (pending_candidates/..._unconditional_store.c.txt, 197 differing bytes as plain ac6),
  always-inline pin helpers, a two-table loop, uint8_t high, SDK timer0_start/timer0_enable_irq via LTO, consthoist /
  machine-sink / machine-cse / misched switches, -Os/-O1/-O2.
- 0x3ea0: as its own module, the relink stops at "armlink moved stub loads of the module literals at 0x07fc4090"
  (it shares pools with main-module neighbours); a module-wide switch shifts other main units, so block-placement
  switches could not be tested on it in place.
- Display digit writers 0xaa4c, 0xaa68, 0xac20 in all C (ac6lto group entries, plain C, no annotations). Full build
  canonical: 522 sections, 450 units; audit 81 direct / 86 expanded.
  - 0xaa4c is `memcpy(&state->digits[mode & 3], "\x53\x65", 2)` on sr08_display_output_state. The memcpy lowering
    addresses the second byte from the first one's address (`adds r0,#64; strb r1,[r0,#1]`); two indexed stores
    (volatile or not, any struct/pointer/index shape) give `movs r1,#65; strb r2,[r0,r1]`. The source must be a
    string literal; a compound-literal array gives the two-store form. Alice independently installed a native
    (non-LTO) form with `__builtin_annotation` in her tree; both are byte-exact. Merge decision: keep one.
  - 0xac20 / 0xaa68: value (shared-context byte 0x08 / sensor_field_state byte 0x60 when byte 0x58 >= 3) to
    convert_quotient_remainder_sequence_ring_s_at_3148(value, digits, 3, 1), else a goto chain marking digits
    2,1,0 from the low two bits of 0x07fd5680; tag 0x10. The goto chain is what gives V204's compare order.
  - arm_compilers._place_lto_module: a stub load that armlink merged into another stub's literal copy, which it
    then removed, now counts as a moved load (the copy's label names the word), so the existing relink retry
    runs. 0xac20 needed this: stub 0xa8ec's 56d0 load went to stub 0xacd0's removed copy; the retry then keeps
    0xac78 for it (V204's word). Only a previously failing path changes.
- recreate_display_status_indicator_update_selected_at_a914 (not claimed, notes only): a goto chain reproduces
  the control flow (`% 5` fallthrough 4,3,2,1), but V204 writes 'e' at digits[4] via `mov r0,r5; adds r0,#64;
  strb [r0,#4]` from a constant base. With a constant global base the two geps fold (G+64, G+68); this looks
  like GlobalMerge's constant-expression addressing (separate globals merged late), which the fixed
  merged_globals data cannot reproduce. -consthoist-gep does not give it either. memcpy cannot (gap of 3 bytes). __builtin_annotation on the digits address does not help either: it is transparent to the SelectionDAG, which still folds G+64+4 into G+68 (Jeff, 2026-11-15).

## Jeff since the sixth merge (exact_clang18_jeff/ only; bring over at the next merge)

- Alice has pulled the 0x1c18 BLE_WAKEUP_LP_Handler install and rename into her tree and shared data/ (see her
  HANDOFF entry); the remaining items below are docs, pending candidates and the GlobalMerge note.

- Pulled Alice's finished 0xaae8 select_measurement_text_update_per_result_at_aae8 (ordinary native C) into Jeff's
  tree unchanged: the source, its main display native group / LTO_NATIVE_UNITS entries (after the acb8 writer, as
  in her tree), LTO_FIXED_UNITS = {0xab3c} with its check and the fixed_code_starts argument in build_v204.py,
  arm_compilers.py fixed_code_starts, probe_arm_group.py forwarding, tests/test_lto_region_gap.py, and both catalog
  rows. Build: 497 sections, canonical, `cmp` OK; audit 58 direct / 60 expanded; 11 tests pass.
- 0x1c18 is now C, renamed to its SDK name BLE_WAKEUP_LP_Handler (rwble.c). Alice's released candidate with the SDK
  register-offset names kept. It is linked in the main LTO module (`("ac6lto", ["BLE_WAKEUP_LP_Handler"])` after
  WKUP_QUADEC_Handler; the old asm `ac6` group was removed). With 0x1f34 in the same module, armlink takes both
  merged_globals_5650 literals from 0x1f34's pool (0x07fc1fa4), as V204 does, so no pinned loads are needed.
  Rename touched the manifest, catalog CSVs, generate_function_names.py, build_v204.py, Jeff's data/
  V204_data_sections.ld and V204_tables.c (comment). At the merge, shared data/ needs the same section rename.
  Build: 498 sections, canonical, `cmp` OK; audit 59 direct / 61 expanded; tests pass.

- Shared include (layout-preserving): sr08_merged_globals.h now names merged_globals_5650 +5/+6/+7
  `app_db_init_next_k/_i/_j` (the SDK app_db_init_next statics) in place of reserved_03_to_07; +3/+4 stay
  reserved_03_to_04. Nothing referenced the old name.
- New lever found (not yet used; affects shared RAM layout): V204 addresses cycle_control_state+0x4c..0x59 in
  0x9104 as `adds rX, #76` then `strb [rX, #6/#8/#12]`, i.e. a second global inside an armclang GlobalMerge block
  (GlobalMerge is on by default here; a test with two defined globals gives exactly that base+small-offset form).
  The same form explains 0x8c90's device_control_state+0x22 as `base+34, #1`. So these RAM blocks were separate C
  globals defined in the LTO module and merged by the compiler; our extern-struct views cannot produce the form.
  Using it means defining those globals in C inside the LTO module, with sizes and order that make GlobalMerge
  rebuild V204's layout (it sorts by size, so the order is not simply declaration order). That is a shared-layout
  change: ask before trying it. It may move several parked units (0x8c90, 0x9104 and others with base+N, #k forms).
  Tried 2026-11-16 (user approved): 0x9104 improves (LTO 535 -> 441 raw, right length) but stays MISMATCH;
  0x8c90 has the opposite form (V204 movs #34/#35), no gain; 0x3584 (sensor_field_state +64,#4) worse. A scan of
  all of V204 for `mov rX,rY; adds rX,#N; [rX,#k]` finds the form in already-exact C units too (0x80d8, 0x8774), so
  it is not unique to GlobalMerge. Probe notes: give the separate globals `= 0` initialisers (tentative
  definitions are emitted late and change the merge order); under LTO a used keep function must also store to
  every global, or GlobalOpt folds them away. Plain probes cannot keep that function out of the compared range;
  use the kept-module relink (Jeff's tmp tools/relink2.py now has an ER_RELINK_GM region for .text.gm_*).

## Jeff since the fifth merge (now in both trees after the sixth merge)

- select_measurement_marker_value_according_active_at_abb4 (0xabb4): candidate
  exact_clang18_jeff/pending_candidates/select_measurement_marker_value_according_active_at_abb4.c.txt (`% 10`
  if-chain, word stores through a local view at +0x40). Plain armclang gives V204's instructions and pool order. In
  the LTO module its own 0x5650/0x56d0 literals (V204 0xac04/0xac08) are merged away into 0xaf54/0xad74, so its pool
  starts 8 bytes early. V204 kept them because the asm stubs 0xa84c/0xa89c load them (9 loads). The relink first pins
  the wrong words (0xac18/0xac1c, the pool tail; then 0xac7c lands 4 bytes late). A trial that picked the stub-loaded
  words instead (0xac04/0xac08) pins them at the start of the pool, where they overlap the function's own literals;
  reverted. Needs those two words to stay as the function's literals (or 0xa84c/0xa89c converted with it).
- update_measurement_display_and_mode_state (0x7380): candidate
  exact_clang18_jeff/pending_candidates/update_measurement_display_and_mode_state.c.txt (typed views of
  device_control_state, clock_timekeeping_state, sr08_shared_context; result slot 6*(minute&1)+second/10, signed
  divide). The ac6lto probe matches all 296 bytes including the pool except 0x7404-0x740a: V204 tests
  `display_mode == 1` before `value != 0` in `elapsed > 45 || (mode == 1 && value) || (mode - 1 <= 1 && option == 1)`,
  ours the reverse. IR dumps show SimplifyCFG merges the tests into `or i1` and Reassociate then puts the
  earlier-defined `value == 0` compare first (by rank). Not changed by operand order, nested ifs, gotos, separate call
  copies, a reloaded or bool value, `&`, or a switch (which changes the shape).
- initialize_peripheral_state_and_interrupts (0xadf8, 360 bytes) in all C (ac6lto): the SDK template's periph_init
  (PERIPH_SLEEP / PER_IS_UP / XTAL16_BIAS_SH_ENABLE, patch_func), vendor set_pad_functions (ten constant
  GPIO_ConfigurePin calls, which LTO inlines, then the display_low_pins / display_high_pins loops as INPUT_PULLDOWN),
  timer0 (TMR_ENABLE, TMR_DIV 3, reloads 0, timer0_init(32k, PWM mode 1, div 10) with NVIC_SetPriority(SWTIM_IRQn, 2),
  TIMER0_callback at 0x07fd569c = dispatch_timed_state_callbacks, TIMER0_ON 300), the vendor UART2 setup (0xc4b0),
  the SPI flash chip select (spi_flash_cs_select = 1, P0_3 high), spi_enable, the spi_initialize register sequence,
  and GPIO_set_pad_latch_en. Two details mattered: GLOBAL_INT_RESTORE needs the fenced two-path form (as in
  set_pending_flag_if_status_bit_7_clear), and the spi_flash_cs_select store must be volatile to stay before the P0_3
  write. Full build canonical: 515 sections, 450 units; audit 74 direct / 79 expanded.

- 0x8134 `configure_command_record` parked; candidate in `exact_clang18_jeff/pending_candidates/configure_command_record.c.txt`.
  It matches the mode-test order, divisor call and tail arithmetic, and the full-module probe gives the same code as a plain compile.
  It differs only in the register/spill assignment of the per-mode phi values: V204 reuses the entry-block constants 1 and 0.
  It needs `sensor_mode_register_pairs` (0x07fd03dc) and `sensor_mode_preamble_pairs` (0x07fd0456) as symbols.
- 0xa84c + 0xa89c + 0xabb4 probed together as C, using the pending candidates unchanged.
  0xabb4 then comes out exact, including its pool 0xac04-0xac1c.
  The module still fails: 0xac7c links at 0xac80 because 0xac20's pool gains 0x07fd5650 at 0xac7c.
  armlink sends each C load to the furthest in-range identical literal, but V204 uses nearer copies:
  0x850 -> 0xabac (here 0xac04), 0x85e -> 0xabb0, 0x86e/0x87a -> 0xac08 (here 0xac78), 0x8a0 -> 0xac04 (here 0xac7c).
  0x85e and 0x86e have the same candidate words but V204 picks different copies, so the pre-link pool
  assignment matters. Keeping either routine as a stub doesn't help: the other routine's loads still differ.
- 0xc728 `process_sensor_sample_and_maybe_save_record` is now C (ac6lto, 392 bytes, Jeff's tree).
  Shared header change (layout unchanged): `sr08_radio_configuration_state.reserved_2b_to_41` is split, with
  `record_check { state; time_event; }` at 0x36 (plus a static assert). V204 builds the time-event pointer as
  `(base + 0x36) + 1`, kept apart as add + or, and that only happens when a field starts at 0x36; with the old
  reserved array the constant folder gives `+0x2b +12` -> `adds #55`. Check state 1 is the "start check"
  (mode 0x4000 on success) and 2 the "save check", which saves the received reading to flash 0x61000.
  Other matching details: a switch on the phase (V204 tests 2 first), `next` zeroed before `first`, and the
  first entry copied to a local.
- Alice's tree, rebuilt on 2026-11-15 after her edits settled, is canonical with the `record_check` split
  (payload 5020c236…, container equals V204.bin).
- 0x3838 `start_or_stop_sensor_calibration` parked; candidate and local header variants in
  `exact_clang18_jeff/pending_candidates/start_or_stop_sensor_calibration*.txt`.
  With all three changes below it is 54 normalized diff lines from V204 (plain compile), all register/spill choice.
  (1) It needs `__builtin_expect(active, 0)` on the "already active" guard: LLVM's zero-compare heuristic
  otherwise makes the early return the fall-through.
  (2) It needs flat uint16_t fields at device_control_state+0x42..0x49 instead of the `sensor_reading`
  sub-struct: V204 stores 0x46 as its own offset (movs #70), while the sub-struct folds it to (base+66)+4.
  (3) It needs named fields for the received reading at time_event_queue_state+0x48..0x4f (additive).
  The full-module LTO probe with change (1) only: right length and placement, MISMATCH. Parked.
- 0xd0f0 `compute_and_store_display_coordinates` parked; candidate in
  `exact_clang18_jeff/pending_candidates/compute_and_store_display_coordinates.c.txt`.
  It is a blood-pressure estimator: it takes the heart rate (r0) and shared_sensor_profile bytes 8..13 by value
  (age, height, weight, gender, reference systolic/diastolic), and stores systolic/diastolic at
  `sensor_status_record.context->systolic_estimate` (+0x420/+0x421). BMI is computed as weight*80000/height².
  It is an armcc 5 unit like its 0xd0c8 neighbour; ac6 is much further off.
  With `x - 4g - g`-style terms it comes to 492 bytes vs 484. V204's 40-byte frame uses only slots
  0/12/20/32, and no source shape tried reproduces it.
- 0x8354 `read_three_byte_samples_and_update_history` parked; candidate in
  `exact_clang18_jeff/pending_candidates/read_three_byte_samples_and_update_history.c.txt`.
  It reads the sensor FIFO level (command 64). With at least two windows queued, it reads whole windows
  of three-byte samples (at most 30 bytes) with command 65 into `sensor_sample_window.incoming`
  (0x07fd0950 + 0x104) and decodes them as 21-bit two's complement. It aligns the window to the first
  sample's tag and reads the tail sample, then returns the number of complete windows. A full FIFO (64)
  is reset via command 61.
  The best shape is 342 diff lines off under the full-module LTO probe. The `window` parameter is uint8_t.
  It still differs in when count is spilled and in the positive decode path, where V204 ORs b1<<8 and
  LLVM adds it.
- 0x41e4 `update_motion_sample_history_and_activity_flags` parked; candidate in
  `exact_clang18_jeff/pending_candidates/update_motion_sample_history_and_activity_flags.c.txt`.
  A magnitude jump over 300 wakes a connected HID host: if HOGPD ntf_cfg[0] has 0xc0 set, it starts the
  mouse (link mode 2, +0x21) or touch (mode 1, +0x20) sequence via app_easy_timer(1,
  advance_registration_data_transfers), at most once per 1.2 s. A jump over 250 dispatches (6,2,0) in
  display mode 16, at most once per second. Once a second, a change of 80 or more across the four inputs
  sets activity bit 0 at +0x6c and counts it at +0x10; 120 or more also clears cycle_control_state+0x18.
  +0x0f is set to 1 when the device lies still and level.
  Shape o comes to 440 of 448 bytes. Only V204's spill of the stored constant 1 (sp0) and the argument
  register choice remain (details in the candidate header).
- 0xd2dc `filter_accelerometer_sample_and_classify_level` parked (armcc 5); candidate in
  `exact_clang18_jeff/pending_candidates/filter_accelerometer_sample_and_classify_level.c.txt`.
  Each axis (>>3) goes through two second-order stages. The state is context->accumulators_d80 as 6x5
  words: in-1, in-2, out-1, out-2, out; coefficients (-109, 51) then (-83, 42), >>6. Next comes
  isqrt(sum of (out>>2)^2) and a 5-entry int16 magnitude history at +0xcee. A local peak of entry 2 is
  pushed into history_d14 (int16). The 4-peak average at +0xd30 gives the level at +0xd6f:
  0 below profile_byte_0c, 1 below 200, 2 below 500, else 3.
  The tail matches up to register choice; the filter stores still differ (stmia merging). V204 reaches
  the profile byte as sensor_frame_batch_state+0x2c.
- 0x3584 `process_sensor_mode_and_update_display` parked; candidate (full decode) in
  `exact_clang18_jeff/pending_candidates/process_sensor_mode_and_update_display.c.txt`.
  It is the vital-signs display update:
  - heart rate: sensor_field_state+0x4c in mode 1 (when +0x40 == 1 and +0x44 > 1); in mode 2, +0x61
    with SpO2 at +0x60 (when +0x41 == 1 and +0x58 >= 3);
  - mode 0x2000: refresh_calibration(0x2000, 7), wait 100, combine records, sync, then store the
    timing deltas at shared_context+0xc6..0xcc;
  - smoothing: in display state 2 the rate is raised to the estimate from the time-event ring sum;
    otherwise it moves toward device_control_state+0x64 over 400000 ms, plus or minus time%3 jitter;
  - outputs: +0x2a/+0x64/ctx[8] = rate, +11 = max(SpO2, 92), +9/+10 = |rate-80| + 105 / +63 + time%5,
    +12 = 100 - clamp(100 - |hour-7|/2, 0, 95);
  - with no reading, ctx[10] = 2 after 5 s, and after 11 s it leaves the mode (0xf0000) unless
    ctx word 20 & 0x7fc8.
  Mismatch: LLVM forms a switch over the mode tests where V204 keeps a spilled `ready<<1`.
- 0x44a8 `update_clock_and_process_events` parked; candidate in (2026-11-16 Jeff re-push: 36 -> 12 lines.
  IR edit proved V204 stores current_timestamp before calendar_update_timestamp; two
  __builtin_expect_with_probability hints (0.3 on the second-wrap test, 0.51 on the reminder interval) fix the
  clock pointer across the 0x48a8 call, the reminder fall-through and the record spill. Left: the rebase add
  operand order, which is use-list order inside the LTO module (text-IR round trip gives V204's order; source
  shapes and -Xclang -no-emit-llvm-uselists do not), and `seconds - 28801` being sunk past the sum loop. Keeping
  it in the preheader always swaps r6/r7 (24 lines); 127 IR block moves and 100 codegen flags stay at 20.
  Header comment of the candidate has the details.)
  `exact_clang18_jeff/pending_candidates/update_clock_and_process_events.c.txt`. It needs
  `"hourly_record_bitmap": "0x07fd07f0"` in the RAM symbols.
  Full decode:
  - tick counter: 1600 ticks/s, wrapping at 1<<27, rebased after 0x6ddd000 ticks;
  - calendar refresh, with the 48a8 persistent-state hook at second 59 and on a second wrap;
  - step deltas: every 2 s, total steps ctx+0x38 minus last ctx+0x04 is queued to
    time_event_queue_state's ring at +0;
  - 240 s activity-history shift: device_control_state+0x6c <<= 1;
  - quarter-hour night inactivity check (outside 08:00-21:00, using map_elapsed_ticks and
    cycle bytes 0x5a..0x68);
  - ctx+0x7c reminder within the [ctx+0x80, ctx+0x84] window;
  - midnight display/status reset;
  - 21:00 ctx+0x44 reset;
  - every odd minute at second 58: a 12-byte ctx+0xa0 record is written to per-weekday flash slot
    0x4c000 + (day%7)*0x3000 + sod/10, together with the 2-minute bitmap at 0x4eef0 and the
    day-start word at 0x4eff0;
  - 6-tick countdown at merged_globals_5650+0x40, queueing 32 to merged_globals_574c's ring.
  Retried 2026-11-15 (Jeff) with the annotation/fence levers, now judged under the real LTO link
  (plain compile differs: LTO infers callee attributes). It went from 294 to 35 normalized lines of 445;
  frame 100 and every stack slot match. The day-record block is a static helper (V204's slot order
  comes from the inliner). The 0x4458 candidate, linked with it, takes its literals from this pool as in V204.
  Remaining: rebase-add operand order, the clock pointer kept in r5 across the 0x48a8 call,
  IndVarSimplify sinking `seconds - 28801` out of the loop preheader, reminder-window block layout,
  and the record/base register split. Details are in the candidate header.
  Fast LTO iteration: build/lto_relink/relink.py recompiles one unit in a kept module
  (SR08_LTO_KEEP) and relinks in about 2 s; lt.sh SRC prints the normalized diff.
- 0xca68 `process_motion_axes_and_activity_state_block_at_ca68` (absorbs block_at_ce6c; V204 has a pool at 0xce50
  inside the routine) parked; candidate in
  `exact_clang18_jeff/pending_candidates/process_motion_axes_and_activity_state_block_at_ca68.c.txt`.
  It is the step counter:
  - the accelerometer (who-am-I 0x47 at register 0x20) FIFO is drained into the motion ring
    (time_event_queue_state+0x14, 32 x 6 bytes at 0x07fd0890);
  - each sample is published (0x3dd8, 0x3d6c), and its magnitude isqrt(x^2+y^2[+z^2]) goes through three
    cascaded scalar Kalman filters, a separate global `motion_filters` at 0x07fd5524 (3 x 28 bytes after the
    12 timing records);
  - steps come from crest/trough swings, with the swing threshold taken from the 100-sample window peak. After 18
    pending steps they are added to merged_globals_5650+0x68 and reported through 0x4f34.
  Under the real LTO link (raw diff, pools included) 74 of 569 lines differ; frame 68 and all stack slots match.
  Remaining: regalloc around the 0 shared with the init-loop index, fmul libcall operand order, the window-max
  compare operand order, the crest test folded to value <= last, the proven swing range (no sxth/asr), and
  2000 not hoisted (slt 2001 from the pool). Details are in the candidate header. Install needs the microlib
  __aeabi_f* aliases and the motion_filters RAM symbol (both additive). build/lto_relink/lt2.sh diffs raw ranges,
  pools included.
- 0x9104 `dispatch_radio_and_sensor_state_events` (one LTO function 0x07fc9104-0x07fc97ac, frame 212) decoded
  in outline only; no C candidate yet. Part A runs when device_control_state[20] == 1 and cycle_control_state+0x20
  is nonzero: mode device_control_state[18] 0 drives cycle_control_state+0x4d/0x58 (the 0x58 phase 0/1/2 adapts
  +0x52/+0x53/+0x56/+0x50 from the 6-byte record pair via combine_two_six_byte_records_into_words, thresholds
  0x55730/0x249f0/0x445c0, /10000, /64), mode 1 drives sensor_field_state+0x21/+0x3c (4-way jump table: LED
  currents +0x25/+0x26 stepped by 1 or 2 within 0..200 against 0x55730/0x249f0/0x6ddd0, gains +0x2a/+0x2c =
  min(0x3f7a0/x, +0x3e/+0x3f)); both end in 0x86b8/0x8774/0x8040/0x80d8 dispatches. Part B runs when
  device_control_state[21] == 1: 0x85e0 sync, then per sample from read_three_byte_samples_and_update_history(2 or
  4) it fills the tables at 0x07fd0950 (+0x84/+0xc4), runs 0x8878 range checks (1500/3000 hysteresis on
  device_control_state[22], device_settings[0..5] state with 3-count debounces), and publishes through
  0xcd99c/0xcd8b4/0xee4c/0xebd8 into sensor_field_state+0x44/+0x58. Needs signatures for those asm callees first.
- 0x25c4 `dispatch_sensor_and_display_events` (one LTO function to 0x2da8) parked; candidate in
  `exact_clang18_jeff/pending_candidates/dispatch_sensor_and_display_events_block_at_25c4.c.txt`. It is the
  BLE command handler: it drains the secondary event ring and switches on the command byte (1 set time, 2 height ->
  stride, 4 measure, 7 find-ring, 14 display-image keys, 16/22 step and activity sync requests, 18 find-phone,
  20/21 alarm/notification modes, 25 do-not-disturb, 37 day-end stamp, 48 device name -> flash 0x64000 and reset,
  72 SDK app_easy_security_request, 80 mode flags, 247 name CRC; 23 is "not supported" 0x97). Same jump table and
  case order under the LTO link; 380 of 953 register-normalized lines differ (hoisted record+1 pointer loads,
  block placement, spill slots).
- 0xd4f8 `update_sensor_signal_state_from_sample` (ac5) parked; candidate in
  `exact_clang18_jeff/pending_candidates/update_sensor_signal_state_from_sample.c.txt`. It is the pulse-rate
  tracker: despike + baseline + two IIR band-pass stages, then a 40-bin sliding DFT (sine quarter-wave table
  0x07fcf23c, 120-sample ring), top-6 peaks every 25 samples, smoothed rate in counter_04 / measurement_status,
  and the blood-pressure estimate call past sample 400. 41 register-normalized lines differ: constant hoisting
  (512 vs 384), sine-table load scheduling and a 92- vs 84-byte spill frame, the same class as 0xd9c8.
- 0xb1b0 (+ split tail 0xb5d0) BLE history-sync tick parked; candidate in
  `exact_clang18_jeff/pending_candidates/process_measurement_records_and_sensor_state_block_at_b1b0.c.txt`.
  It sends queued 20-byte event records as CUSTS1 notifications (handle 4), then syncs quarter-hour step slots
  (0x10/0x11 records from the per-weekday flash bitmap, live steps for the current slot) and the 2-minute activity
  history (mode 1 announces a run 0xaa, mode 2 sends its 12-byte flash records 0xa0) via
  search_queue_and_insert_limit_twenty. Same size under the LTO link; 186 of 686 register-normalized lines differ,
  mostly block layout (V204 relaxes the nodata branches to far targets). Install needs RAM symbol
  hourly_record_bitmap 0x07fd07f0 (additive).
- 0xd9c8 `estimate_pulse_rate_from_sample_window` (ac5) parked; candidate in
  `exact_clang18_jeff/pending_candidates/estimate_pulse_rate_from_sample_window.c.txt`.
  It picks the pulse rate from the spectrum: power = (re>>15)^2 + (im>>15)^2 over context->pairs_6fc[100].
  The six largest local peaks are kept in ascending order, and rate = strongest bin + 45 (returned).
  Signal energy is the power within +-10 bins of that peak, plus +-10 bins around strong peaks at about twice
  or half its rate, plus +-5 bins around strong peaks 12..16 bins away. A peak counts as strong when its
  power is more than half the strongest's. The strongest peak's power goes to word_c8c; half_c92 = signal /
  (noise >> 3), or 160 when the noise is 8 or less.
  The instruction shape matches; the 102 remaining abstracted lines are all register/spill choice (V204: ctx in lr,
  frame 60), which fits the older-armcc suspicion for register-heavy ac5 units.
- Jeff merged Alice's 0xa9b4/0xaac8 display formatters (sources unchanged; native group + LTO_NATIVE_UNITS). Jeff's tree is canonical, 63 direct / 65 expanded. The shared formatter macro is still needed by 0xa8ec.
- 0x1f34 is the SDK `WKUP_QUADEC_Handler`; installed as C (ac6lto, BYTE_EXACT) in Jeff's tree under the SDK name. To merge: the vector-table comment and the KEEP section in data/V204_tables.c / V204_data_sections.ld need the rename.
- Jeff merged Alice's 0x7380 (and the sensor_field_state.h switch of 0xaa68/0x8774/apply_sensor_control_action), plus 0xc148, 0xbb38, 0xbb94 and erase_flash_range_status, all unchanged.
- 0x3838 Jeff 2026-11-16: candidate in exact_clang18_jeff/pending_candidates/start_or_stop_sensor_calibration.c.txt
  (plain ac6 + -mllvm -disable-constant-hoisting). Instruction stream now matches; left: device_control_state base in r7
  (V204 r5, split/rematerialised) and the 5000 constant not kept in r7. The header comment lists the three fixes found
  (Reassociate add order, result-phi coalescing via uint32_t result + __builtin_assume, 510 vs 1020 hoisting) and
  everything tried. Faithful IR round trip for this unit needs -print-before=consthoist (codegenprepare is not faithful).
- 0x302c Jeff 2026-11-17 INSTALLED app_db_init_next (ac6lto, BYTE_EXACT probe, full image canonical, 479 sections,
  audit 44/44). cust_prf_funcs moved from LTO_READONLY_SOURCES to LTO_SUPPORT_SOURCES (section attribute dropped,
  in Jeff's data/ and the shared data/). Levers:
  - annotated copy of i taken before the SUOTAR test, used as the call's table index: V204's `cmp #0`, store 1 and
    register-indexed `muls` load (without it LTO folds the index into a direct call);
  - `k != 0` / `i != 0` tests, each kept non-canonical by a no-code `__builtin_assume(x | (j != 77))`: their false
    successors come first in ISel order, so the pool order becomes V204's (string, HOGPD literals, prf_funcs,
    cust_prf_funcs). With `i != 0` alone the SDK task_id test folds away (only prf_funcs[0] is real).
  Backup: Jeff's job tmp `backup_302c/`; probe logs in w98/.
- 0x3b78 Jeff 2026-11-17 INSTALLED switch_display_state_and_run_hooks as C (Alice's released unit), new profile
  `ac6likelyprob` (plain armclang 6.16 -Oz + `-mllvm -static-likely-prob=100`), group after 0x3ab0.
  - Base: the annotated candidate (4 lines; `enter` reloaded into r4 before the "systate" printf).
  - `if (__builtin_expect(enter != 0, 0))` on the enter call makes regalloc keep `enter` spilled and reload it into r1
    just before use (V204). Only probabilities <= ~0.0005 do this; >= 0.2 keeps the layout. In between, both are wrong.
  - The hint moves the call block after the return; `-static-likely-prob=100` restores V204's fall-through. Other
    MBP switches (exit-block bias, tail-dup placement, rotation cost, triangle count) did not.
  - Full image: canonical, cmp OK, 483 sections, audit 45/45, tests OK. Backup: Jeff's job tmp `backup_3b78/`.
- 0x3b78 Jeff 2026-11-16 re-check (display_switch_tail/volatile_copy.c.txt, plain ac6): full probe = 6 bytes, only the
  saved_enter store sitting in the join (`mov r2,r6; str r2`) instead of one store per predecessor (V204 `str r2` / `str r6`).
  No effect: -tail-dup-size=2..4, -tail-dup-placement=false, -disable-tail-duplicate, -enable-tail-merge=false,
  -disable-branch-fold, -disable-machine-sink, -simplifycfg-sink-common=false, -join-globalcopies/-join-splitedges,
  -enable-misched=false. Per-branch volatile stores in source are much worse (loop shape changes). Note the
  print-before=codegenprepare IR round trip for this unit is NOT faithful (63 vs 39 lines), so IR edits are inconclusive here.
- 0x3b78 Jeff 2026-11-16 second re-check (still 4 normalized lines / 6 bytes, unchanged candidate):
  - Faithful round trip for this unit: Pro armclang `-emit-llvm -c` (plain ac6 flags) then llvm-dis-14, then
    codegen-only. The print-before dumps are not faithful here. Tool: $T/tools/ccbc.py.
  - V204's layout (found: `str r2; b P`; not found: `str r6`; P: `mov r2,r6`) is what you get by tail-duplicating
    the 2-instruction join (`str r2,[sp,#16]; mov r2,r6`) into both predecessors and tail-merging the common
    `mov r2,r6`. Under optsize, block placement forces TailDupSize=1, and the post-RA TailDuplicate pass refuses a
    block that falls through, so no -tail-dup-* option produces it (7 tried).
  - Per-exit stores in source or IR materialize a separate zero; the two stores then tail-merge (108 lines).
    An annotated zero also used as the loop-1 start gives exactly V204's store pair, but LSR then rewrites
    loop 1 (24 lines). Bounding assumes don't restore it.
  - __builtin_expect_with_probability on every `if` (88 variants): none below 4.
- 0x3b78 `switch_display_state_and_run_hooks` re-parked much closer: with __builtin_annotation constants and a store fence, plain ac6 differs only in the `enter` reload register (r4 vs V204 r1). Candidate: exact_clang18_jeff/pending_candidates/switch_display_state_and_run_hooks_annotated.c.txt.
- 0x4458 instructions now exact (annotation keeps `interval * 8` before the first wait), but V204 loads its two register literals from 0x44a8's pool copies (0x4858/485c, ASM unit). Install with 0x44a8. Candidate: pending_candidates/wait_shared_timer_delta_exceed_requested_at_4458.c.txt.
- Jeff 2026-11-16 INSTALLED 0xa64c advance_registration_data_transfers (ac6lto) and 0x9004
  convert_timestamp_to_calendar_fields (ac6). Both BYTE_EXACT, and the full build is canonical.
  - TOOL BUG found: $T/tools/mkref.sh used lt3's nrm, which rewrites `adds rD, rM, rD` as `adds rD, rM`. ndiff
    then expands that to `adds rD, rD, rM`, so mkref+ndiff comparisons showed false add-order differences (and
    could hide real ones). mkref now keeps 3-operand adds. lt3.sh is unaffected (symmetric). Earlier
    "add operand order" notes based on mkref+ndiff should be re-checked.
  - 0xa64c levers:
    - `__builtin_expect_with_probability(phase >= 4, 1, 0.65)`;
    - pool word order comes from ISel's reverse-post-order walk: a no-code `__builtin_assume(running | (env != 1))`
      keeps the `mode != 0` compare as `ne`, so the loop exit is the false edge;
    - named tables hid_mouse_sequence/hid_touch_y_sequence in FIXED_DATA_SYMBOLS;
    - ac6lto (plain ac6 keeps its own shared-context literal).
  - 0x9004 levers: annotations on `year + 1`, on the month length (stops Reassociate splitting
    `day - (days + leap)`) and on the counted-out month 11 (keeps the exit phi constant); V204's store order
    (year before day_of_month_copy); subtract-then-test month loop.
- Jeff 2026-11-16 compiler cross-check: 0x41e4 and 0x3b78 under armclang 6.14 (MDK 5.31) are identical to 6.16
  (110 / 4 lines); 6.7 (MDK 5.24) is far worse (232 / 260). With Alice's 6.18 result for 0x3b78, the
  remaining differences are not a 6.14-6.18 version effect.
- 0x41e4 Jeff 2026-11-16 re-check (plain ac6, annotated candidate, 110 normalized lines, all register names):
  the rotation is V204 now/z/base/magnitude = r4/r5/r6/r7, ours magnitude/now/z/base = r4/r5/r6/r7. So V204's
  allocator handed magnitude its register last, although magnitude is a hinted argument copy.
  - 70 single-branch probability variants: best 100 (the SAMPLE_TIME test at 0.65). 63 more stacked on that: none
    better.
  - 117 codegen switches, including -regalloc-csr-first-time-cost=0..100, -exhaustive-register-search and
    -enable-local-reassign: all exactly 110.
- 0x41e4 re-parked closer: an annotated sequence-start 1 gives the right length (448 bytes, 1:1 with V204); only a callee-saved register rotation remains. Candidate: pending_candidates/update_motion_sample_history_and_activity_flags_annotated.c.txt.
- 0x9004 retried (Jeff): an opaque year (annotation) plus a subtract-then-test month loop and a store fence came to 68-74 differences, worse than the candidate's 64. Unchanged.
- 0x8134 retried: annotated 0/1 phi inputs came to 198-212 differences, worse than 172. Unchanged.
- 0x20f0 `process_sensor_reading_and_update_state` (battery service tick) decoded and parked at 169 normalized differences; candidate and notes in exact_clang18_jeff/pending_candidates/process_sensor_reading_and_update_state.c.txt.
- 0x302c `app_db_init_next` parked: the HOGPD block matches once k is tested explicitly, but the i compare (V204 i == 0) and the literal-pool order still differ. Candidate and the build changes it needs are in exact_clang18_jeff/pending_candidates/app_db_init_next.c.txt; build restored.
- 0x8c90 `dispatch_timed_state_callbacks` (TIMER0 six-column display multiplexer with PWM3 brightness) parked;
  candidate and decode in `exact_clang18_jeff/pending_candidates/dispatch_timed_state_callbacks.c.txt`.
  97 of 209 normalized lines differ, all register or spill-slot choice (stm-merged spills, r5/r7 swap,
  display_character*2 sunk past the segment loop). armlink already shares the 0x8fa0
  device_control_state literal correctly.

## Parked (unclaimed; known blockers, so the work is not repeated)

### Bounded lever-pass completion audit (Alice, 2026-11-16)

The current goal's DONE-by-installation-or-parking criterion is met. A fresh
manifest/source audit finds449 units,58 direct-assembly sections and60
expanded-assembly units, with zero preprocessing failures. All58 direct
sections map to42 whole-function families with populated best-result and
L1/L2/L3 Parked rows and existing retained candidate files. Continuations
are counted against their whole routine, never as independently callable
functions. No active claim is excluded at this checkpoint: Jeff also
completed the98d4/main family while Alice finished the history pair.
This is completion of the bounded lever pass, not all-C reconstruction: the
58 installed ASM sections remain, and the two extra expanded-ASM wrappers
are outside this goal's direct-assembly completion criterion.

All11 support tests pass. The previously source-only-built67136-byte payload
and67200-byte OTA artifact still directly equal the OEM bytes and canonical
hashes5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570
andc747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8.
All582 exported build inputs exist;581 are identical to the accepted wakeup
bundle, and the remaining dd68 source differs only by Alice's claim comment.
Compiling both versions at the identical source path with normal build_v204
flags gives identical complete2240-byte objects. No fresh full rebuild or
new flashable candidate is claimed for this completion checkpoint.

Temporary audit evidence (not normal build inputs):
`/tmp/sr08-alice-lever-completion-audit.json`,
`/tmp/sr08-alice-lever-completion-tests.log`,
`/tmp/sr08-alice-verified-parked-paths.txt` and
`/tmp/sr08-alice-dd68-comment-object-check/`. Candidate/probe results are
recorded in their Parked rows below. Stop this lever pass here; do not reopen
parked work without the new evidence/lever described in its row.

### Alice: persistent-history family lever completion (2026-11-16)

| Unit | Best state / retained candidate | L1 source reshaping | L2 compiler | L3 pools / grouping |
|---|---|---|---|---|
| 0x48a8 +4cb0 load_and_update_persistent_measurement_state | `exact_clang18_alice/pending_candidates/load_and_update_persistent_measurement_state_alice.c.txt`: fresh joint LTO1220-byte original extent /1096 differing bytes. Separate-predicate candidate native sink-off1168/1046 overlap differences, with52 missing bytes; fewer overlap differences does not prove a better whole-span result. | Complete routine, separate predicates, flag widths, root volatility/types, indices and source profile768 forms/312 binaries; annotations32 forms/8 binaries; root-array32 forms/4 binaries. Frame aggregation/declaration permutations do not recover original132-byte stack placement. Earlier optional emulation passes304/5104 fixtures, not parity. | Latest native separate-candidate matrix O1 1224/1176, O2 2172/2111, O3 2524/2470, Os1196/1142, Oz1152/1056. Targeted passes: tail merge off1160/1084, CSE off1176/1113, sink off1168/1046, scheduler off1152/1056, source1148/1061, list-burr/CGP off1152/1056, block placement off1192/1107. Regular joint LTO checked for both sources. | Fresh joint baseline absorbs4cb0, passes pool/placement guards and makes4e98 exact156 bytes; parent still1096 byte differences. Separate-predicate joint probe moves following timer handler to4d28; explicit original timer-handler FIXED boundary resolves that placement rejection but parent remains1152/1056 overlap differences plus68 missing bytes. Thus boundary knowledge was applied and did not solve parent instructions/frame. Five original parent loads share the context pool at4f28, so independent helper installation is not valid. |
| 0x4e98 handle_record_flag_and_queue_sensor_configuration | `exact_clang18_alice/pending_candidates/handle_record_flag_and_queue_sensor_configuration.c.txt`; fresh baseline and fixed-boundary separate-parent joint probes both exactly match all156 bytes. Not installed. | Recovered flag transition, configuration/status records and queue calls; candidate covers whole routine. | Codegen already exact with joint regular LTO; unrelated per-unit flag sweeps cannot resolve the parent's byte differences. | Installing alone collides with parent-owned4f28 literal. Co-conversion with48a8/4cb0 removes that collision and matches helper, but parent fails parity. Parked as an explicit dependency, not accepted from local equality. |

Fresh diagnostic files: `/tmp/sr08-alice-history-current-probe.log`,
`/tmp/sr08-alice-history-fixed-next.log` and their retained output directories.
Identical frozen-context compiler objects were reused for these analysis
links; this is not a fresh source-only/full-image acceptance build. Candidate
sources and headers were not patched during linking. Existing
PERSISTENT_HISTORY_NOTES.md records the earlier shape/emulation work.
Reopen for new source/frame-lifetime evidence or a new compiler/layout lever,
not a repeat of those matrices. Installed assembly remains unchanged.

### Alice: range-validity lever completion (2026-11-16)

| Unit | Best state / retained candidate | L1 source reshaping | L2 compiler | L3 pools / grouping |
|---|---|---|---|---|
| 0x8878 apply_range_mode_validity_checks_preserving_at_8878 | `exact_clang18_alice/pending_candidates/range_validity/candidate_one_hint.c.txt`; own104 bytes exact in module. Full image has one differing byte at82b2 (f2->ad), selecting8568 instead of867c. Not installed. (Jeff 2026-11-16 re-check in Jeff tree: still exact alone; full build still differs only at 0x82b2; LTO_FIXED_UNITS placement for 0x8878 does not change it; reverted, tree canonical) | 81 bounded source/branch forms; combined upper-bound/ID hint reproduces original signed bounds/invalidation block. Separate hints equivalent; plain inverted conditions fold unsigned range and fail. | Current native instruction selection and linked region are already exact; arbitrary compiler-pass sweeps do not address the measured regression in another function. Native caller and native/main-module registration were explicitly tested, without full parity. | Full builds: baseline selects8568, exclude8568 selects84e4, excludeboth selects832c;832c has three original readers and must remain. Native caller does not help. Source-only four-pool reduction and96 object-order/reader controls isolate code-associated farthest-pool selection. Accepted local-duplicate lookup fix passes full canonical baseline, but retrying range C still gives the same one-byte regression. Following88e0 i2c_init is already regular LTO, not a native function newly losing an initial FIXED stub: the ab3c native-boundary remedy does not apply. Pool/value/output rewriting and false exclusions are rejected. |

Durable evidence is in pending_candidates/range_validity/ and
pending_candidates/device_pool_reduction/ (including the post-fix full-image
retry). All experimental registrations/exclusions were restored. No new
full build or acceptance is asserted here. Reopen only for new evidence
that changes actual pool ownership while preserving the existing readers,
not another equivalent range expression or unchanged exclusion sweep.

### Alice: complete sensor-frame family lever pass (2026-11-16)

| Unit | Best state / retained candidate | L1 source reshaping | L2 compiler | L3 pools / grouping |
|---|---|---|---|---|
| 0xdd68 +e194 +e6b0 +eb78 process_sensor_frame_entry_dd68 | `exact_clang18_alice/pending_candidates/sensor_frame_whole/signed_range_arithmetic.c.txt`; ARM5 O2/Ospace emits3596 bytes with3450 differing bytes in the compared overlap and80 bytes missing from the original3676-byte envelope including final padding. No accepted replacement. | Existing percent-based full-function export normalized to canonical APIs, fixed-width types and explicit typed calls; removed inferred extra classifier argument; extracted four wrapping filter recurrences and named corrected samples/extrema flags; instruction-verified signed range/ASR corrections. Prior explicit EABI-pair versus percent probe did not converge. Earlier unsigned-literal candidates are superseded for correctness. Remaining reused locals/arithmetic assumptions are explicitly unproven. | Fresh latest-source ARM5 O1 3688/3562, O2 and O2/Ospace3596/3450, O3 and O3/Ospace3584/3485, O3/Otime3684/3563. ARM6 O1 3748/3662, O2 4876/4799, O3 5424/5344, Os3864/3800, Oz3832/3762. These raw comparison counts do not include a missing tail penalty. Older GCC/Clang matrices are historical source-shape evidence only, not results for the corrected candidate. | Original four code ranges contain3592 bytes, separated by82 bytes of this routine's own literal pools/padding; final2-byte padding leads to next function at ebc4. All pool constants appear in the pending C. Scan of original function sections finds78 Thumb literal loads into these pools, all inside the family, none outside. A different module grouping cannot repair the existing frame/block/instruction mismatches; no external pool-owner dependency was found. Separate fragments must never be treated as C entry points. |

Source compiles under ARM5/ARM6 and passes Clang18 ARM syntax checks with
-O2 -Wall -Wextra -Wuninitialized -Werror. This is compilation evidence,
not behavioral equivalence. There is no full-image acceptance and installed
ASM remains unchanged except its claim comment. Original instruction and
layout evidence is in manual_sources, V204_auto_data.c and V204_data_sections.ld;
temporary diagnostics `/tmp/sr08-alice-dd68-signed-*.log` and
`/tmp/sr08-alice-dd68-pool-readers.log`. Reopen only with new data-flow/type
evidence or a compiler/source-shape lever beyond these completed trials.

### Alice: callback and flash-wrapper lever completion (2026-11-16)

| Unit | Best state / retained candidate | L1 source reshaping | L2 compiler | L3 pools / grouping |
|---|---|---|---|---|
| 0x85e0 synchronize_callback_values_and_notify | `exact_clang18_alice/pending_candidates/callback_sync/ordered_stores_typed.c.txt`; native 160 bytes / 100 differences. Regular LTO rejects overlapping retained 0x867c word; no accepted image. | Correct signed-result API and original volatile store order; explicit settled/equal paths, fences, annotated flags/operands and constant lifetimes tested. Some recover initial registers but do not recover branches. | -Oz best; O1 176/170, O2/O3 164/155, Os 160/149. Tail merge off, machine scheduler off, source/list-burr and CGP select-to-branch off remain160/100; machine CSE off180/144, machine sink off160/106, block placement off160/110. Native and regular LTO checked. | Traced normal-module link: candidate returns8674, pads8676 and uses private words8678/867c; retained original device-state word867c overlaps candidate cycle-state word. Only original reader is82b2; retention arises from a genuine original pool gap. This is not a removable following-native boundary. Own C length/control flow and pool sharing must change together; changing word/flattening overlap invalid. Existing callback_sync collision/disassembly records retain proof. |
| 0x3ea0 perform_flash_memory_operation | `exact_clang18_alice/pending_candidates/flash_operation/common_return_a0f0.c.txt`; main LTO512 bytes /422 differences, all original pool positions; native best tested raw diff426 over508 bytes with block placement off. Neither accepted. | SDK/API correction, wide intermediate statuses, common signed-byte return, denied-path cleanup/fences, CS mask read count, late bounds, size/address opacity and operation hints tested. Common return resolves four-byte overrun, but frame slots and read/program/denied-path topology still differ. | Native O1 604/573, O2 544/482, O3 560/491, Os520/458, Oz516/445; targeted passes: tail merge off544/481, machine CSE off504/438, sink off544/510, scheduler off516/445, source512/445, list-burr516/445, CGP select-to-branch off516/445, block placement off508/426. Main/word-table/standalone LTO contexts already tested; no parity. | Main-module common-return candidate fits original512-byte region including all four original-position pool words and next function40a0. Therefore remaining mismatch is not pool displacement. Earlier separate-module guard and word-table overrun results are retained in flash_operation notes. No justification to move boundaries or relax guards. |

Metrics and source/ABI corrections are detailed in the existing candidate
notes and the source/compiler follow-ups below. Reopen these units only for
new source-lifetime/control-flow evidence, compiler provenance or an actual
new pool-ownership mechanism; the bounded negative levers above should not
be repeated unchanged. Installed assembly is unchanged.

### Alice: reading-acceptance lever completion (2026-11-16)

| Unit | Best state and candidate | L1 source reshaping | L2 compiler | L3 pools / grouping |
|---|---|---|---|---|
| 0x8500 save_valid_measurement_range_clear_stale_at_8500 | Retained `exact_clang18_alice/pending_candidates/reading_acceptance/v1o1.c.txt`: native 112-byte emitted region / 90 differing bytes (includes four bytes beyond the original 108-byte extent). Regular full-module LTO restores 108-byte extent but remains inexact; not installed. | Typed fields, volatile queue/state, aligned middle-pair memcpy versus alias-word store, root alignment, constant-one lifetime, branch hints and distinct annotated field offsets tested. Single word clear and correct r4/frame can be obtained, but pointer rebasing, conditional third-value loads and block order remain wrong. New per-field variants give 112 / 94; existing variants 112 / 90..103. | -O1/-O2/-O3/-Os/-Oz all 112 / 90. Tail merge on/off, machine sink off, machine scheduler off, list-burr, CGP select-to-branch off and block placement off unchanged; source scheduler 112 / 95, machine CSE off 116 / 102. Branch-fold flag spelling unsupported, not counted as a tested pass. Native and licensed full-module LTO both tested. | Fresh regular LTO v1o1 probe places original first shared literal correctly and restores original 108-byte extent. Still branches to invalid early and rebases the state pointer; therefore grouping does not resolve the remaining instruction differences. Earlier aligned-middle LTO candidate also inexact. No missing boundary was removed for a following native function, so the accepted 0xaae8 boundary remedy does not apply. |

Fresh regular LTO diagnostic: `/tmp/sr08-alice-8500-v1o1-module.log`;
source, profile and targeted-pass diagnostics are described in the follow-up
notes below. The installed ASM remains authoritative. Reopen only with a new
source-liveness/base-selection or compiler-provenance lever, not another
identical aligned-copy, qualifier, optimization-level or grouping retry.

### Lever ledger (goal of 2026-11-16, Jeff)

L3 armlink options (2026-11-16, Jeff): relinking the kept 0x9104 LTO module (overrun downgraded to a warning) with
--merge_litpools, --no_merge_litpools, --sort=Alignment, --sort=Lexical, --sort=CallTree and --sort=AlignmentLexical
gives output identical to the base link (535 raw differing lines over 0x9104-0x98d4). Every unit is its own fixed
scatter region (ER_<addr>), so armlink grouping, input order and pool merging cannot move code or pools between units;
they cannot fix the code-length overruns recorded below (0x9104 +12, 0x98d4 +16, 0x3838 +20, 0x85e0 +4).
Same six options on the other pool-sharing groups (kept LTO modules, raw differing lines over the group range):
main()+0xa64c (0x98d4-0xa79c) 1296 for all six; 0x3838+0x3584+0x3b78 (0x3584-0x3ea0) 566, --no_merge_litpools 582;
0x8134+0x8500+0x85e0 (0x8134-0x86b8) 290, --no_merge_litpools 303. Sort order has no effect; disabling pool merging
is worse. Lever 3 is exhausted for all four groups.

Levers: L1 source reshaping, L2 per-unit -mllvm switches (ac6/LTO) or armcc flags (ac5), L3 literal-pool
neighbours / armlink grouping. Standard L2 set: Jeff's job tmp `tools/mopts.txt`, 98 switches covering block
placement, tail dup/merge, branch folding, regalloc/split/spill, coalescer, schedulers, machine LICM/CSE/sink,
constant hoisting, CGP, LSR, IndVars, GVN/PRE, SimplifyCFG, shrink-wrap, global merge and the outliner. LTO
units: passed as `--lto_llvm_options` to the module link (`tools/msweep.sh` + `relink.py`); ac6 units:
`probe_arm_group.py --flag=-mllvm` (`tools/sweep6.sh`). Raw diff = lt2.sh lines (registers included).
A unit is parked here only when every lever that applies has a result.

| Unit | Best state | L1 | L2 | L3 |
|---|---|---|---|---|
| 0x44a8 update_clock_and_process_events | 12/482 normalized (2026-11-16; full probe agrees) | many rounds, 294 -> 35 (see Jeff notes) | 2 rounds (98 + 52 switches): none below 35; movers all worse (43..445) | linked with 0x4458 as in V204; remaining gaps are codegen, not pools |
| 0x4458 wait_shared_timer_delta_exceed_requested_at_4458 | instructions exact | done | n/a (exact code) | needs 0x44a8's pool words 0x4858/0x485c; installs only with 0x44a8 |
| 0x41e4 update_motion_sample_history_and_activity_flags | 100/219 raw, register rotation only (annotated candidate) | annotated sequence start gave 1:1 length | 98 switches: 83 no effect, 12 worse (107..250) | n/a (own pool) |
| 0xca68 (+0xce6c) process_motion_axes_and_activity_state | 74/569 raw | rounds in Jeff notes | 98 switches: none below 74 | absorbs the 0xce50 pool; n/a beyond that |
| 0xb1b0 (+0xb5d0) BLE history-sync tick | 593/686 raw (186 normalized) | rounds in Jeff notes | 2 rounds: best -disable-preheader-prot -join-globalcopies 604 -> 593 raw (2%), no convergence | n/a (own pools) |
| 0x25c4 (+0x26ac/0x2770/0x2b70/0x2bd8) BLE command handler | 824/953 raw (380 normalized) | rounds in Jeff notes | 98 switches: none below baseline | chunks are one function; n/a |
| 0x3584 process_sensor_mode_and_update_display | 236/275 raw, 16 bytes long | rounds in Jeff notes | 2 rounds: -pre-RA-sched=source 254 -> 236; combos no further | n/a GlobalMerge lever (2026-11-16): V204 reads sensor_field_state+0x44 as +64, #4; split 32/32/40 globals: kept LTO relink 254 -> 401 raw, worse; plain probe worse too (169 -> 212). No gain |
| 0x3838 start_or_stop_sensor_calibration (ac6) | 2026-11-17: 40 normalized, plain ac6 without switches (annotated 0xff, loop weights 0.55/0.7/0.97 give V204 r7=5000 and remat base; left: high/low spill swap; see candidate header). Earlier: 18 normalized / 209 bytes (ac6); 208 bytes with -join-globalcopies -sink-common-insts | L1: __builtin_expect(active,0) on the guard (early-return order), flat uint16 fields at device_control_state+0x42..0x49 (movs #70), named reading fields at time_event_queue_state+0x48..0x4f: 54 -> 18 normalized; more shapes no gain | L2 3 rounds: sweep (-join-globalcopies 14 lines but 287 bytes); pairs (+ -sink-common-insts 16 / 208 bytes); triples with -disable-machine-sink / -consider-local-interval-cost / -tail-dup-placement=false / -force-precise-rotation-cost: 208-266 bytes, none better | L3: pools shared with 0x3584 (reads its pool) and 0x3b78/0x3ea0 (it reads theirs). Joint LTO 3838+3584+3b78 with the parked candidates: placement fails (0x37d0 lands at 0x37e4); 0x3838 alone under LTO is 20 bytes long (ER_07fc39f8). Code length, so armlink grouping/order cannot fix it |
| 0x8134 configure_command_record (ac6) | 56 normalized / 236 bytes | L1: hill-climb, best 132 lines; mode-test order, divisor call and tail arithmetic match; annotated 0/1 phi inputs 198-212, worse | L2: 98 switches: none changes the byte count (-early-live-intervals only shuffles); stopped early | L3: it reads the 0x8500/0x85e0 pools; 0x7f98/0x8040 (read its pool) are already C. Joint LTO 8134+8500+85e0 with Alice's candidates: 0x85e0 is 4 bytes long (ER_07fc867c, her retained-word collision); the plain ac6 group cannot be placed around the asm 0x8354. Needs the 0x07fd03dc/0x07fd0456 table symbols (given via P6_SYMS) |
| 0xd4f8 / 0xd9c8 / 0xd0f0 (ac5) | 41 / 102 / 58 register-normalized | L1: 0xd4f8 register allocation/constant hoisting only; 0xd9c8 register allocation only; 0xd0f0 x-4g-g term shapes 492 vs 484 bytes, V204 frame slots 0/12/20/32 not reproduced (Jeff notes) | L2 (armcc flags, no -mllvm on ac5) 2 rounds: single flags (list above) change no byte; -O2/-Otime/-O2 -Otime worse; stopped early | L3: none of the three shares a literal-pool word with another unit (checked all V204 pc-relative loads), n/a |
| 0xd2dc filter_accelerometer_sample_and_classify_level (ac5) | 168 register-normalized | rounds in Jeff notes | armcc flag sweep: only -O/-Otime change it; -O2 -Otime 126 normalized but longer and more raw diffs | n/a |
| 0x8354 read_three_byte_samples_and_update_history | 162/204 raw | L1: uint8_t window parameter, best shape 342 LTO diff lines -> 182; remaining: count spill timing, OR vs ADD of b1<<8 in the decode | L2 2 rounds: -pre-RA-sched=list-hybrid 182 -> 164 (right length), + -disable-sched-cycles 162; plateau, stopped early | L3: its pool words 0x84e4-0x84fc are read only by itself (checked all V204 pc-relative loads), n/a |
| 0x8c90 dispatch_timed_state_callbacks | 2026-11-17: wrap kept as a branch (expect, annotated arm, with/without -static-likely-prob=100) is 164+ normalized, select stays best. 62 normalized (Jeff 2026-11-16, candidate header has the levers; was 73/222 raw) with -disable-machine-sink (99 without) | 3 rounds under the switch (volatile/moved doubling, wrap form, clamp form, store order): none below 73 | 2 rounds: -disable-machine-sink 99 -> 73; combos no further | device_control_state literal already shared with 0x8fa0 as in V204 GlobalMerge lever (2026-11-16): correction, V204 uses separate `movs #34` / `movs #35` (our extern view gives base+34, #1). Round 1 device_control_state as 34 byte globals + 2-byte PWM state: under LTO GlobalOpt splits the array, 108; round 2 36 separate byte globals: plain probe gives the movs #35 form, 32 vs 30 normalized; LTO 106; round 3 keep function storing all globals: LTO 127 (stores adjacent, reversed). No gain; best stays 73 |
| 0x20f0 process_sensor_reading_and_update_state | 188/429 raw | rounds in Jeff notes | 98 switches: best -enable-deferred-spilling 192 -> 188 | ring literal 0x07fd1f1c in 0x2590's pool: links correctly in the LTO probe; the 4-byte overrun is codegen |
| 0x302c app_db_init_next | INSTALLED 2026-11-17 (Jeff, ac6lto; see 0x302c note; text below is history). 43/116 raw, right size (Jeff 2026-11-16 re-check, probe with P6_RO_TO_SUPPORT=cust_prf_funcs: 71 raw lines. A no-code assume on k != 0 changes nothing; an explicit `if (i == 0)` gives V204's cmp #0 / store 1, but LTO then folds the table index and the function is 8 bytes short; widened-index and if-forms of the loop stay at 71-112) | L1: SDK 6.0.18 loop; explicit k test matches the HOGPD block; the i == 0 compare and the pool order still differ | L2: 98 switches: none below 43 (84 no effect); stopped early | L3: its pool is read by 0x2dc4/0x2ff4, already C; probed with cust_prf_funcs as an LTO support unit (in memory): pool order still differs (IR block order) |
| 0x1c18 BLE_WAKEUP_LP_Handler | INSTALLED 2026-11-16 | Alice's candidate | not needed | resolved: 0x1f34 in the same LTO module gives V204's literal copy |
| 0xa960 use_supplied_timing_value_derive_display_at_a960 | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — instructions exact; 5 literal loads pick other copies (acc8/ad74/ad4c vs V204 ace0/ad4c) | Alice's rounds | n/a (instructions exact) | 3 rounds: native alone; native with 0xace8; native with 0xace8 and Alice's 0xacd0 (probe only); plus LTO_FIXED_UNITS pins on a9b4/acb8/ab78/ac7c: copies unchanged 2026-11-16 second pass: the copies are fixed by the display-cluster link, not by 0xa960. V204's 0xace0 word is an orphan copy (0xacd0 itself loads 0xad74). Adding the same-length 0xa9d0 candidate to the module overflows by 4 bytes (initialize_peripheral_state_and_interrupts at 0xadfc, expected 0xadf8), and so do Alice's 0xacd0 and 0xa9d0+0xace8. 0xa960/0xa9d0/0xacd0/0xace8/0xabb4 share pools in V204's sequential link and can only converge together; the code blockers are 0xa9d0 (ne-select, see its row) and 0xace8 (3600 constant order). |
| 0xabb4 select_measurement_marker_value_according_active_at_abb4 | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — code + own pool runs to 0xac18; V204 code ends at 0xac04 and uses the fixed pool block there | Alice's display_mode_pool rounds | n/a until the pool fits | native and plain LTO, each with choose (0xac7c) pinned via LTO_FIXED_UNITS: region ER_07fcac04 overrun, the compiler does not reuse the 0xac04 pool |
| 0x24dc search_circular_record_queue_and_compact_if_needed | INSTALLED (ac6 group with 0x2568, Jeff tree; row text below is history) — was 8 bytes: muls operand copy (V204 copies index r6, here size r4) and the 0x2590 queue literal | 5 variants (entry local, uint16 size/index, declaration order) + operand swap: muls unchanged (canonicalized) | 98 switches: none changes a byte | the 0x2590 word is in 0x2568's pool (Alice's claim); LTO picks 0x2760 instead; co-conversion needs her unit 2026-11-16: instructions now exact (element_size read inside the first loop: Reassociate rank gives `mul size, index`); only the two queue literals remain, 0x2760 vs 0x2590, a pre-merge range effect of the 0x2568/0x25c4/0x26ac stubs. |
| 0x552c find_latest_valid_record_within_bitset | INSTALLED 2026-11-16 (Jeff, ac6lto, no switch) — was 6 normalized (plain-ac6 ndiff, Jeff 2026-11-16, no switch; was 28 raw under ac6lto); candidate `_jeff` | 3 rounds: select-chain tail 145 -> 47 bytes, 36-byte scratch fixes sp+8, status/stamp locals etc. canonicalize | ac6: 2 rounds (-phi-node-folding-threshold=0, -max-speculation-depth=0); LTO: -disable-machine-sink 44 -> 28, combos none | resolved: LTO links 86400 from 0x5600's pool (0x564c) as V204; remaining is slot order + status-test placement |
| 0x9004 convert_timestamp_to_calendar_fields | INSTALLED 2026-11-16 (Jeff, ac6) | Alice's and Jeff's candidates (`_jeff`) | 98 switches: best -max-speculation-depth=0 212 -> 210 | LTO overruns by 16 bytes; n/a |
| 0xa64c advance_registration_data_transfers | INSTALLED 2026-11-16 (Jeff, ac6lto) | Alice's rounds | 98 switches: -enable-deferred-spilling 259 bytes but 28 normalized; none better | LTO identical to ac6 (22); n/a |
| 0xec2c initialize_sensor_processing_state | 484 bytes, 8 bytes long, ~400 normalized | Alice's rounds (first 166 bytes nearly exact) | 98 switches: none below ~386 normalized | n/a |
| 0xace8 convert_elapsed_sensor_time_minute_second_at_ace8 | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — native: 4 normalized lines (the 3600 constant is built after the elapsed load, V204 before) | 3 rounds: volatile load, named divisor, uint16 divisor: no change | 98 per-unit switches (native relink of the kept module): none below 4 | needs native 0xa960 in the same probe for the 0xad4c pool (done); pool placement then matches; Jeff 2026-11-16 re-check: in MIR the elapsed load is before ADJCALLSTACKDOWN and 3600 after it; annotation/bitcast-hoisted 3600 in IR, `/` libcalls, pre-RA-sched and misched variants all stay at 4 or worse |
| 0xa9d0 render_current_time_charging_measurement_markers_at_a9d0 | INSTALLED 2026-11-16 | ne-select kept by `__builtin_assume(is12 | (value != 1000))` (second use of the compare blocks InstCombine's eq canonicalisation); normal path as if-body, expect(0) on the separator bit | n/a | method: hand-edited IR through codegen (-x ir -Xclang -disable-llvm-passes) to find the IR V204 had, then a source shape producing it |
| 0x98d4 SDK main() (+9cfc, 9da0, a1a0, a538) | ac6 427/1553 normalized (with -simplifycfg-hoist-common=false -disable-lftr), length 1554 vs 1553; LTO 16 bytes long; candidate in Jeff pending_candidates/ | 3 rounds: 1025 -> 468 (always_inline SDK helpers, ROM variables as externs) -> 466 (loop bounds) -> 457 (key-mode switch fallthrough, WKUP pointer loop) | 98 switches: hoist-common=false / -disable-lftr / -early-live-intervals 437 each; pair 427; triples and additions no better | L3: pools shared with 0x9104 blocks (0x9534/0x9764 read its pool) and it reads 0xa660 (0xa64c pool). Joint 9104+98d4+a64c ac6 and LTO: both fail on code length (see 0x9104 row); armlink grouping/order cannot shrink code |
| 0x9104 dispatch_radio_and_sensor_state_events (+91a8, 9538) | ac6 229/817 normalized (with -enable-gvn-sink), length 816 vs 817; candidate in Jeff pending_candidates/ | 4 rounds: 591 -> 275 (switch shapes, one jump table) -> 251 (phase chain order) -> 235 (state order); round 5 (struct copy, expect, table offsets) no gain | 3 rounds: sweep -enable-gvn-sink 229; 3 combinations none better; round 3 gvn-sink + -enable-load-pre=false / -disable-copyprop / -split-spill-mode=size / -enable-deferred-spilling: 229-233 | L3: shares pools with 0x98d4 (reads 0x98f8/0x9b28). Joint 9104+98d4+a64c: ac6 9104 code is 12 bytes long (0x98d4 lands at 0x97b8 region), LTO a64c lands at 0x07fca65c (+16); code length, so armlink cannot fix it. Blocker is GlobalMerge base+76 addressing (new lever, shared layout) GlobalMerge lever (user-approved 2026-11-16), candidate `dispatch_radio_and_sensor_state_events_block_at_9104_globalmerge.c.txt`: round 1 cycle_control_state block as 19 word globals + the 14-byte gain state at +0x4c: plain 229 -> 188, LTO relink 535 -> 441 raw and the right length (ends 0x97ac); round 2 sensor_field_state split (32/32/40) as well: no change (plain 192, identical code alone); round 3 keep function that stores all globals (needed under LTO). L2 on it: plain 98-switch sweep best -enable-load-pre=false 185, pairs no better; LTO 98-switch sweep best -disable-copyprop 439. Still MISMATCH; installing needs the block defined in C (shared layout) |

### Alice parked ledger (2026-11-16 goal)

These are DONE by parking for this pass, not installed C conversions. Candidates
stay in pending_candidates and guards are unchanged. L1 source shape/types;
L2 compiler/profile/options; L3 literal-pool ownership/layout. The scope of each
negative result is stated; n/a does not mean an untested applicable lever passed.
Historical CLAIMED source comments do not override the parked status here.

| Unit | Best diff / extent | Candidate in Alice pending_candidates/ | L1 result | L2 result | L3 result / applicability | Reopening trigger |
|---|---|---|---|---|---|---|
| 0x2568 initialize_configuration_record_defaults | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — 52 bytes / 22 differences vs OEM 48 bytes; correct-extent volatile form 48 / 39 | event_ring_init/nonvolatile.c.txt; baseline.c.txt in same directory | Canonical types, pointer/constant annotations, field order, helper, aggregates, raw words and fences: no exact form | ARM6 O1/O2/O3/Os/Oz, 6.18, ARM5 volatile/nonvolatile; source scheduler 26 differences, list-burr unchanged 22. Unsupported linearize is an error, not a result | Remaining register/store/frame differences exist in standalone code; no shared-pool dependency explains them. Pool grouping cannot fix those instruction differences | New source/liveness or compiler-provenance evidence; not equivalent annotation/order/flag trials |
| 0x3b78 switch_display_state_and_run_hooks | INSTALLED 2026-11-17 (ac6likelyprob; see 0x3b78 note; text below is history). (Jeff 2026-11-16 re-check: 4 normalized plain ac6. V204 stores saved_enter on each loop-1 exit edge sharing the r6 zero; explicit per-edge stores, in source (goto) or IR, lose the shared zero: 108+ lines; tail-dup size/threshold switches no change; -aggressive-machine-cse is not an armclang 6.16 option; also: zext/lifetime moved out of the join, single-entry exit phi (folded), split store block with -disable-branch-fold / tail-dup-placement thresholds: still 4) 500 bytes / 6 differences; suffix from 0x3bb6 and literals exact | display_switch_tail/volatile_copy.c.txt | Separate volatile saved_enter fixes callback reload. Explicit edge stores, scoped/whole volatility, zero/index/address/fence/weight variants remain inexact. IR/machine dumps locate the remaining store merge after allocation | ARM6.16/6.18 same closest result; Clang14/18 worse. Tail merge/duplication, PHI splitting, placement/SimplifyCFG and scheduling probes do not improve it; logs in display_switch_tail | n/a to remaining six bytes: native extent, literals/calls and full suffix match. Difference is local first-lookup copy/store control flow | New evidence preserves both entry-zero liveness and separate edge stores, or identifies a new relevant codegen control |
| 0xd908 initialize_shared_control_state_tables | 136 bytes / 24 differences at ARM5 O2/O1; O3 61 differences | control_initializer/best.c.txt; initialize_shared_control_state_tables.c.txt | Published-pointer reuse helps; volatility, counters/widths, pointer/index ordering, aggregates, loops and 32 barrier masks do not converge | ARM5 O1/O2/O3, Otime, debug, M0+ and SoftVFP probes recorded; O2/O1 closest. Results in control_initializer and averaging/initializer notes | n/a to current mismatch: register choice and index/store scheduling differ before any identified external-pool dependency | New compiler or loop-lifetime evidence; not equivalent counter/volatility/barrier permutations |

### Alice completed lever batches: averaging and display pools (2026-11-16)

Candidates below already exist in pending_candidates; none was installed.
Temporary log locations are reproducible evidence paths, not new repository
artifacts. All original byte/value/range/overlap checks remained enabled. The
linked display probes used the frozen, verified wakeup-synced snapshot, compiled
changed objects fresh, and reused only byte-identical unchanged objects. No
normal source, profile or metadata was changed by those probes.

| Unit | Best diff / candidate | L1 source result | L2 profile/option result | L3 pool/layout result | Reopening trigger |
|---|---|---|---|---|---|
| 0xcf80 average_top_three_nonzero_sample_values_by_frequency | ARM5 300 bytes / 77 differing bytes; average_top_three_nonzero_sample_values_by_frequency.c.txt | Existing 720 scalar initialization/index-lifetime/sample-volatility trials give 298 distinct outputs, none better; seven count-width combinations also preserve baseline. Destructive counting and first-in-array tie breaking retained | Fresh finite ARM5 matrix: O3 and Ospace 300/77; O1 292/210; O2 and O2space 296/162; Otime 348/335; O2time 316/297. Logs /tmp/sr08-alice-cf80-levers/. Scores refer to each returned probe window; shorter/wider windows are not acceptance | n/a: argument/stack-local algorithm with fixed helper calls; measured differences are register/spill/loop instructions, not shared literal ownership. Its equal 300-byte baseline already has the correct placement extent | New compiler-provenance or source-lifetime evidence. Do not repeat the existing scalar/width/optimization matrix |
| 0xa904 write_literal_halfword_to_shared_state_offset_0x40 | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — 16-byte original region; only a906 LDR byte differs, target acc8 instead of acb4; display_followup/write_literal_halfword_to_shared_state_offset_0x40.c.txt | Minimal volatile halfword store and canonical/array declarations reproduce original non-relocation instructions and packed constant | Current native ARM6 and full LTO each give the same 16-byte/one-byte mismatch; compiler instruction selection is solved, so further unrelated codegen flag sweeps do not address the measured target | New fixed-following-a914 boundary tested: same one-byte mismatch. Prior writer/formatter grouping, retention/alias and input-order reductions did not solve the full ownership problem. Current three-phase log /tmp/sr08-alice-a904-levers.log | New source-visible pool/global identity or ownership evidence that selects acb4 while preserving existing native readers. An equivalent store spelling is not new evidence |
| 0xa8ec format_signed_state_byte_as_three_display_digits | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — 24-byte region; only a8f4 LDR byte differs, target acc8 instead of ac78; display_followup/format_signed_state_byte_as_three_display_digits.c.txt | Signed byte load at shared+0x95 and formatter call reproduce the original body; array and canonical views tested | Current native ARM6 and full LTO each give the same 24-byte/one-byte mismatch. No instruction-generation mismatch remains to justify an unrelated flag sweep | Original fixed neighbours remain context stubs in this isolated conversion, so it does not lose the boundary fixed in aae8. Prior native writer/formatter groups select ace0 or fail retained-pool placement; source-based pool/alias controls recorded in display_word_writers. Fresh log /tmp/sr08-alice-a8ec-levers.log | Conversion/identity evidence for the ac78 pool owner or another change that preserves original references. No unchanged group retry |
| 0xacd0 write_shared_state_byte_44_and_word_40 | INSTALLED (C in Jeff tree; audit 2026-11-16; text below is history) — Own 24-byte region exact, but existing a914 and acb8 regress; display_followup/write_shared_state_byte_44_and_word_40.c.txt | Direct volatile byte+word stores reproduce the original instructions and values | Native and LTO both reproduce its own region. Instruction-only flags cannot establish whole-image correctness | Fresh comparative probes explicitly include old native a914/acb8: native, native with original acd0 start fixed, and LTO with that start fixed all drop acb8's required acc8 root and retarget a914. Prior complete build measured six display byte differences. Logs /tmp/sr08-alice-acd0-levers.log; older full rejection in status_dispatch_offset/rejected_full_image_differences.json | New evidence retaining both acc8 and ace0 as proper pool owners with original references. Local 24-byte equality is not sufficient and must not trigger another identical full build |

These four entries are DONE by parking for this goal, not exact installed C.
Their source candidates remain available. New fixed-boundary knowledge was
applied only where the old boundary changed; it did not resolve these ownership
mismatches. Normal installed image remains the last verified canonical build.

armcc 5 flag sweep (2026-11-16, Jeff): for the three ac5 parked units 0xd4f8, 0xd9c8 and 0xd0f0, the profile flags
(`--c99 --cpu=Cortex-M0 --thumb -O3`) are already the closest. None of these changed one byte:
`--apcs=interwork`, `--split_sections`, `-g` (and the three together as a Keil-project set),
`--no_unaligned_access`, `--no_inline`, `--no_autoinline`, `--forceinline`, `--c90`, `--enum_is_int`,
`--signed_chars`, `--strict`, `--gnu`, `--no_data_reorder`, `--multifile`, `--no_multifile`, `--restrict`,
`--no_remove_unneeded_entities`, `--loop_optimization_level=0/1/2`, `--reduce_paths`, `--no_reduce_paths`,
`--fpmode=fast`. `--apcs=/ropi` changes global addressing (wrong); `--apcs=/rwpi`, `--vectorize` and
`--no_scheduling` are rejected. -O2, -Otime and -O2 -Otime are all further away (0xd4f8 41 -> 81/145/93
register-normalized lines; 0xd9c8 102 -> 169/575/206; 0xd0f0 58 -> 58 with more raw lines/188/86). The
remaining difference is source shape (or the compiler build, which is deliberately postponed). Wrapper:
Jeff's job tmp `tools/p5f.py` / `tools/sweep5.sh` patch the ac5 flags in memory only.
armcc 5.06 update 6 (2026-11-16, Jeff): the user installed MDK Professional 5.31 under Wine at
~/.wine/drive_c/Keil_v5_31 (armcc "ARM Compiler 5.06 update 6 (build 750)", licence accepted). Jeff's tmp
`tools/p5w.py` points only the ac5 profile at it, in memory (P5W_NATIVE=1 runs our u7 through the same wrapper).
All 12 installed ac5 units stay BYTE_EXACT. Every parked armcc candidate gives output identical to u7, with the
same flags: 0xd4f8 (731 differing bytes), 0xd9c8 (857), 0xd0f0 (295), 0xd2dc (482), and Alice's 0xd908 (-O2, 24),
0xcf80 (77) and 0xdd68 group (-O2 -Ospace, 3450). So 5.06u6 does not explain the remaining armcc differences;
5.06u6 and u7 generate the same Cortex-M0 code for this library. Next older candidate would be 5.06u5 (MDK 5.24a).
armcc 5.06 update 5 (same day): MDK Professional 5.24 at ~/.wine/drive_c/Keil_v5_24 ("ARM Compiler 5.06 update 5
(build 528)", licence accepted; P5W_KEIL selects it). Same result: the 12 installed ac5 units stay BYTE_EXACT and all
seven parked candidates give output identical to u7. Three 5.06 updates (u5, u6, u7) agree, so the compiler update
is ruled out for this library; the remaining armcc differences are source shape (or flags not yet found).
Other-compiler check (2026-11-16, Jeff): the parked units are not from another toolchain. (1) Encoding fingerprint:
GCC writes Thumb-1 low-register copies as `movs Rd, Rm` (LSLS #0); the parked units have 675 `mov` (0x46xx) vs 56
`movs`, the same mix as the exact ac6lto units (793 / 34). (2) Placement: every parked armclang unit lies between
byte-exact ac6/ac6lto units, and every parked armcc unit between byte-exact ac5 units, so they come from the same
link streams (a separately built library would be one contiguous block); several also share literal-pool words
with exact neighbours. armcc --cpp (C++ mode) changes no parked armcc candidate either. 0xace8: the 3600 constant
order is a scheduler tie-break (the elapsed load is chained before ADJCALLSTACKDOWN; a const view moves it inside
the call sequence but BURR still schedules it first); 540 source combinations, all pre-RA schedulers and clang
14/18 do not reproduce it (GCC -O2 does put the constant first, but GCC's encodings are ruled out above).
- dispatch_radio_state_action_block_at_86b8 (0x86b8-0x8770, absorbing chunk 0x86e0): whole-function C switch. With
  Alice's ac6wordtables flags (-mllvm -arm-synthesize-thumb-1-tbb=false) the word table, case bodies, default target
  (case 5 listed before case 4) and stores match. Case 3 must write value_0a = 4 before value_08 = 0 (two halfwords
  merged into V204's 0x40000 word). Only remaining difference: V204 materialises the zero (movs r1,#0) before
  movs r2,#16; ours after (25 bytes). Tried: field splits at 2/12, store orders, -pre-RA-sched=source, ac6lto.
  V204 survey: its only Thumb-1 TBB-style table is in SDK hogpd_report_cfm_handler (0x7cdc). The three word tables
  (0x8040, 0x86b8, 0xa7a0) are all vendor code, so V204 built vendor and SDK files differently; -Os/-O1/-O2/-O3
  do not give word tables.
- perform_flash_memory_operation (0x3ea0): vendor routine = wdg_reload(200) + SDK spi_flash_release_from_power_down,
  then switch(op): spi_flash_read_data / spi_flash_write_data+page_program / 4 KiB spi_flash_block_erase loop (op 0x20,
  wdg_reload per sector), chip_size 0x800000, then spi_flash_power_down (0xbae2). Program/erase refused (power down,
  return -1) while measurement_state == 1 unless read_record_flag_bit_zero(). The switch candidate (ac6lto) matches the
  prologue. Blocker, shared with 0xbb94: V204's CS-pin select (spi_flash_cs_select ? 8 : 1) is `bne -> 8`, ours
  `beq -> 1`. opt-bisect: InstCombine makes it `icmp eq`; Machine Sinking gives V204's order; the final
  MachineBlockPlacement swaps it (50/50 tie, as select-lowered diamonds carry no weights; at -Oz CodeGenPrepare ignores
  the select's !prof). Only these three diamonds in V204 use `bne`. Not fixed by: ternary/if-else/uint8/volatile/
  __builtin_expect/GPIO_SetActive+SetInactive via the GPIO_ConfigurePin unit/-O levels. Suspect a different
  compiler build or a construct that keeps a real weighted IR branch.

- `suotar_patch_data_ind_handler` (0x07fcc148) is the SDK function with the vendor's
  `app_suotar_img_hdlr` and image-header check inlined (first block: signature 0x70 0x51, unaligned u16 product
  fields at +37/+39 = 1/23 or 0/0, version[1] '.', erase 0x6c000, header written with validflag 0xff/imageid 0).
  Candidate `exact_clang18_jeff/pending_candidates/suotar_patch_data_ind_handler.c.txt` matches all but one block:
  V204 loads code_size into r2 before the `suota_copy_pending = 1` store, armclang after it into r0 (6 bytes).
  Tried: statement orders, a codesize local before/after the checks, volatile flag store, image_len test,
  merged checks. Its byte-array/volatile tricks (66-byte buffer, two volatile zero bytes) were needed for the rest.

- `validate_cached_text_payload_return_install_at_8fb0` (device-name record at merged_globals_574c.device_name,
  read from flash 0x64000; default "SR08"): candidate in exact_clang18_jeff/pending_candidates/ (.c.txt) matches except that armclang
  folds `length != 0 && length <= 17` into one `length - 1 <= 16` test and addresses the record from the block base,
  where V204 keeps a record pointer in r5 and tests 0 and 17 separately.
- `optionally_calculate_three_axis_magnitude_dispatching_at_3d6c`: candidate in exact_clang18_jeff/pending_candidates/ (.c.txt; new
  device_control_state.magnitude_axes at 0x07) has the right calls and arithmetic; register assignment and the
  order of the three local stores differ (V204 stores y before x; it keeps x in r4 and the mode in r1). Init-order,
  separate-z and int-parameter forms do not help.

- `save_valid_measurement_range_clear_stale_at_8500`: accepts time_event_queue_state.sensor_reading (0x07fd1fcc,
  status word at +0x3c) into device_control_state.sensor_reading (+0x42; new include/sr08_sensor_reading.h) and logs
  it, else clears it. Candidate in `exact_clang18_jeff/pending_candidates/save_valid_measurement_range_clear_stale_at_8500.c.txt`
  matches the accept path; the clear path differs: V204 stores strh +0x42, strh +0x48, one word +0x44 (needs known
  4-byte alignment) and keeps r4 = 1 for both tails, while armclang emits four strh via base + 66 (any store order,
  aligned(4) typedef or declaration, struct assignment and compound literal tried).

- `clear_interrupt_status_bits_dispatch_corresponding_at_1f34` is SDK wkupct_quadec.c WKUP_QUADEC_Handler
  (QUADDEC_callback never registered, so that path only clears/masks). WKUPCT_callback is the word at 0x07fd5698
  (merged_globals_5650 + 0x48), stored once with conditionally_initialize_peripheral_and_schedule_service by
  wkupct_register_callback inlined at 0x07fca208 (inside run_sensor_measurement_state_cycle_block_at_a1a0, asm).
  V204's `if (WKUPCT_callback) bl F` is LTO GlobalOpt devirtualisation, so convert it together with that unit
  (the global must be defined inside the LTO module), not alone.

- `apply_range_mode_validity_checks_preserving_at_8878`: candidate (headers added: cycle_control_state
  measurement_value 0x38; device_control_state sensor_state_19/1a and sensor_reading) in
  `exact_clang18_jeff/pending_candidates/apply_range_mode_validity_checks_preserving_at_8878.c.txt`. It matches
  except block placement: V204 puts the shared `measurement_value = 0x7fff` block right after the first `reading <
  -16384` test (bge over it), armclang after all three tests. Status `== 0 || == 510` must store without an early
  return (otherwise the switch lowering tests 510 first). Reading the ID into a local before the tests gives V204's
  placement but loads the ID too early. If/else-if, nested, goto, int and combined-condition forms do not help.

- `dispatch_batch_item_three_sign_extended_at_ee4c`: `if (!sensor_frame_batch_state.context) return 0; for (uint8_t i
  = 0; i < count; i++) process_sensor_frame_entry_dd68(a[i], b[i], c, d, x[i], y[i], z[i]); return 1;` (count is
  the 5th argument, x/y/z int16 arrays the 6th-8th). V204 keeps a/b/i/count in r6/r5/r4/r7, spills c/d into
  `push {r0-r3}` slots and reloads x/y/z from the incoming stack slots every iteration. armclang (standalone and
  LTO alike) with a uint8_t count strength-reduces to pointer increments; with a 32-bit/int/uint16 count it keeps
  the index but hoists x/y/z into spill slots. uint64_t c:d, while-loop and early-index forms change nothing.
- **Resolved in Alice since merge four:** `build_sensor_command_packet_acquiring_shared_at_519c` (not a lock: BLE_SAMPLECLK_REG/BLE_BASETIMECNT_REG sample,
  then a 0x0c record 0xcc,0,profile[6],1,0,23,0,slots[0..2] with CRC-32 seed 0x4a59af55 over the 15 payload bytes,
  queued by search_circular_record_queue_and_compact_if_needed). V204 keeps payload = record + 1 in r4 from before
  the wait loop and stores relative to it without merging p[9..11]; armclang folds every store into the record
  base (and merges 23,0 into one strh) for byte-array, uint32 array and struct-with-payload forms.
  A payload pointer annotation now prevents this folding; see the verified Alice installation above.

- `handle_matched_device_state_send_corresponding_at_1da8` (vendor sensor probe: who-am-I 0x0f == 0x11, register
  0x70 == 0x28 selects sensor_variant 3, else 2). A C candidate matches except that V204 keeps one
  `strb` per branch after loading the base, while armclang sinks them into one store (also with volatile, a
  local pointer, or a switch). The two register tables at 0x07fcfac6/0x07fcfacc need distinct symbols, or the
  second address folds to first + 6.

- `app_db_init_next` (0x07fc302c): the SDK 6.0.18 loop with user_prf_funcs = {HOGPD, app_hogpd_create_db},
  prf_funcs = {SUOTAR} and V204's vendor app_hogpd_create_db (2 report slots; report table at 0x07fcfba8) gives
  the create body almost exactly, but InstCombine folds the user/prf loop tests to `k == 1` exits where V204 has
  `k == 0` / `i == 0` guards. Candidate: Jeff's job directory (not kept); restart from the SDK.
- `app_easy_gap_undirected_advertise_start_create_msg` (0x07fc32bc, still asm): V204 folds user_adv_conf, takes
  the advertising data length from merged_globals_5650+0x0a (22 or 0) and the data from merged_globals_574c+0x28,
  and always appends the flash-stored device name (0x07fc8fb0) to the scan response. With ke_msg_alloc declared
  `malloc`, a candidate matches except that V204 stores channel_map and mode separately and addresses the scan
  response as (cmd + 9) + len + 35 where armclang folds it to cmd + len + 44.
- `write_shared_state_byte_45_and_word_40`, `write_shared_state_byte_44_and_word_40`,
  `write_literal_halfword_to_shared_state_offset_0x40` (Alice): shared-literal placement mismatch; candidates in
  `build/cand/display_character/`. The LTO placer now has a pre-merge range rule for module loads into stub
  literals (see DEVELOPMENT_HISTORY), which may be worth a retry.
- Superseded interpretation of `wait_requested_status_mask_minimum_elapsed_at_8a78`: the push/pop frame is reproducible by ordinary void C, and the supposed spin lock is BLE clock sampling. See Alice's `poll_status_until_match_or_ble_timeout` conversion; do not retain assembly on the old assumption.
Alice notes kept from before the third merge (parked work and tool facts):

Alice build/addgroup.py already preserves arbitrary compiler keys via
`"([^"\n]+)"`; the older ac[56]/ac6lto/ac6apcs-only pattern is absent.
Do not replace it with the older parallel variant.

Historical display probes (the 0xaa4c/0xab3c/0xab78/0xac7c cases below are now superseded by the accepted native-context batch; signed formatting remains parked):
- format_signed_state_byte_as_three_display_digits: native body matches except
  two shared LDRs; isolated traced ac6lto run passes context validation but
  chooses root word0x07fcace0 instead of0x07fcac78 at instruction0x07fca8f4.
  Artifact dump /tmp/sr08-display-signed-keep; trace
  /tmp/sr08-display-signed-keep.log. Earlier combined display probe changed
  context instruction0x07fca906 fromeb to f8 and was rejected.
- choose_display_state_bytes_from_mode: native global addressing adds an r4
  spill and separate offsets66/65 instead of reusing base+64. C pointer-local
  variant normalizes identically. Combined LTO probe fails the same a906
  context value check before candidate comparison.
- update_status_display_using_remainder_rom_at_ab3c: C modulo3 control flow and
  ROM divide call match; native addressing uses offset66 rather than MOV/ADD64
  plus byte2. Combined LTO probe fails the a906 context check.
Candidates are build/cand/display_modes/. No placer checks were changed.
SR08_LTO_KEEP is the artifact-retention option. SR08_LTO_SPILL takes a numeric
scatter address, NOT a directory; an incorrect diagnostic invocation failed
L6226E/L6292E and was corrected, not used for any acceptance result.

Alice display-pattern0xab78 probe83396 exited1,not accepted. Native ac6
changes register assignment/address formation and grows into following entry;
ac6lto rejects L6291E overlap at ER_07fcabac (candidate reaches0x07fcabb4).
That result is historical: the later native-context C conversion is installed and verified. Its old exploratory baseline is
exact_clang18_alice/pending_candidates/select_two_display_patterns_mode_flag_at_ab78.c.txt
(outside ignored build scratch). No active Alice probes remain.

Alice elapsed display0xace8 investigated after merge: original actually derives
hours=elapsed/3600 and minutes=(uint16_t)(elapsed-hours*3600)/60, gated below
9001; writes two digits at display+0x40 and+0x43,separator72 at+0x42. Source
comment corrected; symbol retained for coordination. Candidate preserved in
exact_clang18_alice/pending_candidates/convert_elapsed_sensor_time_minute_second_at_ace8.c.txt.
Native ac6/ac6source108 bytes differ only entry scheduling (four instructions)
and two shared-pool loads after branch hints preserve original predicates.
Direct division and explicit __aeabi_uidiv are identical. Without branch hints
threshold becomes9000 and opposite branch layout; -O2,misched/postmisched worsen.
ARM5 candidate96 bytes differs74 bytes. LTO21042 exited1: L6291E at fixed
ER_07fcad4c,next available0x07fcad50. Candidate NOT installed; gates unchanged.
Claim released,no Alice jobs live. Next attempt needs new scheduling/literal
evidence rather than repeating these probes.

Alice status dispatch0x80d8: pure C candidate preserves flag reloads between
commands40,46,47,then commands30/31 with separately reloaded value at+0x54.
V204 flags at cycle_control_state+0x4c; values+0x50,+0x52,+0x53,+0x54.
Native ac6/LTO13117 have84-byte extents (80-byte code plus pool); original
code spans86 bytes through the POP at0x812c:
three direct MOVS-offset/LDRB pairs replace MOV/ADD76/LDRB+4,+6,+7 triples.
Bit tests and call order match,remaining byte shifts follow this addressing
difference. Native ac5 yields76 bytes,not exact. Address-sinking,GEP-splitting,
constant-hoisting and ARM3addr controls did not alter native result. No global
compiler policy changes. All probes terminal,candidate not installed. Preserved
in exact_clang18_alice/pending_candidates/dispatch_enabled_indicator_fields_for_device_status.c.txt.
Do not repeat unchanged candidate; need evidence for source subobject/address
formation or target codegen before next attempt. Claim released.

Alice BLE wakeup0x1c18 identified in local SDK rwble.c BLE_WAKEUP_LP_Handler
(DA14585 path) plus inlined power_up and rwip.c patched_ble_regs_pop. Candidate
no asm,all non-literal native instructions exact;200-byte native extent differs
only shared literal placement. SDK notices retained. Candidate preserved in
exact_clang18_alice/pending_candidates/configure_peripheral_and_wait_for_status_flags.c.txt.
LTO1872 and traced37408 exit1 after strict retry cycle: ER_07fc1e70 overlap,
next available1e74. Retained /tmp/sr08-wakeup-keep/lto_module.axf shows
process_radio_state_if_active still16-byte exact code at1e60..1e6e,loading root
from20ec;an extra __arm_cp.8_0=0x07fd5650 remains at1e70,overlapping square-root
stub. This is a literal-placement issue,not changed wakeup instructions.
Trace /tmp/sr08-wakeup-trace.log. No failed candidate installed,no framework
changes. Original wakeup retained;claim released. All Alice jobs terminal.
Also tried signal fence in all-C display-pair candidate: no output difference
from unfenced failed trial; do not repeat unchanged.

BLE wakeup follow-up34638 exited1: numeric state variant avoids1e70 overlap
but GPIO0_Handler chains at1ce4 instead of1cdc (+8 bytes); artifacts
/tmp/sr08-wakeup-numeric-keep/,log /tmp/sr08-wakeup-numeric.log. Two scalar
absolute-address literals replace symbol-relative common-root accesses.
Correction to earlier 'unused literal' hypothesis: full diagnostic disassembly
shows candidate wakeup LDRs at1c60/1cb2 actually use cp.8_0 at1e70. The neighbor
process_radio_state_if_active uses20ec. Thus1e70 word is live for wakeup,not
orphaned; named-root LTO pool placement chooses the wrong slot. No gate changes
or candidate installation. Both named and numeric candidates preserved in
pending_candidates/; all Alice processes terminal. Future investigation should
check armlink relocation identity / common-root addressing,not delete the word.

Alice identity update: working folder renamed to exact_clang18_alice. All
Alice build/manifest/export paths and repository build instructions updated.
Jeff's directory and ownership labels left for Jeff. Existing historical
artifact filenames are preserved. No firmware behavior/compiler policy changed.

Alice folder rename verified: full build89026 canonical (569 sections,452
units); audit62334:103 direct/124 expanded,no failures. Export succeeds at
/tmp/sr08-alice-rename-bundle,577 files; all manifest paths resolve. No changes
to Jeff's files. Use exact_clang18_alice for Alice work from now on.

Alice clock renderer0xa9d0: candidate recovered with idle fill127/tag80,12-hour
conditional adjustment (signed hour comparison),hour/minute formatting and
conditional separator72. Native ac6 combines format/clamp predicates and moves
charging block;128-byte extent differs89 bytes. Early-return form identical;
branch hints91 differences,no-block-placement107,-Os120;ARM5 differs114.
Original retained,candidate in Alice pending_candidates/,claim released.
No probe jobs live. LTO not attempted on this unmatched instruction sequence.

Alice CUSTS1 duplicate cleanup: removed11 unmanifested manual copies,6 with
assembly. Each deleted symbol is manifested in decompiled_sources/custs1_profile.c
and defined there; five active manual custs1 files retained. Updated catalog
source_file/style/SDK summaries for11 symbols (previous metadata pointed to
stale files and sometimes misidentified semantics). Before/after source-only
exports identical578 files including generated README; same hashes as prior
verified Alice rename-checkpoint bundle. Therefore all577 exported build inputs
are unchanged from canonical569-section/452-unit build. No new firmware image
needed for deletions outside input graph. Audit /tmp/sr08-alice-custs-audit.json
remains103 direct/124 expanded,no failures. Jeff files untouched. Removed-file
list /tmp/sr08-alice-custs-removed.txt. All Alice jobs terminal.

Alice sensor initializer0xd908: typed C candidate uses existing checked
sr08_sensor_status_context layout. Preserves ordered15-word clears,40 pairs
of halfword histories,40 word pairs,120 samples and final ready flag. Native
ac6136 bytes differs107 bytes: keeps1 inr0/state inr1 rather than1 inr5/state
inr0,and strength-reduces loops. ARM5 differs108; no-LSR/source scheduler132
bytes differs104; do/while and O1/O2/O3 with no-LSR128 bytes differ92. Inlined
helper no-LSR identical132-byte mismatch. LTO57526 exited1 with actual code
diff (not a placement-only error),136-byte extent. No candidate installed.
Candidate preserved in exact_clang18_alice/pending_candidates/;probe logs
/tmp/sr08-alice-sensor-init*.log. Claim released,all Alice probes terminal.
Also confirmed no unmanifested assembly-bearing .c files remain in Alice
manual_sources/decompiled_sources after CUSTS1 cleanup; remaining asm there
is active reconstruction work,not stale duplicate files.

Alice claims the11 SR08_DEFINE_DISPLAY_HALFWORD_WRITER users in her tree.
New additive header sr08_display_halfword_store.h removes fixed r1 binding
and uses named asm output operand. Jeff's old header/macro remains unchanged
for compatibility; no Jeff source edits. Only literal-load constraint remains.
All11 original Clang18 object sections/relocations snapshotted before change
in /tmp/sr08-alice-halfword-before. Manifest/compiler groups unchanged.

Alice halfword family ACCEPTED:11 fixed-register r1 bindings removed using
additive include/sr08_display_halfword_store.h and compiler-selected named
output operands. All11 default Clang18 text sections and relocation tables
identical before/after. Old macro remains unchanged for Jeff compatibility;
remove it once Jeff no longer uses it after synchronization.
Full29070 and source-only35924 exit0:569 sections,452 units,canonical payload
and container hashes independently rechecked. /tmp/sr08-alice-halfword.bin,
/tmp/sr08-alice-halfword-standalone.bin;578-file source bundle
/tmp/sr08-alice-halfword-bundle. Audit12216 exit0:103 direct/124 expanded;
within family expanded assembly constructs22 ->11 (one LDR remains per unit).
All-C family probe26592 exited1: instructions identical except every LDR
selects root pool8e50 instead of8e3c. Pending source copies and rationale in
exact_clang18_alice/pending_candidates/halfword_family/. No failed trial
installed,no compiler/placer policy changes,no Jeff source changes.
All Alice processes terminal.

Alice NVDS getter164-byte native probe EXACT with scoped ac6wordtables
profile (-arm-synthesize-thumb-1-tbb=false). Compiler-stage flag is ignored
by LTO backend; linker-stage global flag changes an already-correct bond
handler table,so it is NOT applied globally. Plain SDK switch retained;no
computed goto or asm. Shared config initializer in sr08_nvds_config.h drives
both stored NVDS object and getter compile-time view,avoiding duplicate values.
Stored14 bytes checked identical before/after. Native FIXED_DATA_SYMBOLS now
includes existing nvds_data_storage at0x07fc0110. Removed two assembly chunks
from Alice manifest/sources; one nvds_get_func C unit at0xa7a0 replaces them.
Shared layout gets additive new selector (legacy selectors retained). Jeff's
private data/layout and source tree untouched. Full-image gates pending.

Alice NVDS getter ACCEPTED: plain SDK C switch,scoped native ac6wordtables
profile,and shared immutable config initializer. No asm/computed goto remains
in nvds_get_func. Native164-byte probe exact. Full44648 and standalone70067
exit0:566 sections,451 units,canonical payload/container hashes independently
verified. /tmp/sr08-alice-nvds-c.{elf,payload.bin,bin} and
/tmp/sr08-alice-nvds-c-standalone.bin;578-file source bundle
/tmp/sr08-alice-nvds-c-bundle. Audit32960 exit0:101 direct/122 expanded,zero
preprocessing failures. Two assembly units replaced by one actual SDK function;
source-unit count decreases by1 because the old continuation was a chunk.

Merge dependencies: ac6wordtables compiler profile,nvds_get_func group and
manifest/catalog entry,remove two old assembly files/continuation and unused
build_command_response_from_status alias,new sr08_nvds_config.h initializer,
V204_nvds.c using it,native FIXED_DATA_SYMBOLS nvds_data_storage=0x07fc0110,
additive NVDS selector in shared layout. Stored14-byte data is unchanged,
confirmed by object-section comparison. Existing readonly NVDS unit retained.
No Jeff source/private-data edits. Global LTO compression option NOT installed:
it changes the already-correct bond request table. No parity gates relaxed.
All Alice processes terminal. This scoped profile may help the other two
word-table routines when their whole functions are recovered in C.

Alice dispatcher8040/8068: whole-function C candidate with ac6wordtables
reproduces original six-entry word dispatch. Index is uint32,case2/default
no-op. Cases0/1 otherwise match; cases3/5 address fields directly instead of
base+0x4c reuse,default return comes after publish tail.164-byte native extent
differs85 bytes. Typed view,mid default label,O1/Os identical. Nested-field
annotation hoists pointer before dispatch (worse),case-local annotations same
mismatch. ARM5 native140 bytes differs138. No candidate installed. Sources
restored,claim released,candidates/readme in Alice pending_candidates/
action_dispatch_8040/. Important: retain case3 halfword vs case5 byte stores
at offsets4e/58; these are not interchangeable. All Alice probes terminal.

Alice BLE callback0xad78: old generic sensor-freshness label identified as
param_update_request_timer_cb (SDK user_app_connection macro already named it
that). Native all non-literal instructions match; LTO89672 probe128 bytes
BYTE_EXACT. Installed C under SDK callback name,updated two callers and added
compatible shared layout selector. No new shared RAM fields. Two reference
thresholds6001/4001 and wrap0x05000000 retained as raw counter units;reference
word74 meaning not asserted. Requests intervals80/80,rechecks after timer200,
clears timer handle on disconnected/already-slow path. Full gates pending.

Alice param_update_request_timer_cb0xad78 ACCEPTED: ordinary C,no asm.
Native all non-literal instructions match; LTO89672 exact128 bytes under old
label,then renamed to SDK callback name and both callers updated. Full44909
and source-only31524 exited0:565 sections,451 units,canonical payload/container
hashes independently checked. /tmp/sr08-alice-ble-timer.{elf,payload.bin,bin},
/tmp/sr08-alice-ble-timer-standalone.bin;578-file source bundle
/tmp/sr08-alice-ble-timer-bundle. Audit44998 exit0:100 direct/121 expanded,
zero preprocessing failures. No original image/intermediates required.

Merge items: new decompiled_sources/param_update_request_timer_cb.c,remove old
update_sensor_freshness_request_refresh_due_at_ad78.c,manifest/catalog rename,
ac6lto group,new callback selector in shared layout,user_app_connection.c
extern/macro cleanup,and replace_state_timer_with_600_delay.c caller rename.
No new shared fields or compiler/placer policies. Old layout selector retained
for compatibility; Jeff source/private data untouched. All Alice jobs terminal.

Alice sender0x3ab0 identified as HOGPD_REPORT_UPD_REQ (task38,message0x2602),
not CUSTS1. Existing hogpd_report_upd_req layout matches length4,report idx6,
payload7; allocation sizeof8+payload length. Native ac6 probe144 bytes exact
including strings. SDK prf_get_task_from_id declaration returns ke_task_id_t
(uint16),confirmed in local SDK prf.h; sender uses correct local declaration
rather than legacy wide sr08_rom_services.h declaration. No shared ABI/header
change. reports_in_flight counter at env34 matches existing vendor extension.
C installed,no asm constraints,full-image gates pending.

Alice HID sender0x3ab0 ACCEPTED: ordinary C with SDK HOGPD structs,144-byte
native ac6 probe exact including embedded diagnostics. Full95864 and
source-only66132 exited0:564 sections,451 units,canonical payload/container
hashes independently checked. /tmp/sr08-alice-hid-sender.{elf,payload.bin,bin}
and /tmp/sr08-alice-hid-sender-standalone.bin;578-file source-only bundle
/tmp/sr08-alice-hid-sender-bundle. Audit34678 exit0:99 direct/120 expanded,
zero preprocessing failures. No asm constraints or global compiler-policy
changes. Correct prf_get_task_from_id local SDK signature;legacy wider shared
ROM declaration was not changed. No new shared data or header changes.
Merge items: sender C source,ac6 compiler group,catalog summary/style.
Original diagnostic auto-data block is fully covered by compiler-emitted
C literals;normal ownership logic suppresses its duplicate output. All Alice
processes terminal. Jeff files/private data untouched.

Alice display value/mode routine0xa960: C candidate preserved in
exact_clang18_alice/pending_candidates/use_supplied_timing_value_derive_display_at_a960.c.txt.
Native ac6 has all original nonliteral instructions (33 disassembly lines
inside84-byte code range), but adds12bytes of private pools. LTO probe87280
exited1: all84 code bytes match except five literal-load encodings. Loads
a96a/a988 require ace0 but use acc8/ad74; a996/a99e/a9a6 require ad4c but use
ad74. Original source remains installed. Logs /tmp/sr08-alice-a960-{ac6,lto}.log.
Device word+2a physical meaning remains unknown; mode low2 bits control ordered
markers2,1,0, with no clearing; display tag10 unconditional. No placer or hash
gate changed. Claim released; probe terminal. Next attempt needs coordinated
neighbor pool ownership, not arithmetic or branch rewriting.

Alice measurement text0xaae8: candidate in pending_candidates/. The original
phase is byte5650+30 modulo6; writes glyph101 for phases0..4 else109, then
word41414153 at display+40, then descending glyph73 replacements for phases
>=4/>=3/>=2, and glyph91 at digit0 for any nonzero phase. Native ac6/O2/Os
92bytes includes private pools; differs19bytes including pool loads and
select lowering (CMP5/BCC vs originalCMP4/BHI). Explicit if changes allocation
and duplicates stores; builtin_expect is ineffective. O1 is104bytes/68diff.
Logs /tmp/sr08-alice-aae8-*.log. No LTO probe justified until branch matches.
Original installed, claim released.

Alice correlation0xf014: preserved fully C candidate in pending_candidates/.
Signed count comparisons established from BLT/BGT, not prior uint32 count
prototype. All arithmetic products/sums explicitly wrap32; arithmetic shifts
10 for energy,9 then2 for products; division truncation occurs before the
second multiply/division. First overlap grows with right[count-i+j-1], second
shrinks with left[i-count+j+1]; final byte zero. Original code262bytes plus
alignment; ARM5 explicit temporaries produce264bytes/205 differing bytes,
compared to initial268bytes/249diff. Signed versus unsigned helper arithmetic
produces identical results at object level (same205diff); commuting operands
worsens to212diff. Native ac6264bytes/248diff. Logs
/tmp/sr08-alice-correlation-*.log. Original remains installed; no changes to
compiler profiles, shared ABI or linker. Claim released, all probes terminal.

Fresh Alice audit /tmp/sr08-alice-current-audit.json:451 manifest units,
99 direct/120 expanded,zero preprocessing failures. No conversions installed
in this batch; accepted HID-sender checkpoint remains current.

Alice correlation0xf014 ACCEPTED, superseding the parked candidate above.
Removing arithmetic inline-function boundaries (even always_inline helpers
affected ARM5 allocation) reduced205byte differences to10. Equivalent C
comparison operand ordering reduced10->5. Explicit shrinking-loop product
temporary plus separate energy sample loads/shifts produced BYTE_EXACT
264-byte probe,including padding. Wrapping32 multiply/add remain defined
through unsigned C expressions; no signed-overflow compiler mode or asm.
Log /tmp/sr08-alice-correlation-energy-shifts.log; installed source uses
WRAP_PRODUCT32/WRAP_ADD32 macros (each argument evaluated once).
Full24039 and source-only76767 exit0:563 sections,451 units,67136-byte payload
and67200-byte OTA. Independent SHA checks match canonical both. Artifacts
/tmp/sr08-alice-correlation.{elf,payload.bin,bin} and
/tmp/sr08-alice-correlation-standalone.{elf,bin}; source-only578file bundle
/tmp/sr08-alice-correlation-bundle. Audit11230 exit0:98 direct/119 expanded,
zero preprocessing failures. Merge items: function C source, ac5 group, CSV
style change. No shared ABI/data/placer changes. Stale pending C removed.
All correlation build/probe jobs terminal.

Alice frequency average0xcf80 candidate preserved in pending_candidates/.
Original destructive duplicate counting, signed-byte indices and frequency
reads, three stable tie-breaking scans, top-value fallback and wrapping sum
followed by signed division reproduced. Both observed caller sites in
sensor_frame_rate_continuation_e194 pass25 (0xe5bc/0xe5cc). Scratch clear28
bytes alone does not prove an original source array length28; a25-byte C
array rounds to the same layout/code in this probe.
Baseline ac5:300-byte aligned region,52-byte stack,77 differing bytes, mostly
register permutation (second selected value inr0 insteadr3,indexr1 insteadr0).
Reusing loop indices, signed max/value types, table25 and division operator
produce the same77diff. Selected-array C has84-byte stack,so its63diff is NOT
an improvement. Counts-array102diff. O2:296bytes/162diff,O1:292/210,
Otime348/335. Explicit sum temporary changes code length296/86diff. Delayed
initializers also mismatch; see /tmp/sr08-alice-topthree-*.log.
Important boundary: original routine ends0xd0aa,where the next auto-data/code
block starts with branch e002; native output currently pads to0xd0ac. Do not
accept/overwrite this branch as function padding. No compiler or ownership
policy changed. Claim released, original installed, all probes terminal.

Alice queue compactor0x24dc: zero-asm candidate preserved in pending_candidates/.
Keeps matching oldest record; removes a later match by shifting successors
and decrementing head, then calls advance_ring_s_queue_and_submit_entry to
submit it at tail. Missing record also goes to that helper. Initial metadata
is captured; compaction reloads capacity/size/storage after each memcpy,as
original. Native first candidate144bytes/36diff; declaring last before
destination improves register allocation to8diff (includes private pool
overlap at next function0x2568). Of the140 codebytes,only the copy/multiply
operand choice and two literal loads differ. Operand reversal, snapshot,
metadata load ordering do not help. ac6source returns36diff; disabling
twoaddr rescheduling148bytes/48diff; disable-2addr-hack/post-RA unchanged8.
LTO24944 baseline and55513 improved both exit1. Improved LTO140bytecode
retains the copy/mul difference and loads root at2760 rather than2590.
Logs /tmp/sr08-alice-compact-*.log. No compiler/placer policy changed. Next
attempt must account for source or neighbor pool ownership; no new asm
constraints introduced. Original remains installed; claim released.

Alice calendar0x9004: C candidate preserved in pending_candidates/. Corrected
shared sr08_calendar_time.h COMMENTS and Alice catalog/source descriptions:
year is years since1900; final word at+28 is one-based day-of-year,before
month-length subtraction,NOT a duplicate day-of-month. Layout/member names
unchanged for compatibility. Static evidence: pool90e4=1969,pool90f0=-1900;
store at9078 precedes month loop9084..90aa.
Native C ac5:248bytes/219diff; ac6:268/212diff. ac6 matches early arithmetic
instructions but folds the day-offset branch around constant112,spills
leap count,and reorganizes month subtraction. Explicit EABI calls are worse
(276/262; with reordered seconds calculation280/264),not installed.
Logs /tmp/sr08-alice-calendar-*.log.
Host compilation of the baseline C candidate compared against Python UTC
datetime for49716 timestamps:each UTC day in uint32 range plus final second
and leap/century boundary samples;all eight fields match. This verifies the
C candidate's calendar semantics,NOT byte parity or execution of V204. Host
library /tmp/sr08-alice-calendar-semantic.so. Original function still installed.
Claim released; all probes terminal. Last accepted build remains correlation
checkpoint563sections451units,98 direct/119 expanded.

Alice decimal formatter0x3148 ACCEPTED: whole routine now C,including the
17-entry physical segment table (compiler emits the original20-byte padded
area31c0..31d4). Decimal extraction runs right-to-left; mode1 blanks leading
positions but always preserves the units digit. Other modes show zeroes.
Unsigned wrapping expression0-i-1<0-i spells the nonzero-index test in a form
that retains V204's decrement/CMP/BCS sequence. It is documented in source;
a simple zero test changes code layout. The output loop's i!=digit_count
condition reproduces the original decrement/pointer-update ordering; using
< produces five differing bytes even with the extraction loop otherwise
exact. Signed-index/descending-loop/explicit-pointer-loop/ac6source variants
are not matches. Native ac6 BYTE_EXACT140bytes including table; log
/tmp/sr08-alice-decimal-not-equal.log. An8-byte scratch variant also probes
exact (stack has8 bytes at+28),but installed C retains five physical slots.

Full96822 and standalone61794 exit0:562 sections,451 units,67136-byte payload
and67200-byte OTA,independently rehashed canonical. Artifacts
/tmp/sr08-alice-decimal.{elf,payload.bin,bin},
/tmp/sr08-alice-decimal-standalone.{elf,bin};579-file source-only export
/tmp/sr08-alice-decimal-bundle. Audit71400 exit0:97 direct/118 expanded,zero
preprocessing failures. Normal native-data ownership suppresses the old
20-byte digit-table data output,now compiler-owned. No shared header/data
change or linker-policy edit. Merge items:function C source,ac6 group,CSV
style. Redundant pending C removed;all Alice jobs terminal.
Future signed formatter conversion should use the common formatter header:
format_signed_state_byte_as_three_display_digits currently has an incompatible
local int32 first-argument declaration (callee is uint32). Do not change the
unsigned division semantics when cleaning up that declaration.
Jeff has ongoing C work in his tree (including halfword family and reset
helpers); no Jeff files or incoming merge changes were edited here.

Alice status wait0x8a78 ACCEPTED as poll_status_until_match_or_ble_timeout.
Old claims of hand-written assembly/required preserved caller registers were
incorrect. Normal ac6 void C reproduces the entire96-byte aligned region,
including PUSH{r0-r7,lr}/POP{r0-r7,pc},NOP,and two IO literals. Four low push
slots are temporary storage; STR r3,[sp,#0] overwrites savedr0 with timeout.
Raw r0 is therefore timeout on return,an incidental void-function register
value,not a status pointer. Nonvoid C forced a return load and separate
epilogue; void C is BYTE_EXACT without interrupt attributes or asm.
SDK da14585_586.h identifies400000fc=BLE_SAMPLECLK_REG and4000001c=
BLE_BASETIMECNT_REG. The routine samples the counter,exits immediately on
status match,otherwise times out;it does NOT enforce a minimum wait duration.
Wrapping correction05000000 preserved without invented unit conversions.

Renamed0x1ee8 to wait_i2c_rx_fifo_or_timeout(void),a correctly typed void
wrapper polling I2C_RXFLR_REG50001378 (SDK confirmed),with200-count timeout.
Updated Alice's three status wrappers and two I2C callers,manifest,catalog,
name generator and manual source index. Shared status header adds the two
void declarations;legacy prototypes remain for Jeff. Shared layout adds
new-name selectors at the same addresses,retaining old selectors for Jeff.
No Jeff source/private data changes;no linker/compiler-policy changes.

Full77710 and standalone51538 exit0:561sections451units,67136-byte payload
and67200-byte OTA. Independent hashes canonical. Artifacts
/tmp/sr08-alice-statuswait.{elf,payload.bin,bin},
/tmp/sr08-alice-statuswait-standalone.{elf,bin};579-file source-only bundle
/tmp/sr08-alice-statuswait-bundle. Audit2278 exit0:96 direct/117 expanded,
zero preprocessing failures. Native probe /tmp/sr08-alice-statuswait-void.log.
Obsolete pending nonvoid candidate removed. All Alice jobs terminal.
Merge all listed caller/name/header/layout changes together; remove legacy
declarations/selectors only after Jeff switches to the canonical API.

Alice batch dispatcher0xee4c new probe: volatile pointer parameters x/y/z
prevent hoisting but change spills/evaluation ordering. Native84bytes/78diff;
explicit z,y,x local reads84/81diff. Original72bytecode ends0xee94 including
its root literal;do not overwrite next auto-code at ee94 with native padding.
Those ARM6 variants are superseded by the accepted ARM5 C source; the obsolete
candidate copy was removed. Old logs: /tmp/sr08-alice-batch-{volatile,reverse}.log.
Volatile pointees, rather than volatile pointer parameters, plus early index
initialization produce exact ARM5 output (see the current checkpoint above).

Alice measurement initializer0xec2c recovered as full typed C. Candidate
in pending_candidates/initialize_sensor_processing_state.c.txt. This is a
whole function,not a split register-sharing chunk. It establishes the context
at07fd0b58,sets mode1/flagca0=4,clears all listed working arrays/counters,
sets levels1ec[100]=64,and calls clear_sensor_processing_history_tables.
Both default values (halves_c74 and word384) use word08 %3 +97,NOT the
quotient: ROM __aeabi_uidiv leaves the remainder inr1. Word388=6272,word390
=profile_word04,word38c=seed-102000,wordc98=seed-101000. Return register is1.
The same RAM base is also viewed by the smaller sensor_status_context type;
do not redeclare that symbol with the incompatible larger type.

An analysis-only alias measurement_context_storage=07fd0b58 is injected by
pending_candidates/probe_measurement_context.py. No shared RAM map/header
changes or compiler/placer policy edits made. If eventually installed,add a
proper typed alias to the RAM map,correct the initializer/reinitializer
prototype mismatch,and run normal whole-image/source-only gates.

Baseline ac5:536bytes (correct overall region size),393diff; ac6:500/492.
Nonvolatile descriptor ac5:536/389; early counter init536/373; ac6 no-builtin
564/547; disable-LSR536/515. Direct global accesses + initial counter used
for the first zero writes give540/380. A separate cached zero captured from
the initial counter then gives552/362: the first166 bytes(ec2c..ecd2) are
identical except two literal-load offsets,which point to relocated copies
of the same addresses. This latter candidate is the preserved version.
Remaining body changes context/root lifetimes and loop addressing;it is NOT
byte exact. A forced-inline second-phase helper548/326 and a combined
state/profile view548/319 also fail;smaller diff count is not acceptance.
Original uses the037c root +32/+4 for profile_word04; separate extern profile
reference introduces039c as another literal. The full map of literal loads:
ee34=07fd0b58,ee38=07fd037c,ee3c=fffe7190,ee40=fffe7578. Original code ends
ee32;aligned pool region ends ee44 at the next wrapper. Logs
/tmp/sr08-alice-context-init-*.log. All probes terminal;claim released.
Original remains installed. Current accepted checkpoint remains status wait:
561sections451units,96 direct/117 expanded.

Alice0xa64c identified as a HID mouse/touch macro pump,not registration
transfers. Full C preserved in pending_candidates/advance_registration_data_transfers.c.txt;
reproducible analysis aliases in pending_candidates/probe_hid_sequences.py.
Data/read-only aliases:hid_mouse_sequence=07fcfb7a(4x5bytes),
hid_touch_y_sequence=07fcfb8e(12x2bytes);RAM viewhid_sequence_state=07fd1ea4,
phase+24/repeats+28. No aliases installed in normal builder/map.
Descriptorfbc0 confirms mouseID1/touchID2 (sender indices0/1); detailed signed
mouse stages and touch coordinates/template in pending_candidates/hid_sequence_analysis.md.
Two active bytes20/21 share phase;both branches schedule timers separately,
advance even when disconnected,and use env34 completion count <=3 to queue.
Shared header COMMENTS and Alice catalog/source descriptions corrected;no
shared ABI or data-byte changes.

Native ac6 first explicit static template candidate340bytes/272diff;volatile
counters344/229diff. Both LTO20181/10287 exit1,L6224E unplaced .rodata. A
natural local report initializer fixes data placement: native336/270diff and
LTO45734 reaches strict comparison of336bytes but still mismatches. No linker
guard relaxed. If/else variant336/289diff,ac6source336/271. Retained native
probe reproduces336/270 exactly. Logs /tmp/sr08-alice-hid-sequences-*.log.
Original remains installed;claim released,all probes terminal.

Alice signed display caller prototype CLEANUP installed: replaced incompatible
local int32 formatter declaration with sr08_display_value_formatters.h and an
explicit uint32 cast. This retains the original unsigned-decimal behavior for
negative signed bytes. Full Clang18 ELF objects before/after are byte-identical
under exact build_v204.FLAGS (same temporary source path),SHA256
b954d0f43275c0e14376078fe5733159d2b8de8eaa8005dd16ac1b7d16bcab3d.
Proof /tmp/sr08-alice-formatter-prototype-proof.txt. This is object-equivalence
verification,not a new full build. Fresh audit76493 exit0:96 direct/117
expanded,451 units,zero preprocessing failures. Last full image/source-only
checkpoint remains status-wait77710/51538;no other compiled behavior changed.

## Alice since the fifth merge (2026-11-14; accepted items merged in the sixth merge)

Installed 0xa9b4 and 0xaac8 as native C in the existing ac6lto module; claims
closed. Final standalone build: 515 sections / 450 units, 75 direct / 78 expanded
assembly units; payload and complete container equal OEM. Final source-only
verification is `/tmp/sr08-alice-formatters-postmerge-typed-verification.json`.
Canonical RAM types reused; no new aliases, flags or linker changes. Keep the
shared assembly formatter macro until Jeff has these C versions merged.

Four display candidates and persistent-history family stay pending. Signed
formatter alone still fails pool placement after accepting the two unsigned
formatters. Averager 0xcf80: 720 order/volatility trials and seven count-width
trials do not improve parity. Initializer 0xd908 pointer-reuse candidate improves
to 24 byte differences at ARM5 -O2; saved, not installed. Active claims unchanged.

### Alice advertising command builder accepted (2026-11-15)

0x32bc is native ac6 C over its full 144-byte region. Canonical typed SDK
layout, volatile setup accesses, host pointer annotation and name-length
snapshot order reproduce every instruction and pool word. Canonical device-name
prototype now takes its only real input. 581-input standalone build and direct
OEM comparisons pass: 514 sections / 450 units, 74 direct / 77 expanded.
Evidence retained under exact_clang18_alice/pending_candidates/advertising_command/.
Claim closed; no compiler-support changes.

### Alice flash name reader accepted (2026-11-15)

0x8fb0 is native ac6 C over the complete 84-byte region, including the fallback
string and alignment. Record pointer and separate length-check annotations
preserve the original accesses; an immediate return on invalid record fixes
the last ADR/MOV scheduling difference. Both annotations emit no code.
No compiler flags/support/placement changes. The final source-only build with
0x32bc and 0x8fb0 is canonical: 513 sections / 450 units; 73 direct / 76 expanded,
581 compared input files, payload and complete container directly equal OEM.
Evidence: exact_clang18_alice/pending_candidates/device_name_reader/. Claim closed.

The old 0x8fb0 and 0x32bc parked notes above are historical and superseded by
these two accepted conversions. Their old failures must not be treated as
current blockers. The remaining active claims are unchanged.

### Alice range/reading candidates and restoration (2026-11-15)

0x8878 C instruction layout is solved with one upper-bound/ID branch hint.
The new region passes 104 bytes in isolation, but a full-image regression at
0x82b2 remains: armlink selects 0x8568, then 0x84e4, then 0x832c instead of OEM
0x867c. The last pool is used by three original routines. Pool exclusions and
compiling the existing caller natively were tried and reverted. C is retained
in pending_candidates/range_validity/candidate_one_hint.c.txt; original ASM
is installed. All normal build settings are restored to the canonical baseline.

0x8500 aligned-middle memcpy still becomes halfword stores. Volatile alias-word
access gives STR but wrong address base; a constant-one annotation reproduces
the original frame/r4=1 but does not solve the body. Base alignment and branch
qualifier probes remain inexact. See pending_candidates/reading_acceptance/.
Both claims stay Alice's. No further whole-image checks passed this batch.
Restoration proof compares 581 inputs to the prior successful standalone: 579
byte-identical plus two comment-only files producing identical complete objects.
Current audit remains 73 direct / 76 expanded; no failed image was accepted.

### Alice full radio action dispatcher accepted (2026-11-15)

0x86b8/0x86e0 are one C switch in ac6ltowordtables, all 188 bytes exact.
The compiler signal fence before value_0c=16 emits no instruction and fixes
the original zero/16 order. Shared typed sensor-state arena and three existing
readers are reconciled; native output of all three is unchanged. Old chunk
source/manifest row retired; shared linker layout unchanged. Claim closed.

Full source-only build canonical: 510 sections / 449 units; 72 direct / 74
expanded, all 581 inputs compared, payload and complete container equal OEM.
Evidence: exact_clang18_alice/pending_candidates/radio_action_dispatch/.
A real module-gap placement bug was fixed in Alice's arm_compilers.py and
build_v204.py: later-module entry addresses break relative placement runs.
Six tests pass, including regression addresses 0x869c/0x86b8/0x8774. All strict
checks remain. Merge compiler/build metadata, typed header/readers and full
function source together; Jeff's tree was not edited.

### Alice OTA data handler accepted (2026-11-15)

0xc148 is C in ac6lto over the complete 424-byte region. Compiler-only fences
on both sides of the pending-copy store preserve original code-size/read/write
order; no runtime instructions added. The write adapter is explicitly inlined.
The status-returning erase wrapper/API replaces the old void interface for all
active Alice C callers; old name is an alias for ASM and remains declared void
for Jeff's unmerged tree. Shared prototype addition only; Jeff files unchanged.

Source-only full build passes: 509 sections / 449 units; 71 direct / 73 expanded,
581 inputs compared, full payload/container directly equal OEM, six tests pass.
Evidence and precise merge list: pending_candidates/ota_patch_data/. Claim closed.
No support/guard changes. ARM5 initializer schedule barriers (32 forms) did not
improve 24 differences; its claim/installed ASM are unchanged (control_initializer/).

## Alice: flash write-enable accepted; flash wrapper diagnostic (2026-11-15)

0xbb38 now ordinary native ac6 C with no assembly, branch hint, or profile/guard
change. Conditional compiler fence plus annotation on the merged status keeps
OEM's shared return. Canonical current-source build: 507 sections / 449 units;
69 direct / 71 expanded ASM, six tests pass, all 581 build inputs match workspace.
Both images equal V204. Current artifacts and input hashes in flash_write_enable/.

0x3ea0 remains claimed, ASM installed. Both the inherited candidate and the
API-consistent widened-status candidate overrun app_std_process_event to 0x40a4
instead of 0x40a0. Their 516-byte linked regions differ; it is not merely four
wrong bytes, nor just the old three CS diamonds. Stack slots and read/program
block ordering differ. Source API aliases/narrow mismatched return declarations
are removed in coherent candidates; helper/local statuses are int32_t, final
OEM sign-byte conversion retained. Retained diagnostic link output and diff in
flash_operation/; original near-match note above is historical. None installed.

Initial low/high needs a single selected mask when a conditional fence is used,
otherwise a second flag load is introduced. Weighted/fence/annotation, explicit
late-read-bounds and opaque bounds inputs did not yield a complete match; logs
and sources recorded. No guard relaxed. All probe/build processes terminal.

## Alice: measurement/display routine accepted (2026-11-15)

0x7380 now ordinary C in main ac6lto. Cache display_mode, use a conditional
compiler-only fence in the value-test helper to prevent reassociation; no
extra load, hint, inline assembly or emitted barrier. Full region 296 exact.
Partial RAM struct field offsets statically asserted. The inherited raw
sensor_field_state[] declaration caused unrelated publisher +4-byte overlap;
canonical sr08_sensor_field_state.h fixes that without changing its native
output or any placement guard. Jeff's pending source was read, not edited.

Full standalone proof: 506 sections / 449 units, 68 direct / 70 expanded ASM,
six support tests pass, all 581 exported inputs match workspace. Both complete
images directly equal OEM. Durable evidence in measurement_display/; merge
installed source, main ac6lto registration and metadata. Claim closed. All
jobs terminal; 0x3ea0 and earlier pending claims unchanged. No flash/commit/push.

## Alice: callback sample return APIs made explicit (2026-11-15)

OEM stores R0 from both window callbacks, but legacy macro declared wrappers
and callee void. Actual sampler at 0x85a0 already returns int16_t. New additive
include/sr08_callback_samples.h defines correct int16_t APIs and result macro;
Alice's two wrapper sources use it and sampler includes it. Legacy shared
sr08_callback_mode_range.h and Jeff sources unchanged. Both normal Clang18
wrapper code sections AND call relocations identical before/after. Full source-
only payload/container canonical: 506 sections / 449 units, 68 direct / 70 expanded
ASM; six tests pass and all 582 inputs match workspace. Evidence callback_sync/.
Merge new header, both wrappers and sampler include together; no alias/ASM.

Synchronizer is still ASM. Inherited pending C also read reference/profile
before flag store; ordered_stores fixes volatile order. Typed candidates use
new APIs. Native fence/opacity/constant-lifetime/equality/hint variants are
inexact, and main LTO ordered_stores_typed overlaps fixed literal 0x867c by four
(next required 0x8680). Guards unmodified. All jobs terminal; claim remains.

## Alice: callback pool collision traced (2026-11-15)

0x867c has only one original reader, main C at 0x82b2. No initial context stub
reads/covers it. _DroppedLiterals(gap) pins the known original word when next
function comes early; final diagnostic callback private cycle-state pointer
0x07fd1ea4 at 0x867c conflicts with retained device-state pointer 0x07fd1e28.
Section-specific proof/log/disassembly in callback_sync/, no guard/source edits.
More settled-assignment native variants are inexact. All jobs terminal, all 582
accepted build inputs unchanged; synchronizer remains ASM and Alice-claimed.

## Alice: local literal lookup fix accepted, range retry restored (2026-11-15)

Small source-only reduction now reproduces 0x867c -> 0x8568 -> 0x84e4 -> 0x832c
as far pool words move out of code-bearing sections (then private 0x82bc).
All 96 object-order/reader controls select 867c when all pools are code-associated.
Four-tail cases each pass 8 controls. No OEM image needed, no output patching.

Found actual stub_assembly lookup-order defect: a module-owned target's value
was fetched AFTER searching for equal local literals, missing an available
local duplicate. Resolve context_word before own[] selection now. Red/green
regression plus sealed/missing/fixed controls; all ten support tests pass.
Every existing byte/value/PC8/overlap/hash guard unchanged. Full standalone
with ASM retained equals OEM payload/container; 506 sections/449 units, 68/70
ASM, 582 input hashes match. Durable proof in device_pool_reduction/.

Range-checker C + native/main registration retried using that fix. Full 104
bytes match; whole image still differs only at 0x82b2 (f2 -> ad, loads 8568
instead of 867c), same b8f19849… failure. Therefore fix does not fully explain
or solve the remaining pool selection. Candidate and registrations restored;
all 582 inputs equal accepted support-fix bundle, no fresh rebuild claimed
for restoration. Source remains ASM, Alice claim active. All jobs terminal.

## Alice: event-ring initializer type cleanup, pure-C remains pending (2026-11-15)

0x2568 uses canonical event_record_queue_state/ring descriptors now, replacing
redundant misleading type/capacity fields with capacity/element_size/storage
names. Primary 16 records, secondary 8, 20 bytes each; existing shared header
provides layout assertions. Complete normal Clang18 object is identical (896
bytes), and full source-only image canonical, 506 sections/449 units, 68/70 ASM,
all ten support tests pass, all 582 inputs match. This is NOT an ASM conversion;
existing register/literal constraints remain explicit. Shared/Jeff/Tools untouched.

Pure C volatile version 48 bytes/39 differences; nonvolatile 52/22, matching frame
and stores but different constants/pointers/registers. Pointer/constant opacity,
field/call order, inlined helper, aggregate assignment, raw words, O levels,
ARM6.18 and ARM5 probes did not match. Source scheduling 26 differences; list-burr
same 22, linearize unsupported. Profiles isolated; none added to build. See
pending_candidates/event_ring_init/ for current source, object proof, logs and
verification. Claim remains active; all jobs terminal, no flash/commit/push.

## Alice: display state switch six-byte C near-match (2026-11-15)

Separate volatile saved_enter initialized AFTER the first SSA lookup fixes OEM
late reload r1 from sp+16; all 500 bytes except six at first lookup join match.
Full suffix from 0x3bb6 exact. Original ASM remains. See volatile_copy.c.txt,
closest_verification.json and native diff in display_switch_tail/. No output
patch or backend flag/profile installed. Whole/scoped address-volatile lookup
was different (changes store/RA); this independent slot is the useful form.

LLVM IR / Machine Control Flow Optimizer dumps locate remaining merge: the
explicit-store source has two volatile stores in optimized IR, then machine
branch folding merges them after allocation; it also loses original zero-value
liveness/rotates registers. Phi/store source keeps original allocation but
has one store plus edge copy. Backend/opacity/default/index/fence variants
recorded negative. Current source input changes only by claimed comment:
whole Clang18 object equal, 581 other inputs equal canonical snapshot. No new
full build claimed. All jobs terminal, claim active, Jeff/shared/Tools untouched.

## Alice: status display and packed writer accepted (2026-11-15)

0xa914 and 0xacb8 are now ordinary native C (76/24 bytes), linked together in
existing main module. Integer-offset annotation prevents GEP folding; explicit
unsigned subtraction-overflow predicate gives OEM CMP #2 / BCS. Distant native
reader keeps writer's root literal naturally at 0xacc8; reader-only C was one
byte off, combined pair and complete image exact. No compiler support/profile,
guard, data, manifest, or shared-header change. No Jeff/Tools edits.

Source-only 582-input export /tmp/sr08-alice-status-mod5-registered-source-bundle
builds both canonical payload/container; equals OEM byte for byte. 504 sections /
449 units; 66 direct / 68 expanded ASM. Ten tests pass, all 582 inputs match.
Proof/logs in pending_candidates/status_mod5/. Both sources + native group/set
registrations must merge together. All jobs terminal; no flash/commit/push.

## Alice: status dispatcher C accepted; writer experiment reverted (2026-11-15)

0x80d8 now ordinary native ac6 C, exact 92 bytes including alignment/pool.
Per-command integer offset annotations prevent shared-pointer CSE and retain
OEM MOV+ADD76/LDRB+4,+6,+7; flag reloads, final-value reloads and command order
unchanged. Canonical cycle/radio declarations, no assembly/register bindings.
Full source-only dispatcher build: 503 sections / 449 units; 65 direct / 67
expanded ASM. Payload and container equal OEM V204 and canonical hashes;
all 582 bundle inputs match, ten tests pass. Proof in status_dispatch_offset/.

0xacd0 writer's own native-context 24 bytes matched, but full pair build failed
with six display differences: a918, acc0, acc8-accb. It retargeted accepted
0xa914 to ace0 and removed required acc8 root in 0xacb8. Writer source, native
registrations and catalog restored. Rejected diagnostic ELF is not a flash
image. No guards/compiler support/profiles/shared headers/data/manifest edits.
No Jeff/Tools changes, flash, commit, push or merge. All jobs terminal.

New pending 0xaae8 C uses 101 | ((phase > 4) << 3) to preserve CMP4/BHI arm order;
subtraction-overflow preserves CMP2/BCS. Instruction body now matches except
literal offsets, but context shifts ab78 by four, so ASM retained. Three native
mode readers/marker shift choose by four; original retained, claims released.
Elapsed-display divisor annotations/fence/source schedule keep entry reorder,
no full-context retry justified. Logs and candidates retained in named folders.

## Alice: current unit after sixth merge (2026-11-16)

Alice keeps 0xaae8 measurement text; Jeff owns 0xace8 and mllvm sweeps now.
Fresh 580-input merge snapshot exported and native 0xaae8 probe running with
full diagnostics; 0xadf8 is now C, so the pool context changed materially.
Pre-merge four-byte shift was identified as armlink Veneer$$LitPool at ab78,
value 07fd5650, inserted for native ab3c; candidate aae8 itself was exact.
Native ad78 owner and unity variants did not fix it in the old context.
No old cached objects may prove the new snapshot.

For Jeff's elapsed unit: licensed optimized IR / machine-stage evidence in
Alice pending_candidates/elapsed_display_offset/annotate_seed.ll and
annotate_seed_machine_stages.txt shows loads before MOV225/LSL4 already at
Finalize ISel, unchanged by MachineScheduler/register allocation. Pre-merge
operator/const/pure/divisor/guard variants did not fix it. Guard variants add
code. Isolated LTO operator candidate also retained same entry ordering and
failed original ad4c retained-word overlap. Small prior scheduling trials:
list-burr same 10 native byte differences, list-ilp 45, list-hybrid 21, fast
unsupported. No such flags were installed; Alice stopped this unit/sweeps.

Alice 0xaae8 source simplification (2026-11-16): simple_ifs.c.txt / final.c.txt
replace the goto/overflow form with four ordinary threshold if-statements.
Native code and pool shape match the prior candidate (only three shared-load
offsets differ from OEM). Thus this unit needs no compiler builtin beyond its
usual section/used attributes. No installed code change pending full validation.

Alice 0xaae8 current status (2026-11-16): fixed-boundary native module probe
passes all 84 bytes. Root cause: old context stub made following ab3c FIXED;
converting it to a module function changed that to +0 before private pointers
merged. ab3c's ab50 load (PC ab54) can then select af54 prematurely (final
1024-byte distance, beyond 1020), generating Veneer$$LitPool at ab78 and
shifting the next function. Preserve the existing boundary via LTO_FIXED_UNITS
and fixed_code_starts. No instruction/literal patch or guard weakening.
Final C has four ordinary if-statements, no goto/overflow/annotation builtin.
11 support tests pass. Fresh source-only 580-input build running, session2589,
log measurement_text/standalone_build.log; no duplicate builds/flag sweeps.
Unit is pending until full canonical hashes pass. Merge helper/build/probe/
source/test/catalog changes together. Jeff's own tree and shared data untouched.

## Alice: 0xaae8 finished after sixth merge (2026-11-16)

Ordinary C with four threshold if-statements and a bit-3 glyph selection;
no goto, overflow/annotation builtin, register binding or assembly. All 84
bytes and the full fresh source-only image match original V204. 497 sections /
449 units; 59 direct / 61 expanded ASM. Both canonical hashes and OEM byte
comparisons pass. All 580 exported inputs match; all 11 support tests pass.
Proof/logs in Alice pending_candidates/measurement_text/verification.json.

Conversion removed a context stub, changing following ab3c from FIXED to +0.
Preserving that original boundary avoids an inserted Veneer$$LitPool at ab78
and restores the original ade8 load. Root cause and range geometry are recorded;
the proposed internal far-word choice is explicitly an inference. No guard
weakened and no instruction/literal patched. New generic fixed_code_starts
support is used by the named LTO_FIXED_UNITS setting and forwarded by the probe.
Merge source, helper/build/probe settings, regression and catalogs together.
All jobs terminal. No shared data/header, SDK/Tools or Jeff-tree edits;
no flash/commit/push/merge. Jeff keeps elapsed-display and compiler sweeps.

## Alice pulled completed BLE wakeup handler (2026-11-16)

Either agent can pull finished work or sync; there is no permanent merge owner.
Alice imported Jeff's 0x1c18 BLE_WAKEUP_LP_Handler: C source, main-LTO registration,
manifest/catalog/generator names and layout-preserving shared selector/vector
comment rename. Removed the obsolete old-name duplicate. No sweep candidates
or unrelated Jeff changes copied. Backups: /tmp/sr08-alice-wakeup-import-before/.

Combined fresh source-only build: 497 sections / 449 units, canonical payload
and OTA hashes; both compare byte-identical to V204.bin (payload after 64).
58 direct / 60 expanded ASM; zero preprocessing failures; 11 tests pass.
All 582 exported source files, including two SDK readmes, match installed files.
Export /tmp/sr08-alice-wakeup-synced-source-bundle; output stem
/tmp/sr08-alice-wakeup-synced. Full log /tmp/sr08-alice-wakeup-synced-build.log,
tests /tmp/sr08-alice-wakeup-tests.log, audit /tmp/sr08-alice-wakeup-audit.json.
No new repository proof/overview documents. Existing WORK_CLAIMS is the record.
No edits in Jeff's tree, flash, commit or push. All Alice jobs terminal.

For the current goal, 0x2568/0x3b78/0xd908 are DONE by parking: table above has
best differences, candidates and applicable lever results. They remain assembly
in the installed image. Other eligible units need evaluation; goal not complete.

### Alice: 0x8500 source and compiler follow-up (2026-11-16)

No installed source or build setting changed. The new candidates
`exact_clang18_alice/pending_candidates/reading_acceptance/per_field_offsets.c.txt`
and `per_field_offsets_literal_invalid.c.txt` use distinct integer annotations
for root-relative halfword offsets and the two conditional third-value reads.
The latter also rematerializes literal one on the invalid path. Both native
probes produce 112 bytes / 94 differing bytes, worse than the retained
`reading_acceptance/v1o1.c.txt` (112 / 90).

For v1o1, explicit -O1/-O2/-O3/-Os/-Oz all give 112 / 90. Targeted LLVM
checks: tail merge on/off, machine sink off, machine scheduler off, list-burr
scheduler, CGP select-to-branch off and block placement off all remain 112 / 90.
Source scheduler gives 112 / 95; machine CSE off gives 116 / 102.
`-enable-branch-fold=false` is unsupported by this compiler and supplies no
negative evidence about branch folding. Diagnostics are temporary
`/tmp/sr08-alice-8500-profile-*.log`, `...-pass-*.log` and
`...-per_field_offsets*.log`. These are local code-generation comparisons,
not full-image acceptance. The older full-module aligned-middle candidate
still differs in its frame and acceptance path; literal grouping alone is
not an explanation. Unit remains active until the remaining relevant LTO
comparison has a result; this note does not mark it DONE.

### Alice: callback synchronization compiler checks (2026-11-16)

For `pending_candidates/callback_sync/ordered_stores_typed.c.txt`, native
-Oz remains best at 160 bytes / 100 differing bytes. -O1 gives 176 / 170;
-O2 and -O3 give 164 / 155; -Os gives 160 / 149. Tail merge off, machine
scheduler off, pre-RA source/list-burr and CGP select-to-branch off remain
160 / 100. Machine CSE off gives 180 / 144; machine sink off gives
160 / 106; block placement off gives 160 / 110. Results are in temporary
`/tmp/sr08-alice-85e0-profile-*.log` and `...-pass-*.log`.
The existing LTO retained-literal collision evidence still applies; these
native tests neither resolve that collision nor prove full-image acceptance.
No source/build setting was installed and this is not a DONE declaration.

### Alice: flash wrapper native profile check (2026-11-16)

Candidate `pending_candidates/flash_operation/common_return_a0f0.c.txt`:
native -O1 gives 604 bytes / 573 differing bytes; -O2 544 / 482;
-O3 560 / 491; -Os 520 / 458; -Oz 516 / 445. These compare each
emitted region against V204 at its original address, so oversized results
include bytes past the original function boundary and cannot be installed.
The previously measured main-LTO result (512 / 422) remains the best.
Temporary diagnostics: `/tmp/sr08-alice-3ea0-profile-*.log`.
No full-image acceptance or DONE claim follows from this profile sweep.

For that flash-wrapper candidate, targeted native LLVM checks additionally
give: tail merge off 544 / 481; machine CSE off 504 / 438; machine sink off
544 / 510; machine scheduler off 516 / 445; pre-RA source 512 / 445;
list-burr 516 / 445; CGP select-to-branch off 516 / 445; block placement off
508 / 426. The 508-byte result is a useful native-layout change, still
inexact and worse in raw differing bytes than the existing LTO candidate.
Logs: `/tmp/sr08-alice-3ea0-pass-*.log`.

### Alice: persistent-history compiler checks and sensor-frame candidate (2026-11-16)

The persistent-history separate-predicate candidate gives native -O1
1224 bytes/1176 differing bytes, -O2 2172/2111, -O3 2524/2470,
-Os1196/1142, -Oz1152/1056. Targeted LLVM checks: tail merge off1160/1084;
machine CSE off1176/1113; sink off1168/1046; scheduler off1152/1056;
pre-RA source1148/1061; list-burr1152/1056; CGP select-to-branch off1152/1056;
block placement off1192/1107. Raw differences compare each emitted contiguous
region at its original address, not an aligned split-function metric.
Diagnostics: `/tmp/sr08-alice-48a8-{profile,pass}-*.log`. The existing complete
parent/helper candidates remain pending; no installed setting changed.

Claimed the whole 0xdd68/e194/e6b0/eb78 family (the old eb78 row explicitly
releases that chunk for whole-function reconstruction). New candidate:
`exact_clang18_alice/pending_candidates/sensor_frame_whole/canonical_api.c.txt`.
It normalizes the pre-existing percent-based compiler probe: fixed-width C
types, named input parameters, canonical callee names and explicit prototypes,
standard ROM division APIs, existing sensor_frame_batch_state root symbol,
and value-based literal names. Removed the decompiler-inferred fourth
classifier argument: reconstructed classifier ABI takes three motion axes.
Maximum scanner/pulse estimator now have their reconstructed uint8_t return
signatures; correlation/frequency calls use explicit typed pointers. No
FUN_* calls, implicit function declarations or assembly blocks remain in
this pending candidate.

Fresh ARM5 probe emits3576 bytes with3464 differing bytes; native ARM6 emits
3828 with3759. **These are contiguous emitted-region diagnostics across an
original non-contiguous function**, including original intervening data/gaps,
not a valid instruction-aligned whole-function score or placement proof.
The existing multirange probe's target has3592 function bytes; do not
compare its old concatenated metric directly with these contiguous results.
Temporary logs: `/tmp/sr08-alice-dd68-canonical-ac{5,6}.log`.
The candidate still needs local-variable/data-flow cleanup, overflow review,
source-shape work and multi-range layout investigation. It is NOT parked,
installed, behaviorally verified or suitable for flashing. Source change to
installed dd68 is a claim comment only. No full canonical build claimed.

### Alice: sensor-frame arithmetic/source review (2026-11-16)

New retained variants in `pending_candidates/sensor_frame_whole/`:
`named_filter_stages.c.txt` and `signed_range_arithmetic.c.txt` (latest working
candidate). The original entry instructions at dea2..def0 establish two
cascaded fixed-point feedback stages with coefficient pairs (-113,52) and
(-78,36). The channel-A path repeats those recurrences at offsets14/18 and
28/2c. A C helper now performs products/sum/subtractions in uint32_t and
casts to int32_t before the six-bit arithmetic shift, preserving ARM wrap
semantics instead of relying on signed overflow. Corrected-channel samples
and sign-constrained seven-sample extrema flags have descriptive names.

Review with Clang18 ARM frontend found a genuine limitation inherited from
the old generated compiler probe: typing all literal words uint32_t changes
several signed comparisons and ASR expressions into unsigned ones. The
installed ASM in sensor_frame_state_continuation_e6b0.c confirms signed
BLE at e890, BGE at e91e, BLE at e960, and BLE/BGT at e9c2; those sites now
use explicitly wrapped sums cast to int32_t for comparison and shift.
The nearby e8b2 shift-by-four and e90a shift-by-one are LSR and deliberately
stay unsigned, as do the BCS/BLS clamps. Do not treat the old canonical_api
or named-only variants as semantically validated best candidates just
because their raw differing-byte counts are smaller.

The latest signed-range candidate passes ARM Clang18 syntax analysis with
-O2 -Wall -Wextra -Wuninitialized -Werror (zero warnings). Native ARM6 emits
3832 bytes /3762 contiguous differing bytes; ARM5 emits3584 /3485. ARM5 has the same
extent and differing-byte count as the named-only variant, but the complete
comparison output differs; equal totals do not imply equal machine code.
These remain unaligned contiguous-region diagnostics, not bit acceptance.
Named-only ARM5 profiles measured O1 3688/3561; O2 and O2/Ospace3596/3450;
O3/Ospace3584/3485; O3/Otime3684/3563. Because signed-range review followed
that matrix, rerun relevant profiles on the latest source before using its
results for parking. Logs `/tmp/sr08-alice-dd68-{named,signed}-*.log`.

Unreviewed arithmetic and reused decompiler locals remain elsewhere in this
large routine; whole-function equivalence and original multi-range placement
are still unproven. This unit stays active, and installed assembly is unchanged
apart from the claim comment. No test firmware produced.

Alice correction to the earlier split-function diagnostic caveat: layout
inspection shows the82 internal non-code bytes are this routine's literal
pools/padding, not unrelated code. Full raw-span diagnostics are therefore
valid rejection evidence, provided emitted length and missing/extra tail
are reported separately. They still do not align different block layouts
and cannot be mixed with the historical3592-byte concatenated-code metric.

## Alice: requested first-divergence follow-up (2026-11-16)

New evidence after the completed lever pass: mapping original scalar spills
and retaining an annotated zero through classifier initialization improves
48a8's joint LTO result to1168 bytes /1012 overlap differences plus52 missing
bytes (versus prior full-extent1220/1096). Helper4e98 remains all156 bytes
exact. New candidate `pending_candidates/persistent_history_lifetimes/zero_lifetime.c.txt`;
threshold/buffer alternatives retained alongside it. The first24 normalized
instructions now match; pool/branch displacement normalization is diagnostic
only, never byte acceptance. Best missing-inclusive difference count1064.

Detailed stack uses, variable-lifetime findings and focused negative tests are
in existing `pending_candidates/PERSISTENT_HISTORY_NOTES.md`. These supersede
the old history row's best-result figures but not its uninstalled status.
Both full132-byte frames have12 scalar slots and84 buffer bytes; frame size
alone was not the blocker. Volatile/saved-minute forms fail; the zero lifetime
recovers minute/divisor spilling. Next discrepancy is flagSP+24 versus OEM+16
and time-window scheduling. Native/LTO and aggregate buffer alternatives were
tested; aggregate gets physical order but not original address instructions.

Diagnostic joint link completed normally with inexact parent, exact helper;
all jobs terminal. No installed code, build flags, linker rules, shared data
or firmware bytes changed. This finite user-requested trial is finished and
the unit is parked again with the new evidence available for the next pass.

## Alice: allocator follow-up completed (2026-11-16)

Best placement-valid history candidate is now
`pending_candidates/persistent_history_lifetimes/ordered_buffers.c.txt`: joint
LTO1168 bytes/1010 overlap differences plus52 missing =1062, helper4e98
exact156 bytes. Original record/calendar/bitmap physical positions48/84/116
are recovered using separate declarations, without aggregate address changes.
The first24 normalized instructions still match; flag still spills24 vs16.

Compiler pass dumps establish that flag spill index11 and later divisor15
spill index17 merge into index8, finalized atSP+24. OEM uses the same logical
pair atSP+16. Focused branch weights move it to20, not16; source mode-order,
mode splitting and explicit shared-scalar union trials do not solve it.
Weighted candidate1184/1020 plus36 missing (1056) looks better in isolation
but fails module placement: extra literals overrun4fc8 and5070 by4 bytes.
Two-boundary and all-aligned-boundary diagnostic controls confirm real
overruns; guards stay unchanged. No full-image build/installation attempted.

Full results and static scalar-slot reuse map are in existing
PERSISTENT_HISTORY_NOTES.md. Temporary machine dumps, source trials and
link logs remain in /tmp. All jobs terminal; installed sources/flags/shared
data unchanged. Parked status includes these new results. Next useful work
needs a source/control-flow change that corrects interference among the
flag/divisor, time-window/hour and quarter-step values; a different spill
pair or buffer layout is no longer the missing explanation.

## Alice: active exact-match goal, local-region progress (2026-11-16)

User replaced the completed bounded-lever goal with continued work toward
exact matching48a8/4cb0. Claim is active. Original553 versus candidate529
real-code instruction tokens point to structural compaction as well as slot
permutations. Smaller-region analysis reveals first sum and large-sample flag
are reused by mode2 after the pre-loop threshold; shared C predicate lets
those values die too soon. Focused source forms retained in
persistent_history_lifetimes/two_threshold_inputs.c.txt are not yet better
whole-function matches.

Best placement-valid new diagnostic: ordered_buffers.c.txt compiled natively
with only this candidate's tail merging disabled, then linked with the
regular module. Parent1176/1013 plus44 missing =1057 (prior best1062);
helper156/0. Candidate compilation bypasses the diagnostic cache when flags
differ. No production flag/source changes. ARM5/ARM6.18 checks were worse;
all results and exact profile details in PERSISTENT_HISTORY_NOTES.md.
All current jobs terminal; no external blocker identified, goal remains active.

## Alice: two-use threshold controls completed (active goal, 2026-11-16)

No new best accepted this batch. Two-result/raw-input lifetime controls
confirm the original threshold/second-loop ordering difference but alter
earlier allocation. Root-qualifier tests give an attractive970 native
overlap count when clock is nonvolatile; field-level checks show this drops
an original repeated hour read, so it is rejected as fidelity evidence.
Preserving the original hour reads removes the apparent gain. ARM6.18
ordered/no-tail is also worse than6.16 for this source. Local SDK compiler
settings are clues, not a recovered manufacturer configuration. Full results
in existing PERSISTENT_HISTORY_NOTES.md; production code/settings unchanged.
All jobs terminal. Claim and exact-match goal remain active; current best
placement-valid1176/1013 plus44 missing=1057, helper156/0.

## Alice: mode snapshot/scalar-phase progress (2026-11-16)

Best placement-valid history diagnostic now1196 bytes/924 overlap differences
plus24 missing=948, down from1057. Helper remains156/0. Source
`pending_candidates/persistent_history_lifetimes/snapshot_phase_union.c.txt`
uses a volatile divisor/mode union with snapshots at the original decision
points. Only the candidate is compiled natively with tail merging disabled;
all other module settings unchanged. Diagnostic passes original placement
guards; no full-image acceptance or installation.

Retained structural alternatives recover the shared40 fill loop and SP+16
flag spill/carried classifier-step difference, even though their shifted
whole-span byte metrics are worse. These are concrete local improvements
for future combination, not acceptance. Ordinary scheduler/type/record-view
controls and6.18 comparisons do not improve this source. Detailed commands,
results and source paths are in existing PERSISTENT_HISTORY_NOTES.md.
All jobs terminal; claim/goal stay active. Installed code and production
flags/shared data unchanged.

## Alice: history follow-up, active (2026-11-16)

Best shared-layout diagnostic now1200 bytes/898 overlap differences plus20
missing=918 (previous948), helper156/0. Candidate
`persistent_history_lifetimes/step_delta_dispatch_p01.c.txt`; diagnostic native
Oz/no-tail with branch-probability experiments, original layout guards intact.
Separate retained C variants recover original dispatcher ordering and independent
record-copy flag tests. Neither is exact. No production replacement installed;
no new canonical build claimed. All diagnostics finished; claim remains active.
Details and negative probes in existing PERSISTENT_HISTORY_NOTES.md.

## Alice: ordinary-mode source simplification (2026-11-16, active)

Best shared-layout history diagnostic1200/892 plus20 missing=912, helper156/0.
`persistent_history_lifetimes/value_mode_step_delta_p01.c.txt` replaces the explicit
volatile scalar union with an ordinary mode and distinct post-clear value snapshot.
Unweighted companion recovers first41 normalized instructions. LLVM dump confirms
remaining early slot differences involve allocator-colored SSA spills. No production
replacement or full-image acceptance. Details in existing PERSISTENT_HISTORY_NOTES.md;
all jobs terminal, claim and exact-match goal remain active.

## Alice: unweighted exact-prefix evidence (2026-11-16, active)

`persistent_history_lifetimes/value_mode_sum_comparison.c.txt` passes shared layout
with1196/909 plus24 missing=933, helper156/0. First84 raw bytes exactly match OEM;
first difference at48fc is literal92's stack slot28 versus24. Weighted best stays912.
Shared-fill/comparison structural candidate improves token LCS to331/553, a
separate diagnostic rather than acceptance. Original guards unchanged. No install
or new canonical build claimed; full exact-match goal remains active.

## Alice: compiler spill-map investigation (2026-11-16, active)

Paired actual ARM6.16 pre/post slot-coloring dumps now identify which initial
minute/divisor slots get reused by mode and quarter-end values. Explicit typed
132-byte C work frame instead compiles to156-byte frame; rejected. Signed-wrap,
debug-info, spill-hoist and frequency controls tested without improving accepted
diagnostics. Best remains912, unweighted933 with84 raw bytes exact. No install
or production flags changed. All jobs terminal; next work must preserve original
live ranges/control flow and whole-function byte parity. See existing history notes.

## Alice: new placement-valid history candidate844 (2026-11-16, active)

`persistent_history_lifetimes/mode_field_and_independent_record_flags.c.txt`:
ordinary Oz/default tail merging, no branch hints or per-function mllvm changes.
Shared1196/820 plus24 missing=844 (previous912), helper156/0. Field-specific plain
classifier_mode with other accessed input members volatile recovers55 normalized
prefix instructions including original spill slots; raw prefix for this source is18
bytes, NOT the older candidate's84. Original layout guards retained; no install.
All diagnostics terminal. Full exact-match objective remains active; details and
negative-test boundaries recorded in existing PERSISTENT_HISTORY_NOTES.md.

## Alice: corrected clock criterion, active (2026-11-16)

Direct V204 disassembly disproves earlier two-load-tail assumption: one hour load
at4ce2 feeds both0/23 comparisons; total function hour loads3. Historical844 source
has4 and remains an inexact diagnostic, NOT a fully faithful baseline. Notes corrected.
Single-hour C now shared-layout validated:1200/830 plus20=850 with existing mode
hints;1192/827 plus28=855 WITHOUT probability hints. Helper156/0 in both. Native
no-tail diagnostic only; no install/full-image acceptance. Source names and all
relevant probes in PERSISTENT_HISTORY_NOTES.md. Removed one unnecessary record-zero
annotation with identical fresh parent/helper shared bytes. All jobs terminal;
whole-function bit-match objective remains active, production sources unchanged.
