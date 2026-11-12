# Alice: measurement text 0xaae8 accepted (2026-11-16)

`final.c.txt` is installed as ordinary C. Read a shared byte modulo 6, write
an initial packed glyph pattern, then replace up to four digits in order.
The 101/109 glyphs differ only in bit 3, so a shifted predicate selects them.
Four threshold if-statements produce the original descending-store control
flow. No goto, overflow builtin, annotation, register binding or assembly.

The new routine matches all 84 bytes, including its packed-word literal.
The complete fresh source-only build also matches original V204 byte for byte
and both canonical SHA-256 hashes. See verification.json.

- 497 sections / 449 source units; 59 direct / 61 expanded assembly units.
- All 580 exported inputs match installed sources; all 11 support tests pass.
- Bundle: /tmp/sr08-alice-measurement-text-source-bundle.
- Output stem: /tmp/sr08-alice-measurement-text-standalone.
- Full log: standalone_build.log. No cached application objects in this build.
- Proof: verification.json, final_source_input_hashes.json,
  final_installed_audit.json, fixed_boundary_green.log.

## Fixed-boundary requirement

Before conversion, 0xaae8 was a fixed context stub, so the following module
function at 0xab3c started at its fixed original address. Adding 0xaae8 to
the module automatically changed that following boundary to relative +0.
Its unmerged pointer words change temporary range checks. The retained image
then showed a four-byte Veneer$$LitPool at 0xab78, shifting the next function
to 0xab7c. The measurement-text routine itself was already exact.

The neighbouring load at 0xab50 uses PC 0xab54. Word 0xaf54 is 1024 bytes
ahead, beyond the 1020-byte Thumb limit; original word 0xade8 is 660 bytes
ahead. Preserving the old fixed 0xab3c boundary removes the veneer and restores
the original load of 0xade8. Premature selection of the farther word explains
the range geometry; that internal choice is inferred, not an armlink trace.
Measured addresses and comparison are in fixed_boundary_explanation.json.

LTO_FIXED_UNITS names the following function; its address comes from the
manifest. arm_compilers.py takes fixed_code_starts and emits the ordinary
fixed scatter constraint. Both build and probe pass it. The regression in
tests/test_lto_region_gap.py covers this preserved boundary. Existing byte,
value, range, overlap and canonical-hash guards remain intact. No instruction
or literal value is patched. Invalid fixed-entry settings fail explicitly.

Merge together: manual C source, native registration, fixed-unit setting,
arm_compilers.py support, probe forwarding, regression test and catalog rows.
No manifest, shared header/data, SDK/Tools or Jeff-tree edits. Jeff owns the
elapsed-display unit and compiler sweeps. All Alice jobs are terminal;
no flash, commit, push or merge was performed.

## Negative evidence retained

Unconstrained pre-merge and fresh post-merge probes inserted the same veneer.
Object-input reordering and unity compilation with the original declarations
did not resolve it. Canonical declarations in the unity test additionally
folded a neighbour's address expression. The old-context native timer-owner
experiment also failed. Do not repeat these unchanged combinations.

Optional cached probes are diagnostic helpers with frozen-input checks.
Changed objects compile fresh; unchanged retained objects can be reused.
Those probes are not full-build acceptance artifacts. The final source-only
build compiles fresh and uses none of those cached application objects.
Old pre-merge caches cannot establish parity for the merged tree.
