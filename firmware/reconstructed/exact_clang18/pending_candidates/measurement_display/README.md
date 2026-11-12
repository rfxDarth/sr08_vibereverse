# Alice: measurement/display mode routine, 0x07fc7380

Released candidate was read from Jeff's pending source; his files are unchanged.
The inherited candidate swaps mode==1 / value!=0 tests at 0x7404..0x740a.
A conditional compiler fence in the value test prevents boolean reassociation,
but a direct context->display_mode read later is reloaded after the fence and
other conditions reorder. Cache display_mode locally first, preserving one
original mode load. That resolves the instruction-order mismatch in native
ARM6 output. The remaining native differences are literal placement: four
private words versus OEM's two local words and reused context words.

clean_candidate.c.txt replaces the experimental GNU statement expression with
an always-inlined ordinary C helper containing the compiler-only signal fence.
Its native output is identical to cached_uint8_t_late0. installed_candidate adds
static offset assertions, also identical native output. No emitted fence,
inline assembly, register binding, branch hint or compiler flag change.

The three local structs are partial RAM views at the existing linker RAM
symbols, not recovered vendor types. Names describe observed reads/writes.
The calendar-second input retains signed division, and the original uint8 slot
truncation, unsigned time differences, direct mode stores and transition calls
are retained. No invented range checks or hardware behavior added.

Accepted after typed_sensor_main_lto.log matches all 296 region bytes and the
complete source-only build matches the original payload AND OTA container.
The installed source is typed_sensor_candidate.c.txt, including static offset
assertions. clean_main_lto.log is an earlier FAILED stale-array experiment,
not the acceptance log. Previous native probes remain to avoid repetition.

## Shared sensor declaration correction

The first full-context probe (clean_main_lto.log) fails at ER_07fc87ec:
publisher at 0x8774 grows four bytes. The inherited raw extern uint8_t
sensor_field_state[] conflicts with the canonical shared struct used by the
publisher/action dispatcher, a previously diagnosed source of this pool/layout
regression. typed_sensor_candidate includes sr08_sensor_field_state.h and
uses reserved_40_to_67[0x18] for the same byte at +0x58. Native output is
byte-identical to installed_candidate. No shared header or publisher edit.
Typed-sensor LTO probe is recorded separately; no guard change is made.

## Verified checkpoint

506 sections / 449 source units; 68 direct / 70 expanded assembly units.
All 581 exported inputs match current workspace, no V20*.bin in source export.
Six support tests pass. Payload 67136 bytes and OTA 67200 bytes directly equal
OEM V204; hashes remain 5020c236… and c7472495…. See verification.json,
source_input_hashes.json, installed_audit.json and standalone_build.log.
Export /tmp/sr08-alice-measurement-display-source-bundle; artifact stem
/tmp/sr08-alice-measurement-display-standalone. No guard, compiler support,
flag, shared-header, placement-rule or Jeff-source changes. Main ac6lto source
registration is required. No flash/commit/push.
