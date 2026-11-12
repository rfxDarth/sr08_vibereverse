# Alice: display-state switch, 0x07fc3b78

## Best current ordinary-C candidate (not installed)

volatile_copy.c.txt adapts Jeff's annotated candidate, whose remaining early
callback reload affects 34 bytes including shifted tail instructions. Keep the
normal SSA `enter` lookup, then initialize a SEPARATE volatile saved_enter slot
immediately after the first search. Final callback reads that slot only after
current_state update. This reproduces OEM's late ldr r1,[sp,#16] and blx r1,
without making the lookup variable itself volatile.

Full native ac6 region is500 bytes; only six differ. Every byte from0x3bb6 to
the end matches, including GPIO loops, timer/state work, callback tail, literals
and strings. closest_verification.json records source hash, region hash and
six exact byte locations; volatile_copy_native.log shows the instruction diff.
Remaining difference is at the first lookup exit: OEM has two edge-specific
stores (found pointer / default zero), C has an edge copy then common store.
No assembly/register binding/byte patch, but NOT accepted until all bytes match
and a complete standalone build passes. The copied candidate's old Jeff header
still describes the earlier blocker; this README/current proof supersede it.

## Why the obvious volatile rewrite fails

Volatile read through &enter at the tail changes entry lookup initialization
and register allocation (~435 differing bytes). Separate volatile copy made
AFTER the second search is similarly wrong. Explicit edge stores/gotos keep
separate stores in optimized LLVM IR, but lose the original live zero/default
SSA value and rotate registers; the machine Control Flow Optimizer also
merges their common tail. Whole volatile variable was already negative in
Jeff's work; these are distinct, scoped variants.

volatile_copy.ll has one phi/store; branch_store_f0.ll has two volatile stores.
Their *_branch_folder.txt files dump the native compiler immediately before
AND after Control Flow Optimizer. This locates actual merging after register
allocation for the explicit-store form; do not blame SimplifyCFG for that case.
These diagnostics came from the existing licensed tools; no normal profile or
support changes. ARM6.18 gives the same six-byte nearest result. Clang14/18
normal C11 probes emit508 bytes and do not match. C89 probes fail on for-loop
declarations, explicitly logged as errors, not candidate results.

Taildup size/placement/penalty, PHI-edge controls, constant/default opacity,
address opacity, index-based branching and per-edge fences did not fix it.
Disabling tail merge disturbs other blocks. All sources/logs are retained to
avoid repeating those exact forms. No failed flag/profile added to the build.

## Installed baseline remains original assembly

Only normal input change is the Alice CLAIMED comment. Complete Clang18 object
is byte-identical to the last accepted canonical bundle source.581 other inputs
match exactly, recorded in installed_verification.json; no fresh full build
claimed. Last canonical payload directly equals OEM. Counts68 direct/70 expanded
assembly across449 units/506 sections. Jeff source, shared headers/data, Tools
and production compiler settings unchanged. No flash/commit/push. All jobs closed.
