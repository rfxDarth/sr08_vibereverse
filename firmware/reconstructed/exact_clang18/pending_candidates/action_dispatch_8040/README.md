# Six-way action dispatcher C candidates

Not installed. Native ac6wordtables reproduces the six-entry word table and
dispatch prefix. Cases0/1 instruction bodies also match apart from shared
literal positions. Remaining mismatch: cases3/5 use direct global offsets
where V204 forms and reuses base+0x4c; default return is placed after the
publish tail rather than shared with case4. Native extent164 bytes instead of
original152 (includes local literal pools). Preserve write widths: case3 uses
halfword stores at4e/58,case5 byte stores at those offsets. Case2 is a no-op.

Typed view,default label in middle,and -O1/-Os variants all same85 differing
bytes. Annotating the entire nested member hoists address setup before dispatch
(worse);annotating inside cases produces the same original mismatch. ARM5
140-byte result differs138 bytes. No annotation-based candidate installed.
Probe logs /tmp/sr08-alice-action-*.log. LTO not tried because that changes
compression globally; scoped native profile is the confirmed table recipe.

Installed 2026-11-14 by Jeff (exact_clang18_jeff only): manual_sources/six_way_command_dispatch_default_branch_at_8040.c in the ac6ltowordtables LTO module; see ../../../WORK_CLAIMS.md.
