# V204-based SR08 reconstruction

## What the shipped code does

The V202 and V204 images use the same motion-to-phone command path. Their sensor callback reads six bytes from the sensor at register `0xA8`, decodes three signed coordinates, then enters the event path at V204 `0x7fc41e4` (V202 `0x7fc4108`). When the mode byte at `DAT_07fc439c + 0x0c` equals `0x10` and the interval gate passes, the callback calls the common sender with `(6, 2, 0, ...)`. The sender serializes the first three parameters, so the packet is exactly `06 02 00`.

The phone-side command observed for selfie mode is `06 02 00`, and the motion path independently emits that exact command. The static analysis has not yet proved whether a physical-button handler separately converges on the same sender. Debouncing the phone notification cannot reliably separate motion events from button events if both arrive as identical packets; that distinction must be made on the ring before the common sender.

The images expose HOGP-related code and strings (`app_hogpd_create_db`, `find_phone_key_handle`, HID timer handler, button enable). V204's report map is now extracted at `firmware/reconstructed/v204_hid_report_map.h`: it defines a mouse input report (ID 1) and a digitizer touchscreen input report (ID 2), not a keyboard report. The current decompilation still does not identify a complete input-event-to-HID-report routine, and the ATC demo does not supply this application layer.

## What ATC's recipe gives us

`ATC_SR08_Ring_source/Firmware_src/projects/target_apps/ble_examples/prox_reporter` supplies a DA14585 SDK app and the OTA packaging format. Its app is a proximity/SUOTA demo with a display and a P1_5 wakeup button. It advertises the SUOTA service and does not implement the V204 vendor service (`56ff`) or V204's mouse/touchscreen HOGP input reports.

`Eclipse/make_bin_ota.py` wraps a compiled application binary with a 64-byte header, CRC-32, 240-byte total-image alignment, FF padding, and a final XOR byte. This is packaging, not a signing or authentication mechanism. Using this wrapper alone cannot turn the ATC demo into V204-compatible firmware.

## Safe reconstruction target

The MVP now registers the SDK HOGPD service and serves the extracted mouse and touchscreen report map. V204's input-event-to-report generation path is still unported; the current evidence does not justify substituting a keyboard HID implementation. HOGP and SUOTA are included in advertising; the `56ff` vendor service is available for GATT discovery.

The MVP now registers V204's `56ff` GATT service on the DA14585 SDK baseline. The service uses the recovered UUIDs, write-request-only TX characteristic, notify RX characteristic and CCCD. It routes the clock-sync and hour-format commands and uses the SDK notification path. The remaining BLE work is the full command/event dispatcher, the measurement and HID event producers, and radio-level verification of address and service behavior on the ring.

## Current status and constraints

- Identified the exact motion sender and serialized packet in V202 and V204.
- Confirmed that ATC's OTA script is a deterministic wrapper recipe, not the firmware implementation.
- Confirmed the DA14585 package has SDK-level HOGPD and custom GATT profile support. The MVP registers both HOGPD and the V204 custom service; the ATC example does not configure either for its app.
- An earlier ATC-derived MVP image was flashed, booted, and then replaced with stock firmware through SUOTA. The current reconstructed sensor-init/clock-helper candidate has not been flashed. The public ATC sample binaries and `firmware/V202.bin` / `firmware/V204.bin` remain untouched.
- The MVP now links the DA14585 application profile, sensor-init driver, HOGPD, SUOTA, and V204 `56ff` CUSTS1 service into a flashable OTA image. Its current clock/GATT candidate remains unflashed; sensor behavior, on-air address stability, and service notifications still need ring-side verification. Decompiled V204 behavior beyond the explicitly ported paths remains incomplete.

## Rebuilt, compileable behavior slice

`v204_core.c` now contains three small, host-independent helpers derived from the observed path:

- `v204_decode_accel` combines each little-endian sample pair as a signed 16-bit value and arithmetic-shifts it right by two, matching the six-byte decode in `0x7fcca68`.
- `v204_motion_event_due` models the visible mode `0x10` and unsigned tick-difference check in `0x7fc41e4`.
- `v204_encode_event` writes the three serialized event bytes used by `0x7fc259c`.
- `v204_display_segments` and `v204_display_digits` contain the exact GPIO port/pin tables recovered from V204's display-state setup. They match the arrays in the ATC SR08 source, giving us a confirmed hardware baseline for the display.
- `v204_digit_segments` and `v204_format_number` reproduce the 16-entry segment-pattern lookup and fixed-width integer-to-display conversion from `0x7fc3148`; leading blanks preserve a zero in the units place.
- `v204_render_three_digit`, `v204_render_five_digit`, `v204_render_two_pairs`, and `v204_render_all_segments` reproduce the buffer shapes observed in `0x7fca9b4`, `0x7fcaac8`, `0x7fcad54`, and `0x7fca9d0`. The displayed values are known, but their user-facing labels are not.
- `v204_display_next_digit` and `v204_display_refresh_due` reproduce the six-digit scan index and elapsed-tick gate in `0x7fc8c90`; the latter retains the observed `0x05000000` wrap correction and the `> 0x7c` comparison after shifting elapsed time by two.
- `v204_state_period` records the values written by the state-entry callbacks recovered from `0x7fcfc54`; the meaning and unit of this period field are not yet identified.
- `v204_state_flags` exposes the table's raw two-byte flags for each known numeric state; it preserves the values without assigning semantic labels.

