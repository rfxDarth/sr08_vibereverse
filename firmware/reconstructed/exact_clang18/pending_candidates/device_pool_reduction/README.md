# Alice: equal device-state pools and local-literal value lookup

## Small linker model (no OEM input)

reproduce.py builds a real C reader at 0x82b0 with its load at 0x82b2 and four
synthetic pointer pools at 0x832c, 0x84e4, 0x8568, 0x867c. The three optional
early reader sites are the original 0x7f98, 0x8006 and 0x8032 constraints.
All values/addresses are source constants. No original firmware is read and no
compiler output is rewritten. Synthetic assembly is optional analysis context,
not a firmware implementation or normal build dependency.

A pool must belong to a code-bearing input section to reproduce sharing.
Standalone data sections (even mapping-marked, retained and externally read)
leave the C reader's private literal. Native and LTO-generated-reader controls
both confirm this. Earlier separate-reader model is retained as
separate_reader_model.py.txt; its negative logs must not be treated as a sharing
reproduction. Adding data-mapping symbols alone did not fix it.

With each pool in a code-bearing section, all 96 permutations/reader-presence/
caller-order cases select 0x867c. Making the farthest pools standalone gives:

| Standalone tail pools | C reader selects |
| --- | --- |
| 0 | 0x867c |
| 1 | 0x8568 |
| 2 | 0x84e4 |
| 3 | 0x832c |
| 4 | its private 0x82bc |

Each tail row passes eight controls. association_matrix.json and *_results.json
retain observations; model now asserts the selected target class. This matches
the prior full range-checker experiment's literal fallback sequence. Object order
alone does not explain it. Each new run saves its actual script in its output
directory. Native quick invocation:

    python3 reproduce.py /tmp/new-model-dir --pool-readers --quick

## Actual builder defect, red-to-green regression

stub_assembly searched for an equal in-range local word BEFORE fetching the
value of an external module-owned literal. image_word deliberately returns
None for such a target, so the search missed a valid local duplicate. Later
context_word resolved the value, but only the trailing-copy fallback saw it.
Moving a literal owner from ASM context to C could therefore change the local
pool's ownership/eligibility despite an unchanged value and available local word.

before_fixed_target.s.txt versus before_module_target.s.txt and
local_duplicate_bug.json reproduce this without a compiler. Same reader/local
word, only target ownership changes: old source selects local word for fixed
target, creates an unnecessary copy for the module target.

arm_compilers.py now resolves module-owned values BEFORE local selection.
Existing equal-value, PC8-range, sealing and all strict link/image guards remain
unchanged. No constants/offsets rewritten, no data changed, no broad exclusions.
tests/test_stub_local_literal.py fails on the old module-owned case, passes
after the fix, and covers fixed targets, missing locals and sealed locals.
All ten support tests pass (local_duplicate_before_test.log / support_tests.log).

## Accepted baseline support fix

Full standalone with installed ASM still present: 506 sections / 449 units,
68 direct / 70 expanded assembly units. Payload and complete container directly
equal OEM, unchanged hashes. All 582 exported inputs matched workspace at the
checkpoint; no original image in export. verification.json, source_input_hashes.json
and standalone_build.log. Artifacts /tmp/sr08-alice-local-pool-value-standalone.*;
export /tmp/sr08-alice-local-pool-value-source-bundle.

## Rejected range-checker retry (restored)

The existing one-hint C candidate was tested again with the fixed
builder. Native current output has identical instructions aside from four
expected context-dependent cycle-state LDR offsets (range_native_current.log).
A prior shared native/module probe matched its full 104-byte region but failed
the full image because C caller 0x82b2 selected 0x8568 instead of 0x867c.

Normal experiment registers it as ac6lto + LTO_NATIVE_UNITS, as the earlier
successful module probe did. range_before_local_value.c.txt and
build_before_range.py.txt are precise rollback copies. range_standalone_build.log
and range_source_input_hashes.json identify this newer experiment; they are NOT
the already accepted support-only checkpoint above. Do not accept the C source
until whole-image guards pass. No Jeff source or shared header changed.

The full range retry is TERMINAL and rejected. Its own complete 104-byte region
matches OEM, but exactly one payload byte still differs: 0x82b2 is 0xad versus
OEM 0xf2, the same old literal displacement (0x8568 versus 0x867c). Payload SHA
b8f19849… is exactly the previous failure. The lookup fix is a real independently
regression-tested defect, but NOT sufficient to solve that remaining sharing
choice; do not claim otherwise. range_rejected_differences.json records the
67136-byte comparison prefix of a diagnostic ELF extraction (8 trailing bytes
excluded, no flashable image accepted).

The experimental C source and its two build registrations were restored from
the precise backups. All 582 normal inputs now equal the accepted support-fix
bundle again (restored_verification.json); this is exact-input restoration, NOT
a new post-restore build. Current source count remains 68 direct / 70 expanded
ASM. The candidate audit's 67/69 is experimental only. No shared/Jeff files
changed. Support fix and four tests remain installed; every job is terminal.

Next reduction should include the actual C initializer and the newly native
0x8878 function/context to explain why a still-present code-associated 0x867c
pool loses selection. The current model establishes eligibility/fallback but
not the full pre-merge cause in that case. Do not rewrite the offending LDR,
weaken the hash gate, or repeat the restored exclusions experiment.
