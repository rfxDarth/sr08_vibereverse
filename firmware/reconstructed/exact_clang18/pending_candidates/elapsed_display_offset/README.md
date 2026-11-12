# Alice: elapsed display entry scheduling 0xace8

Early ordinary C divisor declarations, annotations of 3600 and seed225<<4,
and a signal fence after the seed do not fix the entry ordering. Native ac6
still loads the source pointer/value before MOV225/LSL4; original does those
constant instructions first. Pre-RA source scheduling changes nothing for
these new source forms. Same 108-byte extent, ten differing bytes (entry
reordering and two shared-root LDR displacements). No LTO probe justified.
Original ASM remains installed; no normal compiler/profile/support edits.