The helpers compile for Cortex-M0 Thumb as `build/v204_core.o`. This is a reconstructed logic slice, not a complete application: the DA14585 startup, sensor driver configuration, BLE profile database and notification transport are still missing from this module.

## V204 subsystem map (static evidence)

| Firmware area | Observed entry points | Recovered behavior | Remaining gap |
| --- | --- | --- | --- |
| Accelerometer sampling | `0x7fcca68` | Reads six bytes from register `0xA8`, decodes three axes, forwards samples to motion processing; also contains sensor/configuration state branches. | Exact sensor identity, initialization values and all sampling states are not fully named. |
| Motion and step processing | `0x7fcca68`, `0x7fc3d6c`, `0x7fc41e4`, `0x7fc4f34` | Accelerometer samples feed a filtered peak/crossing classifier; accepted increments update the shared total at `+0x38`, which state `0x01` displays. Motion mode can independently emit `06 02 00`. | Exact filter math, sampling thresholds and batch-count transitions need porting; measurement units and calibration fields remain partly unknown. |
| BLE event queue | `0x7fc259c`, `0x7fc3b58`, `0x7fc2f2c`, `0x7fc2efc` | Three-byte event encoding and queued transfer are visible; another wrapper creates an 18-byte zero-filled buffer with event family `0x06` before queueing it. MVP maps the recovered `06 02 00` event and the `33f4` notification path. | HID/button/motion producers and the remaining event payloads are not ported; the notification path still needs on-ring verification. |
| Queued command dispatcher | `0x7fc25c4` | Drains one-byte dispatch IDs plus 19-byte payloads; the app and V204 ATT table confirm 20-byte writes over `33f3`. The MVP handles `0x01`, `0x02`, `0x03`, `0x07`, and `0x1d`. | Most dispatch branches, their phone-side commands, and their responses remain unported. |
| State/feature controller | `0x7fc3b78`, `0x7fc3a38` | `0x7fc3b78` switches among numeric states and invokes per-state callbacks; `0x7fc3a38` changes a bitfield and emits `0x27`/`0x28` events when the resulting state is zero. | State IDs and flag meanings need systematic caller/data-flow recovery. |
| Multiplexed segment display | `0x7fc3b78`, `0x7fc1d10`, `0x7fc3148`, `0x7fc8c90`, `0x7fca9b4`, `0x7fca9d0`, `0x7fcaac8`, tables at `0x7fcfaac`, `0x7fcfab8`, and `0x7fc31c0` | The six-digit scanner selects a state renderer when the digit index wraps to zero, then reads one byte from the six-byte frame and drives the matching segment/digit GPIOs. The 16 digit patterns, fixed-width number conversion and several display buffer formats are recovered. | Display value labels, brightness scaling and the SDK-level GPIO/timer integration remain to be recovered or ported. |
| Main event loop | `0x7fc9da0` | A large event-processing routine calls state, timing, storage and motion helpers. | Decompiled register/stack artifacts prevent reliable source-level reconstruction of this routine yet. |
| HID timer | `0x7fcc9c8`, `0x7fcc9a4` | Registers timer slot `0x0b` using period data and logs `vtimer_enable_hid_timer_handler`. | Callback table and mouse/touchscreen report generation are still unresolved. |
| Persistent storage | `0x7fcc7ec`, `0x7fcc80e`, `0x7fc3ea0` | Diagnostics include `start check` and `save check`; flash helper exposes read/write/erase modes, and dispatcher ID `0x30` erases at `0x64000` then writes 20 bytes. | Full layout and record format are unknown; this is not evidence of OTA firmware installation. |

### Saved context block

Startup zeroes the 0xd4-byte V204 context, applies defaults at `+0x89`,
`+0x8a`, `+0x94`, and `+0x36`, then checks the first word at flash `0x3c000`.
If it is not `0xffffffff`, it restores 0x70 bytes to context `+0x30`. The MVP
now restores the saved epoch and initializes its running clock/day tracker,
then restores the recovered clock-format, scale, step, and status fields from
that block. Save helper `0x7fc5200` first copies its current time value to
`+0x30`, erases 0x2000 bytes at `0x3c000`, then writes the 0x70-byte block.
Recovered callers are the sensor/battery path `0x7fc20f0`, the feature path
`0x7fc43a4`, and measurement-history path `0x7fc48a8`; command `0x02` and
`0x1d` do not call it directly. The MVP ports the clock-sync persistence trigger
from `0x7fc25c4`/`0x7fc48a8`: on a date change or forward same-day quarter-hour
bucket advance, it saves if at least `0x33` epoch seconds have elapsed since
the last accepted helper invocation. The decompiled helper reads the current
epoch from the same global used by the context-save routine, compares it with
a separate RAM guard value, and updates that value before further checks. The
guard is volatile and starts fresh after reboot; it is separate from the saved
epoch. The MVP advances it before attempting the flash save, matching the
helper's ordering. It preserves
unknown bytes from an existing block and updates the
known clock, scale, and counter fields before erasing the same 0x2000-byte
range and writing the 0x70-byte block. Sensor/battery and feature-path callers
remain unported.

