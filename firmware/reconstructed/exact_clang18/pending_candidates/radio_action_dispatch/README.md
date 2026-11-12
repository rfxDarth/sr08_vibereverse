# Alice: radio action dispatcher converted to C

Installed source: ../../manual_sources/dispatch_radio_state_action_block_at_86b8.c.
The former 0x86e0 range belongs to the same C switch; its separate source and
manifest row are removed. The complete 188-byte region, including the word
jump table and literal, matches OEM in the ARM6 word-table module. The final
source-only image and OTA container also match every byte (verification.json).

## Instruction-order finding

The prior candidate differed only in case 3: it materialised 16 into r1,
stored it, then materialised zero into r1. OEM materialises zero into r1 first,
then 16 into r2 and stores r2. Scalar annotations of zero/16 and eight zero
lifetime/use variants do not fix it. A signal fence before the 16 store does:

    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    config->value_0c = 16;

This is a compiler ordering barrier and emits no ARM instruction. It preserves
the original stores, register order and ABI; it adds no runtime library.
Fences before the 5 store or before the zero store do not match. Seven selective
volatile-store combinations and a packed-word/volatile configuration view also
do not match. Saved logs record those bounded failures; generated source copies
were removed. baseline.c.txt remains as the pre-fence source.

The scalar annotations were checked both in LTO and native compilation. Native
word-table output is 196 bytes because it retains private pool copies; the
proper shared-module link is 188 bytes and fixes those pool loads. See
fence_module.log, canonical_state_module.log and installed_module.log.

## Coherent RAM declaration

The state at 0x07fd1ffc previously had incompatible extern types in its users.
The new shared sr08_sensor_field_state.h defines one 0x68-byte arena, including
the 0x20-byte configuration and the 40-byte tail cleared at +0x40. Byte union
views retain the publisher's individual byte accesses. The dispatcher, publisher,
control action and display override now share it. Three existing readers have
byte-identical native output before/after; both *_native_comparison.json files
retain those results. Their original C is kept in precanonical/ for review.

A raw-array declaration/local struct cast was tried first (canonical_array.c.txt),
but LTO changed its address/pool formation and overlapped the next routine by
four bytes. It was not installed. Shared typed storage passes full parity.

## Real linker placement bug fixed

The first full build moved the existing publisher from 0x07fc8774 to
0x07fc86b8, even though its native body was unchanged and exactly matches OEM.
The retained scatter showed ER_07fc8774 +0 after ER_07fc869c: the current module
had mistaken its adjacent region entries for adjacent firmware functions.
The intervening dispatcher is linked in a later module and has no stub yet.

arm_compilers.lto_function_region_base now ends that relative run when a
later-module entry intervenes. build_v204 passes those source-manifest entry
addresses as separate_code_starts. Both region-base and halfword-host decisions
use the same rule. Existing byte/address/overlap/hash checks are unchanged.
tests/test_lto_region_gap.py reproduces the actual address pair and checks that
truly consecutive functions still use +0; all six support tests pass.
main_debug_build.log records the diagnosed failure. Retained diagnostic module:
/tmp/sr08-alice-radio-action-main-debug (temporary).

Alice ignores the old 0x86e0 split in layout_function_starts using
LTO_ABSORBED_FUNCTION_STARTS. The shared frozen linker layout remains intact
for Jeff's still-unmerged tree; no shared data was edited. The manual CSV marks
that old chunk absorbed; the live catalog contains only the complete C function.

## Final verification

- Export: /tmp/sr08-alice-radio-action-gap-source-bundle; all 581 inputs compared
  byte-for-byte with the workspace, no original firmware in the bundle.
- Log: gap_standalone_build.log. Artifact stem:
  /tmp/sr08-alice-radio-action-gap-standalone.
- 510 sections, 449 units; 72 direct / 74 expanded assembly units; no
  preprocessing failures. Six support tests pass.
- Full payload 67136 bytes and OTA 67200 bytes directly equal OEM V204.
- verification.json and source_input_hashes.json retain the checkpoint.

The old shared dispatch assembly macro remains for Jeff until merge. It is
unused in Alice's normal source set; shared headers were not removed.
