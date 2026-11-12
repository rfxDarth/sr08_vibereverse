# Alice: sensor-reading acceptance investigation, 0x07fc8500

Assembly remains installed. The parked C is not exact in the current context; its baseline remains in
../save_valid_measurement_range_clear_stale_at_8500.c.txt.
No source replacement, header or alias was installed in this investigation.

Current typed radio state has only two-byte alignment. The original clears
status at +0x42, the last value at +0x48, then both middle values with one word
store at +0x44; all are relative to the device-state base. C using the four
individual fields emits halfword stores after rebasing to +0x42.

Explicit four-byte __builtin_memcpy of the middle pair, with and without an
assume-aligned destination, still lowers to halfword stores. The full regular
LTO probe of aligned_middle_pair.c.txt also fails (aligned_middle_pair_module.log):
the accept path and retained constant-one register differ in the current C,
not only the clear. Do not assume that an older partial-match note proves this
candidate's accept path exact in today's tree.

A volatile may_alias word access with the known four-byte alignment does emit
a single STR. It currently retains base+0x42 and uses a register index 2,
and it moves the nonvolatile last-half clear after flag updates. This is not
OEM's STR at base+0x44. A root pointer annotation worsens the accept path.
Snapshotting a constant-one annotation and volatile queue/state pointer forms
were tested as well: native output remains 112 bytes with 90..103 differing
bytes. See the individual logs and retained candidate text.

These are bounded negative results, not byte acceptance. Next useful work must
address pointer-base selection, read ordering and the lifetime of the value one;
repeating the same aligned memcpy or pointer-qualifier experiments adds no evidence.

The constant-one annotation does reproduce OEM's r4 = 1 and four-register
frame in the native probe, although the rest is still inexact. A subsequent
four-form check assumes four-byte alignment on the state base (rather than
just the middle pair), uses volatile accesses and the original final flag-store
order, and varies top/zero branch hints. Results remain 112 bytes with 92/95
differences; no installation. See base_alignment_t*z*.log.

Only four representative source variants are retained; redundant generated
variants were removed. Their distinct probe results remain in the logs.