The top-level `0x7fc0000` is not a usable C entry point in this analysis: Ghidra decoded it as ARM state and stopped at bad instruction data, while the recovered app procedures are Thumb. The linked-image startup and vector layout must come from the DA14585 build baseline, not this decompiler function.

### Step counter port status

The JRing app's already-decompiled BLE parser maps response ID `0x51` to `onGetSportSteps`. It concatenates payload fields 4, 3, 2, 1 before parsing hexadecimal, establishing a four-byte little-endian step-count report; `v204_decode_step_count` ports that wire decoding.

The firmware has an accelerometer-based counter path. In `0x7fcca68`, an adaptive motion/peak classifier calls `0x7fc4f34` with an accepted increment of 1 or a batch count. `0x7fc4f34` adds that amount to a main total at context offset `+0x38`, conditionally adds it to a second counter at `+0x2c` when control flag bit 7 is set and mode is one of 1, 2, or 4, sets a separate report flag bit 1, and conditionally adds it to a third counter at `+0x3c`. It then refreshes queued status records via `0x7fc50b4`. Daily reset helper `0x7fc4fa0` clears offsets `+0x38`, `+0x3c`, `+0x40`, `+0x48..+0x54`, a separate `+0x68` counter, and a collection-state byte; it leaves the `+0x2c` counter and report flag untouched. `v204_step_counters_add` and `v204_step_counters_reset` now preserve that distinction. `v204_encode_step_status` ports the 20-byte type-`0x03` record layout: first four-byte field and step total are little-endian; a 24-bit field is zeroed below `0x2329`; two more little-endian calculated fields follow. The MVP handles command `0x03` by notifying this record and the corresponding type-`0x13` record on `33f4`. Their values map to reconstructed counters and remain zero until motion classification is ported. Startup initializes recovered first-run defaults for context `+0x89`, `+0x8a`, and `+0x36`, then restores the corresponding known fields from the 0x70-byte block at `0x3c000` when it is not erased. The clock-sync-triggered context save path is now ported; sensor/battery and feature-path save triggers remain unported.

The five-digit display is now tied to the same step total: renderer `0x7fcad54` loads the pointer stored at `0x7fcaf98` and displays the 32-bit field at `+0x38`; the accumulator uses the pointer at `0x7fc522c`. Both pointer cells contain the same target address (`0x07ffd557c`), so state `0x01` displays the counter total. The app separately labels response `0x51` as sport steps; its producer is not yet connected to the internal `0x03` / `0x13` queued status records.

