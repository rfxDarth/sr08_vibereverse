# Alice: accepted device-status dispatcher 0x80d8

`candidate.c.txt` is installed as ordinary native ac6 C. All 92 bytes match
V204 (86 code + 2 alignment + 4 pointer literal). Commands retain OEM order
40,46,47,30,31. Flags reload after the first three sends; final value reloads
separately before both final sends. Bit tests, registers and pool also match.

Plain C used direct offsets 80/82/83 instead of OEM base + 76 plus immediate
4/6/7, shortening paths. Shared integer annotation caused pointer CSE/hoisting.
Per-command annotations with distinct tags prevent that CSE and recover the
original address instructions. No inline ASM, register constraints, custom
compiler flags, support edits or dependencies. Canonical cycle/radio headers.

## Full source-only acceptance

`verification.json`: payload 67136 and container 67200 bytes equal OEM V204 byte
for byte and have canonical SHA-256 hashes. 503 sections / 449 units; 65 direct
/ 67 expanded ASM (one fewer). All 582 source inputs match the isolated bundle;
ten support tests pass. Bundle /tmp/sr08-alice-status-dispatch-only-source-bundle;
output stem /tmp/sr08-alice-status-dispatch-only-standalone. Full log:
only_standalone_build.log. only_installed_audit.json is the final audit.
source_input_hashes.json is current. All jobs terminal.

Merge dispatcher C plus its ac6 group registration and review catalog rows.
No manifest/shared header/data/profile/support change. No Jeff/Tools edits,
flash, commit, push or merge. Backups retained here.

## Rejected display-writer experiment

Native 0xacd0 writer's own 24-byte module probe passed in display_followup/, but
the pair's full build FAILED canonical hash aa568feb...032a. Six display bytes
changed: a918,acc0,acc8-accb. Existing 0xa914 retargeted to new root ace0, original
writer 0xacb8 lost root acc8 and its unique constant moved there. Dispatcher
region stayed exact. Writer source, native registrations and catalog rows
restored. Only dispatcher/build registration differ from the prior canonical
status_mod5 inputs; 580 other inputs unchanged.

Rejected full log: standalone_build.log. Diagnostic ELF prefix compare:
rejected_full_image_differences.json (67136 of 67144 bytes; NOT a flash image).
No guards or output bytes patched. rejected_pair_source_input_hashes.json and
installed_audit.json describe that rejected pair, not current acceptance.
