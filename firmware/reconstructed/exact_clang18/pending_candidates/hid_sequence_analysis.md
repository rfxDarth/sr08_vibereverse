# HID sequences at 0x07fca64c

Static evidence from V204's formatter/sender, report map and lookup data; this
is not a hardware observation or an accepted instruction-exact conversion.
The routine's old name is `advance_registration_data_transfers`.

The report map at `0x07fcfbc0` uses report ID 1 for mouse buttons/wheel/relative
X/Y, and report ID 2 for touchscreen flags/contact ID/X/Y/contact count. The
sender API uses zero-based report indices 0 and 1 respectively.

Mouse steps at `0x07fcfb7a`, five bytes each:

| Phase | Repetitions | Buttons | Wheel | Relative X | Relative Y |
|---|---:|---:|---:|---:|---:|
| 0 | 4 | 0 | 0 | -126 | 126 |
| 1 | 6 | 0 | 0 | 26 | -40 |
| 2 | 11 | 0 | 1 | 0 | 0 |
| 3 | 4 | 0 | 0 | 0 | 0 |

Touch report template at `0x07fca788`: `03 06 70 07 00 00 01`.
Flags are tip/in-range bits, contact ID is 6, X is 1904, and Y is replaced by
successive little-endian coordinates at `0x07fcfb8e`:
3456, 3200, 2944, 2688, 2432, 2176, 1920, 1664, 1408, 1152, 896, 640.
The twelfth report sets both flags and contact count to zero, then resets
phase. The descriptor's logical coordinate maximum is 4095.

State locations:

- `device_control_state + 0x20` and `+0x21`: mouse and touch active bytes.
  Their existing combined field name `hid_link_state` is misleading; cleanup
  clears both bytes with one halfword store.
- `cycle_control_state + 0x24`: phase SHARED by both sequences.
- `cycle_control_state + 0x28`: mouse phase's repeat counter.
- HOGPD environment `+34`: report completions in flight; queueing stops at 4.

Each branch schedules its own one-count callback when its active byte equals
1; the loop subsequently accepts any nonzero active byte. Do not merge the
timer requests, separate the phase counters, or skip the final report after
clearing its active flag. When disconnected the counters still advance, but
reports are not sent. Each branch clears the completion counter if task state
is zero and the count is at least four.

The C candidate and `probe_hid_sequences.py` preserve these details. Native
ac6 currently fits the 336-byte region but differs in control/data-address
scheduling and literals. It remains outside the active manifest.