The classifier code exposes more of its decision path: it detects filtered-signal direction changes, compares peak/trough amplitude against a dynamic threshold, and accepts candidates only when the elapsed counter difference is greater than `0x27` and less than `0x7d1` (40–2000 in that counter's units). Classifier mode `2` adds one immediately; mode `1` accumulates candidates and adds them as a batch after the count exceeds `0x11` (18); mode `0` initializes that batching state. A secondary counter is incremented separately by the filter path. These transitions are now mapped, but the three-channel floating-point filter, dynamic threshold derivation, and cadence/timer context are not yet ported. The accumulator and type-`0x03` record serializer are ported, and command `0x03` now routes both recovered status records through BLE; deriving calibration inputs and wiring the classifier to the accumulator remain incomplete.

The accelerometer probe/setup path is now mapped more precisely. `0x7fc1da8`
reads register `0x0f` and requires ID `0x11`, then reads register `0x70` to
select a variant. It applies common writes `0x68=0xa5`, `0x24=0x80`, followed
by `0x57=0x08`, `0x2e=0x00`, `0x20=0x47`, `0x23=0xa8`, `0x24=0x4e`,
`0x2e=0x9f`, `0x21=0x82`, `0x36=0x03`, `0x37=0x02`, `0x34=0x0a`; if
register `0x70` is not `0x28`, it also writes `0x1e=0x05`. These terminated
register tables are now constants in `v204_core.c`. The recovered controller
configuration points to seven-bit I2C address `0x18`, fast master mode, and
SCL timing counts `0x48`, `0x50`, `0x0a`, `0x17`. The exact sensor model remains
unknown. The sequence is now implemented in `firmware/mvp/v204_accel.c`: it
configures the DA14585 SDK I2C driver on P2_3/P2_4, probes ID and variant,
applies these writes, and exposes a six-byte sample read from `0xA8`. The MVP
calls the probe during app startup and logs success or failure. This SDK
transaction path has compiled but has not been flashed or hardware-verified.
No periodic reads or motion processing are wired into the MVP yet, so steps
remain a placeholder.

## Heart-rate and SpO2 evidence

The JRing Android BLE client contains generic measurement controls:

- Oxygen mode writes a 20-byte command with ID `0x3e` and a one-byte on/off value. The client interprets response `0x3f` as a single oxygen sensor value.
- Manual heart-test control uses `0x14` to start and `0x15` to stop. The client handles `0x14` measurement replies as a timestamp plus two one-byte values; `0x94` and `0x95` are start/stop failure replies.
- Automatic heart-rate settings use command `0x19`; heart-rate area settings use `0x26`.

These establish the app's protocol vocabulary, not that V204 implements every feature. In the recovered V204 image, dispatcher cases `0x14`, `0x15`, and `0x19` exist, and the `0x26` range is routed through a shared update path. The `0x14` case updates feature masks and may transition to state `0x09`; `0x15` updates masks/mode bits and may transition to state `0x00`. The app's manual heart-test start command is also `0x14`, which supports (but does not by itself prove) that state `0x09` is the heart-test display.

I found a likely heart-rate value path. `0x7fc3584` reads a byte ring buffer through `0x7fc2fa4`, accumulates the buffered samples when an internal mode field is `2`, applies a piecewise transform, takes the greater of that result and a contemporaneous sensor-context value, and caps values above `0xb8` to `0xb9` (185). It writes the result at context offset `+0x2a`. The state-`0x09` renderer `0x7fca960` reads and displays that same `+0x2a` field from the same shared context object. The command-to-state mapping, numeric range and filter path together make this HR-related; I have ported the isolated mode-2 curve as `v204_hr_candidate_rate` in `v204_core.c`.

That helper is only one stage. It takes the already-accumulated sample sum and the sensor-context floor as inputs; it does not reproduce the sensor acquisition, ring-buffer production, mode/state policy, time-based smoothing, or BLE report. The separate `0x7fc3838` setup path writes sensor registers and performs a calibration loop, but the opaque bus/device behavior is not yet sufficiently identified to reconstruct that as optical PPG acquisition. So HR is **partially mapped and one arithmetic stage ported**, not a complete measurement implementation.

There is also an immediate value `0x3e` in the Thumb callback at `0x7fc08ba`. That callback allocates internal messages with arguments including `0x3e` and either `0x42` or `0x22`, writes small internal headers, and copies/fills data buffers. It is not a match for the app's 20-byte command with opcode `0x3e`: it does not access an optical sensor or calculate/return an oxygen value, and the byte alone does not establish protocol identity. The dispatcher at `0x7fc25c4` has no `0x3e`/`0x3f` measurement cases.

I have not found a V204 `0x3f` oxygen-report path, oxygen saturation calculation, or a confirmed optical sensor driver. The six-byte I2C read from register `0xA8` feeds the accelerometer/motion/step path; it is distinct from the register setup/calibration sequence above. SpO2 measurement logic remains **unfound and not ported**. The app-side response formats can be decoded, but that would reproduce protocol parsing only, not the firmware measurement behavior.

The state dispatch table at `0x7fcfc54` has 35 non-null entries, with numeric state IDs from `0x00` through `0x23` except `0x13`; each entry includes a two-byte flags field and optional enter/exit function pointers. State `0x1e` is present, and the dispatcher rejects a new transition while `0x1e` is current. The flags and individual state names are still unknown, so the table is not being assigned user-facing labels yet.

The entry callbacks for states `0x00`, `0x02`, `0x03`, `0x04`, `0x06`, `0x08`, `0x09`, `0x0a`, `0x0c`, `0x0d`, `0x0e`, `0x14`, and `0x15` write the period field at `DAT_07fc8e3c + 0x40`. Recovered values are respectively 6, 2, 2, 2, 30, 6, 45, 5, 45, 5, 30, 6, and 11. The callbacks for states `0x09` and `0x0c` also conditionally set bit masks `0x10` and `0x20` through the shared state-flag routine. These are observed numeric effects; the states' product meanings and period unit remain unresolved.

## User-observed ring modes

The following mode sequence and button/LED behavior were reported by the user from the physical ring. Treat this as hardware-use evidence; the numeric firmware state IDs and exact press-duration thresholds have not yet been matched to it.

| Order | User-visible mode | Reported behavior |
| --- | --- | --- |
| 1 | Clock | Default display. Holding the button enters brightness adjustment; a longer hold returns to clock. |
| 2 | Steps | Short press advances here; a small green LED lights. |
| 3 | Pulse measurement | No text label; a red LED lights. While measuring, the display progresses through `-`, `--`, `---`, and `----`. |
| 4 | SpO2 | Displays `SPO2`, then measures like the heart-rate mode. |
| 5 | Sleep | Displays `SLEEP`, followed by a display of the purported measured sleep duration; user has not used this feature. |
| 6 | Charge level | Battery level is indicated by the dash segments of the first digit lighting from bottom to top. |
| 7 | LCD off | Flashes `LCD` and `OFF`, then turns the display off unless the mode is switched; the user described the final long press as the way out. |

This sequence gives likely product labels for tracing state renderers, LED control and button handling. It does not yet identify which numeric state corresponds to each mode, and the pulse/SpO2 display similarity does not establish that both measurements are implemented or reliable.

### MVP hardware observations

The first ATC-SDK-derived MVP OTA image was flashed successfully and booted. The user observed this sequence:

| Page | Observed MVP output | Interpretation |
| --- | --- | --- |
| 1 | ATC counter | The inherited controller-tick display is not the product clock. |
| 2 | `00000` | Our steps placeholder rendered as intended. |
| 3 | Flashing `----` | Our pulse animation rendered as intended; no measurement is performed. |
| 4 | `heey` | Our bad SPO2 glyph bytes (`0x3a, 0x5b, 0x5b, 0x2e`) were read as this. |
| 5 | `hnEE` | Our bad sleep glyph bytes (`0x3a, 0x38, 0x5b, 0x5b`) were read as this. |
| 6 | Last-digit segments flash center, lower-left, both, then lower-right | Confirms segment bits `0x08`, `0x10`, and `0x20`; the MVP put this animation on digit 4 rather than the first digit. |
| 7 | `nE E` | Our placeholder LCD/OFF glyphs were wrong and did not alternate. |

The MVP source now uses approximations for `SPO2`, `SLEEP`, `LCD`, and `OFF`,
moves the battery segment pattern to digit zero, and alternates LCD/OFF. The
updated candidate has been rebuilt but its display changes still need a ring
flash and visual confirmation. This successful first flash demonstrates that
the ATC OTA path worked on this unit; it does not establish full firmware or
feature compatibility.

### Follow-up visual feedback from the corrected display build

The user reports the counter is unchanged, steps remain at zero, pulse dashes
still flash, and `SPO2` now reads correctly but its O should be lowercase and
the red indicator should be enabled. The sleep page reads `SLEE` (the final P
was placed in the far-right scan slot, which is not visible on this unit), and
the red indicator is lit during sleep when it should be off. The battery icon
is now on the first digit but its animation is still wrong; the desired bars
are bottom, then center, then top. The current source moves SLEEP into slots
0..4, uses lowercase `o`, and sequences first-digit bar masks `0x40`, `0x48`,
`0x49`. These are source edits only and need another flash to confirm. The
indicator LED control is still unresolved: the ATC pinout identifies all 13
display-matrix lines but does not label a separate red-LED pin, so the build
does not guess at an unverified GPIO. The zero step count is expected because
the MVP previously had no accelerometer driver or step classifier. The current
source now has an unverified I2C probe/read driver; the classifier remains
unported.

On the 1.938 hardware test, the clock face rendered correctly with a blinking
separator, but did not retain its time across firmware flashing and did not
appear to tick. The first-digit battery animation matched the intended pattern.
These observations establish a clock persistence/timing regression in the MVP;
the source uses an application RAM clock and flash context restore, so restore
and tick require a separate investigation. Revision 1.939 now slows the LCD/OFF
labels to about one second each and blanks the display after two full cycles;
that shutdown change is not yet flashed.

During the OTA test the user also observed `BLE 0` while connection was
starting, then `BLE 1` after connection, and `OTA` during image transfer. These
match the inherited ATC demo callbacks: the connect/disconnect handlers select
the BLE status pages, and the SUOTA start callback selects the OTA page. The
user subsequently restored the ring to stock successfully; the round-trip OTA
recovery path is verified on this unit, though the restore took a little while.

The display scanner at `0x7fc8c90` advances the digit index modulo six. On each wrap to digit zero it looks up the current state's render callback at table entry offset `+12`, lets that callback update the six-byte display frame, and then drives the next digit and segment pins. It tracks an elapsed counter with wrap correction `0x05000000`; its refresh callback gate is `((elapsed >> 2) > 0x7c)`. That recovers a roughly 500-unit update interval in the firmware's counter, but the counter's physical unit is not established. Brightness/PWM logic is also present in this function and has not yet been ported.

The state table's display callback mappings are:

| State | Renderer | Directly observed output behavior |
| --- | --- | --- |
| `0x00` | `0x7fca9d0` | Two two-digit values with a marker byte, or an all-segments pattern under a mode flag. |
| `0x01` | `0x7fcad54` | Step total from shared counter field `+0x38`, rendered as five digits with leading blanks and marker `0x40`. |
| `0x02` | `0x7fcac20` | Conditional three-digit value or status patterns. |
| `0x03` | `0x7fcacb8` | Writes a fixed marker and a pointer-selected pattern. |
| `0x04` | `0x7fcacd0` | Writes a fixed pattern and marker. |
| `0x05` | `0x7fcabb4` | Renders a status/range-dependent pattern. |
| `0x06` | `0x7fcaae8` | Renders status patterns selected from a quotient/remainder. |
| `0x07` | `0x7fca914` | Writes fixed letter-like patterns and mode indicators. |
| `0x08` | `0x7fcac7c` | Writes letter-like patterns selected by a status bit. |
| `0x09` | `0x7fca960` | Conditional three-digit value or status patterns. |
| `0x0a` | `0x7fca9b4` | Three-digit value plus marker `0x10`. |
| `0x0b` | `0x7fca84c` | Status-pattern composition based on a small mode field. |
| `0x0c` | `0x7fcaa68` | Conditional three-digit value or status patterns. |
| `0x0d` | `0x7fcaac8` | Three-digit value plus marker `0x10`. |
| `0x0e` | `0x7fcab3c` | Writes a pattern from a small status field and mode markers. |
| `0x0f` | `0x7fcaa4c` | Writes two letter-like patterns at mode-selected positions. |
| `0x10` | `0x7fca904` | Writes a fixed two-byte pattern. |
| `0x11` | `0x7fcace8` | Computes two values, renders two two-digit fields, and writes marker `0x48` between them. |
| `0x12` | `0x7fca89c` | Status-pattern composition based on a small mode field. |
| `0x14` | `0x7fcab78` | Writes a fixed pattern set selected by a state bit. |
| `0x15` | `0x7fca8ec` | Three-digit signed value with leading blanks. |

The table has no renderer for state `0x13` or states `0x16` through `0x23`. These are exact dispatch-table observations; no state has been assigned a guessed product name.

## Queued command dispatcher

`0x7fc25c4` drains records from a ring-buffer-like queue. Each record has one dispatch byte followed by 19 bytes copied into a local payload area; the routine dispatches on the first byte. This establishes the queue record shape, but not the upstream BLE framing or whether every record originated from the phone.

### BLE protocol evidence and integration status

The V204 binary's static ATT metadata identifies a six-attribute custom
service: the 128-bit service UUID `000056ff-0000-1000-8000-00805f9b34fb`, a
write characteristic `000033f3-0000-1000-8000-00805f9b34fb`, a notify
characteristic `000033f4-0000-1000-8000-00805f9b34fb`, and a `0x2902` client
configuration descriptor. The descriptor records show a 20-byte maximum for
both values, write access on `33f3`, notification access on `33f4`, and
read/write access on the CCCD. The decompiled JRing write helper calls
`BluetoothGatt.writeCharacteristic` without changing the characteristic write
type, so Android uses its default write-with-response path. The MVP now exposes
write requests on `33f3` without enabling write commands; its earlier profile
also advertised the unnecessary write-without-response capability. The
existing CLI independently confirms the directions by writing 20-byte records
to `33f3` and receiving notifications from `33f4`. The dispatcher consumes a
command byte and 19 payload bytes, matching that write shape. The V204 service
builder at `0x7fc5ab0` combines the `33f3` write permission with the ATT
write-request flag; it does not set the write-command flag. The MVP registers
the same write-request-only behavior through the SDK's
CUSTS1 profile, routes clock sync (`0x01`), scale settings (`0x02`), status
refresh (`0x03`), selfie toggles (`0x07`), and hour format (`0x1d`), and transmits the recovered
`06 02 00` event as a notification
on button press in selfie mode. The JRing app's decompiled `setHourFormat`
implementation sends a 20-byte `0x1d` command; V204 stores its first payload
byte at `+0x34`, which the clock renderer reads to enable 12-hour display.
Commands `0x01`, `0x07`, and `0x1d` echo their 20-byte write record. Command
`0x02` echoes its write, then emits type-`0x03` and type-`0x13` status records;
command `0x03` emits those status records without an echo. The rest of the
dispatcher and event queue are not ported. These responses follow the
the original dispatcher path through `0x7fc24c6`; this service implementation
has not been hardware-verified. The Renesas CUSTS1 profile expects an attribute
index in `CUSTS1_VAL_NTF_REQ.handle` and adds the service start handle itself.
The MVP previously passed an already-resolved ATT handle, which caused that
offset to be applied twice. The request now passes the `33f4` attribute index,
so the on-air handle is correctly based at the dynamically allocated service
start handle. The SDK CUSTS1 profile keeps CCCD values per connection, selects
subscribed links for notifications, and serializes pending notifications until
completion. The MVP has not yet been captured on air, so the integrated ATT database and notification sequence still need a ring-side check. The current build advertises the V204 128-bit service UUID alongside the SUOTA UUID; this makes its custom GATT service discoverable from scan data, but the packet still needs an over-the-air capture.

The MVP's ATC baseline `user_config.h` selects `APP_CFG_ADDR_PUB` (`0x00`): the
advertising configuration uses `GAPM_STATIC_ADDR`, and the device address type
is public. Privacy address rotation is therefore disabled in this build. The
linked SDK's `nvds_get` implementation returns the DA14585 OTP address when
nonzero and otherwise uses the compile-time `CFG_NVDS_TAG_BD_ADDRESS` fallback
bytes `10 00 F4 35 23 48` in SDK byte order (`48:23:35:F4:00:10` in conventional
notation). A normal OTA application flash does not rewrite that OTP identity,
so this configuration is expected to keep the same public address across
firmware flashes. A blank OTP can make devices share the fallback identity.
Startup logs the address returned by `nvds_get`; that confirms the SDK identity
source but is not an over-the-air capture. The user's two previously observed
addresses differ from the fallback. If the address shown by a scanner changes
between flashes, compare the actual advertising address and address type with
the startup log before changing the address configuration. Do not substitute a
guessed fixed address. V204's own address mode and fallback still need to be
confirmed from its runtime behavior or initialization data.

Observed command effects useful to a reconstruction:

| Dispatch byte | Observed behavior |
| --- | --- |
| `0x01` | Combines four payload bytes into a 32-bit value, updates timing/state records, and calls several time conversion and update routines. |
| `0x02` | Stores payload bytes 2 and 3 at context offsets `+0x89` and `+0x8a`; rounds the former up to the next multiple of ten, maps it through a scale table (default `0x3e`, special range endpoints `0x14` and `0x56`), stores the 16-bit result at `+0x36`, then queues the unchanged request through `0x7fc24c6`. MVP ports this setting and echo. |
| `0x04` | Sets a mode byte, clears a state word, sets a period-like field to `0x2800`, then reaches a shared update path. |
| `0x07` | Conditionally switches between numeric states `0x10` and `0x16`, based on a payload byte and whether current state is `0x10`. |
| `0x0a` | Stores a 32-bit payload value at an application-global offset. |
| `0x0b` | Sends a three-byte event using event ID `0x0b` and two values read from global state. |
| `0x0e` | Compares two pairs of 32-bit payload values against stored values, calls a common update, selects a small numeric mode, and calls `0x7fc43a4`. |
| `0x10` | Accepts an index below 7, clears/sets mode fields and derives a stored value from a base plus index-scaled data. |
| `0x12` | For a particular pair of payload bytes, transitions to state `0x0e`; then calls a record-copy/update helper. |
| `0x14` | Updates feature flag masks through `0x7fc3a38`; payload conditions may transition to state `0x09` and update a mode byte. |
| `0x15` | Updates flag masks and mode bits; one branch may transition to state `0x00`. |
| `0x16` | Processes a selected indexed data region, counts bit transitions, and stores the derived result; invalid/no-result path writes `0xff` into the local response buffer. |
| `0x19` | Stores several payload values and calls `0x7fc24c6`, which is also reached by other response/update branches. |
| `0x1b` | Stores a one-byte value at application-global offset `+0x12`; nonzero also calls an update helper. |
| `0x1d` | Stores its first payload byte at application-global offset `+0x34`. The clock renderer reads that field as its 12-hour display flag. The decompiled JRing app's `setHourFormat` sends command `1d` with the selected value. |
| `0x20` | Calls `0x7fc5230`. |
| `0x23` | Based on a payload byte and current state flags, updates a flag and transitions to state `0x00` or `0x0c`. |
| `0x25` | Constructs a response beginning with `0x25` and appends a computed 32-bit value. |
| `0x30` | Validates a 16-byte payload, erases a 4 KiB region beginning at `0x64000`, programs a 20-byte record there, then calls a zero-argument routine. The routine's reset/reboot behavior is not confirmed. |
| `0x43` | Calls `0x7fc3b40`, then a record-copy/update helper. |
| `0x48` | Changes a mode or allocates/enables a small per-slot object, depending on a payload flag. |
| `0x50` | Stores a payload byte and toggles one of two high-order feature masks. |

Many other byte values are accepted by the switch but are no-ops in this dispatcher, likely because they are handled elsewhere or reserved. `0x7fc24c6` is a thin wrapper around `0x7fc2f2c`, which queues 20 bytes; the parser's `0x25` response path and the transport are not yet tied together. The `0x30` branch appears to store a small record in flash, not to install firmware: the recovered flash helper distinguishes read, write and erase operations, while this branch erases one 4 KiB region and programs 20 bytes. Its payload meaning and final call remain unknown. The dispatcher itself does not reveal user-facing labels for the numeric states.

### Time conversion port status

Time synchronization is **partially ported**. In queued command `0x01`, payload bytes 1–4 form a little-endian 32-bit value; the V204 Thumb instructions assemble it in that order before passing it to `0x7fc9004`. The JRing app confirms the wire format: `BluetoothLeService.Y()` calls `ConvertUtil.a(I)`, which serializes little-endian, for command `0x01`. Before serialization, the app adds `TimeZone.getOffset(currentTimeMillis)` to the UTC epoch, so this adjustment includes daylight saving time. It also writes the raw timezone offset (`getRawOffset`) in hours at byte 5, but the recovered V204 command branch does not consume that byte. The firmware therefore converts and displays the supplied phone-adjusted local time. The calendar helper divides by 86,400 seconds/day and applies Gregorian leap-year corrections; its fields are seconds, minutes, hours, day, zero-based month, year since 1900, weekday with Sunday zero, and zero-based day-of-year. `v204_decode_epoch_le` and `v204_epoch_to_calendar` port the decode and conversion for the unsigned 32-bit timestamp range. The MVP accepts this command over `56ff/33f3`, advances the clock from the DA14585 BASETIMECNT, and displays two-digit hour and minute with a blinking separator. The `0x1d` setting selects 24-hour mode for zero and 12-hour mode for nonzero; V204 leaves hours 00–12 unchanged and subtracts 12 only for 13–23, which the MVP now matches. The SDK defines BASETIMECNT as a 27-bit counter in 625-microsecond ticks; the MVP uses matching modulo arithmetic and fractional carry.

The V204 sync path also compares the incoming calendar date with stored year/month/day fields. On the same date it compares 15-minute time buckets and invokes `0x7fc48a8` when the bucket advances. That helper is a measurement-history writer, not merely a clock refresh: it checks motion/measurement state and quality thresholds, maintains a 128-bit per-day interval bitmap, and stores a 36-byte record at `0x2e000 + day_slot*0x2000 + (interval-1)*0x24`. It also updates related cumulative counters and status records. The MVP does not yet produce the helper's sensor-quality and measurement inputs, so it must not emit synthetic interval records. On a date change, V204 conditionally clears a flag and counter when the unsigned timestamp delta exceeds 86,400 seconds, calls `0x7fc54f8` to erase the day's pair of rotating slots (`0x2e000 + slot*0x2000`, `0x4c000 + slot*0x3000`), clears shared measurement counters through `0x7fc4fa0`, then stores the new epoch and calendar. Separately, its main loop samples the RC16M oscillator against the BLE base counter: the recovered threshold `0xc7f` makes the interval 3,200 BASETIMECNT ticks (2 seconds), and a count difference of at least 24 triggers RF calibration. The DA14585 SDK already implements the same two-second RC16M sampling and 24-count RF calibration in `conditionally_run_radio_cals()`, called from its active BLE loop. The MVP ELF contains that function and `get_rc16m_count()`, so this behavior is provided by the SDK rather than missing from the port.

Phone time-sync date changes erase the selected history slots immediately and reset the reconstructed counters. When the date changes and the unsigned epoch delta exceeds 86,400 seconds, the command dispatcher also clears context `+0x44` and measurement-history state byte `+0x0e` in the object at `0x07fd1e28`; the MVP ports both clears. Natural midnight rollover follows the separate `0x7fc44a8` clock path: at 23:59:59 or during 00:00:00–00:00:59, V204 requires the unsigned current-epoch delta from a volatile marker to be strictly greater than `0x81` (129) seconds, updates that marker, erases the slot selected by `epoch + 0x1e` (30 seconds), and resets the counters. The MVP ports this independent guard and rollover operation from its one-second maintenance timer. A second branch in the same handler adds `0xffffd8b0` (-75600) to seconds-of-day modulo 2^32, accepts values through 60, and requires at least `0x78` (120) epoch seconds since another volatile marker. This is equivalent to seconds-of-day `75600..75660`; it clears context `+0x44`, updates its marker, and clears measurement-history state byte `+0x0e` in the object at `0x07fd1e28`. The MVP now ports that second guard, counter reset, and state clear. The same byte is read and assigned values 0, 1, or 2 by the unported `0x7fc48a8` history-record producer, so the MVP's reset behavior is ported but its measurement-history state machine is not. Sensor-quality and measurement inputs for that producer remain unavailable. The seven history slots cover `0x2e000..0x3bfff` and `0x4c000..0x60fff`; the SDK config declares a 1 MiB flash, and its SUOTA image bank begins at `0x18000` with a maximum image span of `0x14000`, ending before the first history range. The saved context block occupies `0x3c000..0x3dfff`, immediately after the first history range, so the ranges do not overlap. V204's calendar date fields are RAM-only, but the saved epoch in context `+0x30` survives reboot. When that block is valid, the MVP seeds its day tracker from the restored epoch; when erased, its date context starts at epoch day zero and the first modern phone sync rotates that day's slots. V204 additionally clears context fields at `+0x40`, `+0x48..+0x54`, `+0x68`, and refreshes type-`0x03`/`0x13` status records; the MVP serializes the known `+0x3c`, `+0x40`, and `+0x48` counters and emits both records for command `0x03` or rollover. The sensor/battery and feature-path context-save triggers remain unported. Sector erasure has compiled but has not been exercised on hardware.
