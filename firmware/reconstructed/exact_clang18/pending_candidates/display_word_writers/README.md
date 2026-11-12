# Alice: pending display writer/formatter family

Four ordinary C candidates remain pending here. After the fifth merge, the two
unsigned formatters a9b4/aac8 are installed as native C in the main module;
28/32 bytes including pools match exactly. Their candidate duplicates were
removed, and check_candidates.py uses the installed sources for those entries.
Claims are in WORK_CLAIMS.md. Native ac6 instruction bodies match OEM; only
literal loads/pool placement differ. Optional Unicorn `check_candidates.py`
passes 780 synthetic RAM/flash/I/O cases: four initial-memory fills for each
fixed writer and all 256 input-byte values for each of the three formatters.
This is not byte acceptance or proof of hardware behavior.

Candidates: halfword writer a904 (0x3f53), byte45+word40 acb8 (tag0x10,
word0x5d771f6b), byte44+word40 acd0 (0x1f/0x5b5b526b), signed formatter a8ec
(shared+0x95 -> three digits at display+0x42), unsigned formatter a9b4
(shared+8) and aac8 (device_control_state+11), both setting display+0x45=0x10.
The existing shared formatter macro remains unchanged for Jeff's tree.

Verified terminal probes:
- Native-context three writers: /tmp/sr08-alice-display-writers-context.log.
- Standard LTO all six: /tmp/sr08-alice-display-six-lto.log.
- Standard LTO three formatters: /tmp/sr08-alice-display-formatters-lto.log.
- Native six with relocated retention anchors: /tmp/sr08-alice-display-six-anchors.log (same collision; tool change reverted).

First two fail strict link with ER_07fcacc8 overlap: C's root literal merges
away, moving its unique 0x5d771f6b constant from accc to acc8. Generic retained
root word at acc8 then collides. Formatter-only fails analogous ER_07fcacb0
overlap in the already installed native choose routine. No guard changed and
none of these six are installed. Do not repeat unchanged full probes.

A separate minimal linker experiment is at
/tmp/sr08-alice-probe-native-pool-retention.py; outputs/log at
/tmp/sr08-alice-native-pool-retention{,.log}. It uses the actual native writer
object plus a synthetic context LDR/pointer pool. Without an anchor it emits
20 bytes: root load correctly redirects to ad74 but the unique constant moves
to acc8. Globalizing/renaming the compiler's own root CP symbol plus a code-site
R_ARM_NONE anchor retains 24 bytes, but also prevents its LDR retargeting (wrong
load to acc8). Adding a separate ordinary global alias (size zero) leaves it at
20 bytes. In every case unlinked .text bytes are verified unchanged. No ELF
metadata rewriting has been added to the normal builder.

Pitfalls corrected while constructing the fixture: explicitly assign empty
.text sections; declare external relocation symbols .global; put R_ARM_NONE
on the context CODE site rather than the pool word (otherwise its extra
relocation prevents value matching); give the destination pool an actual LDR
reference, otherwise armlink does not use it for literal merging.

Further terminal experiments: separate ordinary/global CP aliases with size
zero/four, R_ARM_NONE and actual cross-object PC8 references did not reproduce
the desired storage/load behavior. Ordinary aliases can stay at the old offset
while the pointer is removed and the unique constant moves there, so they are
not a valid solution. All changes in those trials were isolated to /tmp ELF
metadata; unlinked text bytes were checked unchanged.

Moving the standalone retained word's R_ARM_NONE reference to a real context
code site also failed in the full six-unit probe. That production-support
experiment and its test were reverted. arm_compilers.py is byte-identical to
the verified four-display checkpoint; no guards or normal linker behavior were
changed in this batch.

A useful positive reduction is now retained as `probe_literal_pool_order.py`.
It compiles the actual C writer from this folder, plus synthetic far/near
readers with ordinary private literal copies. The unmodified writer links to
all 24 OEM bytes in ALL SIX object input orders. Source-based log:
/tmp/sr08-alice-native-pool-order-source-repro.log. This demonstrates that
ordinary compiler/armlink sharing can retain the pointer for a distant reader
while redirecting the writer's own load, without rewriting compiler output.
The full context adds competing equal-value pools; extend this small reduction
with the native choose/write44 objects before attempting more global changes.
Do not repeat the failed alias or unchanged full-module probes.

At the pre-fifth-merge checkpoint, these six candidates remained pending. The accepted conversion in that batch was
instead sensor dispatcher 0xee4c, compiled by ARM5 (see HANDOFF.md). The complete
normal source-only image remains canonical, now 522 sections / 451 units,
78 direct / 84 expanded asm units. No original firmware is a normal build input.

## After fifth merge: accepted unsigned formatters

The previous six-unit failure still reproduces in the changed merged context:
/tmp/sr08-alice-display-six-postmerge.log. Separately probing only a9b4/aac8
as native objects DOES pass every byte and placement check:
/tmp/sr08-alice-display-two-formatters-postmerge.log. The full source-only
export /tmp/sr08-alice-formatters-postmerge-source-bundle builds to both
canonical hashes; output/log stem /tmp/sr08-alice-formatters-postmerge-standalone.
579 exported files match workspace inputs. Audit 75 direct / 78 expanded,
450 units / 515 sections. No change to compiler support or parity guards.

The shared SR08_DEFINE_SHARED_DISPLAY_VALUE_FORMATTER macro is no longer used
in Alice's tree, but Jeff still uses both entries. Keep the shared header intact
until those two C conversions are merged; then remove its obsolete asm macro.

Final accepted sources reuse canonical typed RAM declarations. Re-export/build
verified at /tmp/sr08-alice-formatters-postmerge-typed-source-bundle and
/tmp/sr08-alice-formatters-postmerge-typed-standalone.{elf,payload.bin,bin}.
Verification JSON uses the same stem ending typed-verification.json. All 579
inputs match workspace; 780 differential cases and three support tests pass.
The signed-only follow-up /tmp/sr08-alice-signed-after-formatters.log still fails
at 0xacb0. Do not repeat unchanged probes.
