# Alice: modulo-five status display (0xa914)

Accepted assembly-free C candidate: `candidate.c.txt`, installed with the
neighbouring writer (`writer_typed.c.txt`). The routine writes status bytes according to shared byte 48 modulo 5.
No mapping to a user-visible feature is inferred here.

`last_plain.c.txt` first recovered the original register allocation: use an
annotated integer offset for the initial base+64 address, but plain base[64]
for the final store. Keeping the annotated digits pointer alive to the end
instead makes it occupy r4, displacing the OEM offset value.

The final comparison initially compiled as CMP #1 / BHI. Both that and the
OEM CMP #2 / BCS mean unsigned remainder >= 2. Integer casts, annotated
operands, branch hints, subtraction, and switch spellings did not recover the
OEM pair. `!__builtin_sub_overflow(remainder, 2u, &difference)` does: subtraction
has no unsigned borrow exactly when remainder >= 2. The discarded difference
has no runtime store. This uses a compiler builtin, with no inline assembly,
fixed registers, emitted bytes, changed compiler profile, or new dependencies.

The native candidate now has exactly the OEM 76-byte instruction/alignment
shape. Only two LDR immediate offsets differ, because standalone linking puts
two private pointer words after the function, rather than sharing the original
words at 0xacc8 and 0xacb0. See `native_verification.json` and native logs.
Both combined shared-context and complete-image validation now pass with all
existing guards intact; see the final acceptance section below.

All ten support tests pass (`support_tests.log`). The two installed claim
comments (this function and switch_display_state_and_run_hooks) are proven
complete-object identical to the last canonical source bundle in
`installed_claim_object_equivalence.json`. No fresh full build is implied by
that object comparison. No Jeff/Tools changes, flash, commit, push, or merge.

The first full native/shared-context probe (`sub_overflow_lto.log`) finished:
76-byte region, exactly one differing byte at 0xa918. Root 56d0 is selected
from the native choose routine pool at 0xacb4, instead of the original writer
pool at 0xacc8. The other root load is now exact at 0xacb0. A changed-input
probe with the pool-owning writer (0xacb8) compiled natively is the next test;
the new far native reader may keep its root word naturally, unlike earlier
writer-only tests with transcribed context loads. `writer_typed.c.txt` uses
the canonical RAM declaration to avoid an incompatible array definition.

## Combined native pair matches (full-image build pending)

`with_writer_lto.log` finishes BYTE_EXACT: 0xa914 region 76 bytes, writer
0xacb8 region 24 bytes. Native reader plus native pool owner is the missing
context: armlink keeps the owner's root for the distant reader while allowing
the writer's own load to select its original later pool. No linker changes or
manual pool retention are needed. Both ordinary C sources are now installed
and registered in the existing main module's native set. The source-only
export `/tmp/sr08-alice-status-mod5-registered-source-bundle` (582 inputs) is
building to `/tmp/sr08-alice-status-mod5-standalone.*`. Its full hash guards
must pass before these are accepted conversions. Audit currently 66 direct /
68 expanded ASM, 449 source units. All ten support tests pass.

An earlier intermediate export lacking registrations is explicitly marked
invalid in its README. Do not use it. Earlier installed_verification.json
describes the pre-install comment-only checkpoint; it is historical, not proof
of the currently installed C sources.

## Accepted full-image result

The complete source-only build finished successfully: 504 sections, 449 source
units; payload 67,136 bytes, container 67,200 bytes. Both equal OEM V204 byte for
byte and have their canonical SHA-256 hashes. All 582 bundle inputs match the
installed sources. Audit: 66 direct / 68 expanded assembly units (two fewer).
Ten support tests pass. Durable final proof: `verification.json`,
`source_input_hashes.json`, `standalone_build.log`, `installed_audit.json`.
Output stem: `/tmp/sr08-alice-status-mod5-standalone`.

Merge both manual C sources together with their entries in ARM_COMPILER_GROUPS
and LTO_NATIVE_UNITS, plus the two review catalog updates. Existing shared RAM
header is unchanged. No manifest, compiler support, flags, data, or guard changes.
The comment-only installed_verification.json is an older checkpoint, superseded
by verification.json. All jobs terminal; no flash, commit, push, or merge.
