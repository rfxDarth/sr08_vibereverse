# Alice: pending measurement validity checker, 0x07fc8878

Assembly is restored in the normal build. candidate_one_hint.c.txt is an
instruction-matching C reconstruction, not an accepted replacement. The normal
compiler groups, native-unit set and literal exclusion set have been restored
byte-identically to the preceding canonical configuration. No linker-support
implementation or output bytes were patched.

## C instruction result

The previously parked C chose a different block layout. A branch hint on the
combined upper-bound/ID failures reproduces the original shared invalidation
block. search_branch_layout.py tests a bounded 81 forms; its heuristic score
masks literal-LDR displacement bytes solely to find a candidate for strict
comparison. It is not a build input or acceptance check.

Separate upper-bound and ID hints first gave zero instruction differences.
A single combined hint emits identical native output (104 bytes; SHA-256
579d72c0120874012b916af143dacb3f525818709f0b56ac7fa72697c7dfb62a).
See one_hint_equivalence.json. The module probe native_module.log passes all
104 bytes including alignment/literals. It checks the probed routine, not every
other routine in that link. The whole-image guard uncovered the regression.

Plain inverted conditions fold both signed bounds into an unsigned range test
and do not match. Hinting the first lower-bound failure puts the remaining
checks after the return and adds a branch. The pending C candidate retains all
original range, sensor-state, ID and status (0/510) tests without new behavior.

## Whole-image failure and reverted experiments

Adding the candidate changes one LDR displacement in an EXISTING C routine:
configure_radio_state_and_send_command_6a, 0x07fc82b2. OEM loads 0x07fc867c.
The generated image instead loads another copy of the same address 0x07fd1e28.
Every other payload byte matches. This is not sufficient for bit parity.

1. Initial full build selects 0x07fc8568 (standalone_build.log,
   full_link_differences.json).
2. Adding that word to the existing stub literal exclusion set selects
   0x07fc84e4 instead (sealed_standalone_build.log, sealed_link_differences.json).
3. Excluding both selects 0x07fc832c (two_pools_standalone_build.log,
   two_pools_link_differences.json).
4. Compiling the existing radio caller natively in the shared module gives
   exactly the same failing payload (native_caller_standalone_build.log).
   Its isolated native body also matches except for that load offset:
   radio_caller_native.log. No source change to the caller was made.

check_pool_ownership.py and pool_ownership.json record all equal reachable pools
and their original module loads. No original module load uses 0x84e4/0x8568,
but three original routines DO use 0x832c; excluding it would be wrong. The
exclusion experiments and native-caller flag have ALL BEEN REVERTED. Do not
repeat them or fix the offset by rewriting compiler output. A useful next step
would be a reduced linker example with these four pools and constrained earlier
readers, extending the retained display-pool reduction.

## Restoration evidence

restoration_verification.json compares all 581 build inputs to the previously
canonical source-only snapshot: 579 are byte-identical; the other two differ
only by Alice CLAIMED comments and compile to byte-identical complete Clang18
objects using the normal flags and identical temporary source path. The build
configuration itself is byte-identical. The existing canonical OTA artifact
also directly equals OEM. This is restoration/object-equivalence verification,
NOT a fresh full-image build. Current audit: restored_audit.json, 73 direct /
76 expanded across 450 units. Earlier candidate audit/input hashes are labelled
as experimental, not current verification.
