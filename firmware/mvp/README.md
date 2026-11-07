# SR08 MVP firmware candidate

This is a buildable DA14585 smoke-test image based on the ATC SR08 project's
SDK, startup, linker configuration, display GPIO map, button input, BLE demo,
and SUOTA path. It is intended as a first hardware test, not as a reconstruction
of V204. The target compiles `firmware/reconstructed/v204_core.c` and uses
its recovered number formatter and digit-scan helper. At startup it calls
`v204_motion_sensor_init()` from `v204_accel.c`, which configures the recovered
I2C bus, probes the sensor, and applies V204's register writes. A six-byte
sample-read function is available, but periodic sampling and step detection
are not connected.

## Build outputs

- `build/ring_mvp.ota.bin` — 64-byte ATC OTA wrapper plus the linked image.
- `build/ring_mvp.raw.bin` — raw linked application image, without the OTA header.
- `build/ring_mvp.elf` and `build/ring_mvp.map` — linked ELF and map for inspection.

Rebuild from the repository root with:

```sh
python3 firmware/mvp/build_firmware.py --version 1.939
```

The OTA wrapper follows `firmware/reconstructed/package_ota.py`. The image uses
the established header and checksum recipe. This sensor-init build has not been
flashed or run on a ring; compilation and packaging do not validate its I2C
transactions or boot compatibility on hardware.

MVP-specific BLE settings and profile callbacks live in `firmware/mvp/config/`.
The build uses the ATC checkout for SDK sources but places this overlay first
in the include path; the ATC project configuration is restored to its upstream
state.

Revision 1.939 slows the `LCD`/`OFF` alternation from about 0.5 seconds to
about 1 second per label, then blanks the display after two complete cycles
(about 4 seconds) unless the user changes mode. A button press after shutdown
returns to the clock page. This has compiled but has not been flashed.
Revision 1.938 clears measurement-history state `+0x0e` when command `0x01`
detects both a date change and an unsigned epoch delta above 86,400 seconds,
matching the dispatcher branch. The same byte is assigned states 0/1/2 by the
unported `0x7fc48a8` measurement-history producer; only the recovered reset
behavior is present, and the sensor-quality path remains unported. This build
has not been flashed.
Revision 1.937 ports V204's `0x77` guard: it clears context `+0x44` when the
unsigned adjusted time-of-day is in `75600..75660` and 120 seconds have elapsed
since its separate volatile marker, and clears the associated modeled state.
The associated `0x7fc48a8` producer writes states 0/1/2 but remains unported
with the sensor-quality path. This build has not been flashed.
Revision 1.936 ports the separate midnight rollover guard from V204's
`0x7fc44a8`: the check runs near midnight, requires an epoch delta greater
than `0x81` since its volatile marker, erases the history slot selected by
`epoch + 30`, and resets counters. The adjacent `0x77` guard for context `+0x44`
is documented in the following revision entry. The 46,560-byte 1.936 build
has not been flashed.
Revision 1.935 matches the volatile 51-second context-save guard: it starts
fresh after reboot and advances before an eligible flash-save attempt, as in
V204's helper. The build produced a 46,320-byte OTA image; it has not been
flashed. Revision 1.934 matches the command `0x02` response sequence: echo the write,
then emit the type-`0x03` and type-`0x13` status records using the new scale.
Revision 1.933 persists the known context fields through V204's flash block
when command `0x01` crosses a date or same-day 15-minute bucket, subject to the
recovered 51-second guard. It preserves unknown bytes in a restored context.
Revision 1.932 restores V204's saved epoch timestamp at boot and initializes
the running clock and day tracker from it. Revision 1.931 matches V204's
unsigned time delta for date-change counter reset and advances the running
clock before comparing a new sync. Revision 1.930 restores the recovered known fields from V204's saved context
block at flash `0x3c000` when present. Revision 1.929 ports command `0x03`
status refresh: it sends the recovered
20-byte type-`0x03` step record and type-`0x13` activity record on `33f4`, and
does not echo the request. Fields map to the current MVP counters; the
accelerometer classifier is still unported, so step and activity counters
remain zero. Startup now checks SPI flash address `0x3c000` and restores the
recovered saved context fields when the block is present.
Revision 1.928 ports command `0x02`: payload bytes 2 and 3 update the recovered
scale input and factor fields; the scale uses V204's round-up-to-ten lookup,
including its default mapping. The original 20-byte request is echoed. Revision
1.927 moved MVP-specific address, advertising, and profile callback settings
into the MVP config overlay and restored the ATC project config to upstream.
Revision 1.926 sends echoed replies only for the three implemented V204 commands
(`0x01`, `0x07`, and `0x1d`); unsupported 20-byte writes no longer get fake
echoes. The decompiled dispatcher queues those three requests unchanged, while
other paths can construct different status records. Revision 1.925 enforces
public-address mode at compile time. The 24-byte advertising payload includes
V204 `56ff`, HID `1812`, and SUOTA `FEF5`; the Android app's decompiled scan uses
an empty `ScanFilter`. The earlier MVP advertisement included HID and SUOTA
but omitted `56ff`; scanners can now discover the V204 service from the
advertisement. This ad payload compiles but
still needs an over-the-air ring capture. The DA14585 SDK moves `ATC_SR08` to
the scan response because the complete name does not fit beside both service
UUIDs in the connectable advertisement. Revision 1.923 ports the V204 long-gap counter reset: on an already-synced
clock, a date change with an unsigned epoch delta above 86,400 seconds clears
the recovered `+0x44` counter. Command `0x03` now exposes
the recovered status records over BLE, though motion counters remain zero
until the classifier is ported.
Revision 1.922 matches V204's daily reset set: it clears the visible total and
interval counters while preserving the `+0x2c` counter and report flag.
Revision 1.921 routes custom-service command replies using the connection index
from the write indication. Revision 1.920 also guards the public-address
configuration at compile time and matches V204's 12-hour rendering rule: `00` through `12`
remain unchanged, while `13` through `23` have 12 subtracted. The resulting
44,640-byte OTA image compiled and packaged successfully.

Revision 1.918 limits the V204 custom service's `33f3` characteristic to write
requests (write-with-response), matching the original descriptor builder and
JRing's Android write path. When the synchronized clock changes date, or passes
midnight, the app erases the matching pair of V204 seven-day history slots in
SPI flash and resets the reconstructed step counters. Its first modern-time
sync after boot treats the RAM date context as epoch day zero and rotates the
matching slot, as V204 does. Date-triggered flash erases have not been
exercised on hardware.

## MVP behavior and limits

The app retains the ATC project's proximity BLE profile and SUOTA receiver. A
ring was successfully updated and booted this build. The observed pages were:
ATC counter/tick, `00000`, flashing `----`, `heey`, `hnEE`, a bar animation on
the last digit, then `nE E`. These observations confirmed the display and
button loop worked, and exposed several incorrect placeholder glyphs and the
battery animation's wrong digit.

The first image's connection/status pages also displayed `BLE 0` while
connecting, then `BLE 1`, and `OTA` during transfer. The user then restored the
ring to stock firmware successfully. After testing the corrected display
revision, the user reports SPO2 reads correctly, SLEEP truncates to `SLEE`,
and the first-digit battery animation still has the wrong segment order. The
source now uses lowercase `o`, fits SLEEP into the first five visible digit
slots, and animates battery bars bottom-to-center-to-top on the first digit.
This latest revision has not yet been flashed for confirmation. The red
indicator control remains unresolved; the ATC pinout does not identify a
separate red-LED GPIO, so the source does not guess at a pin.

Steps, pulse, SPO2, sleep, and battery values remain placeholders. Revision
1.939 alternates the LCD/OFF labels at about half the previous rate and blanks
the display after two cycles; it has not yet been flashed.
Brightness adjustment, sensor measurements and their LEDs, and V204's HOGP
mouse/touchscreen input-event generation are not implemented. The MVP now
registers the SDK HOGPD service, serves V204's exact 146-byte report map, and
advertises HID, SUOTA, and V204's vendor service. Button/motion-to-report behavior remains unported.
The sensor probe/read code is untested on
hardware, and a successful probe will not move the step count until periodic sampling and the
V204 filter/classifier are ported. The MVP now adds V204's `56ff` service with
`33f3` write and `33f4` notify characteristics. It accepts the 20-byte time
sync command `01`, scale-setting command `02`, selfie-mode commands `07 01` /
`07 00`; in selfie mode a
button press sends the recovered `06 02 00` shutter event. The `1d` time-format
command selects 24-hour (zero) or 12-hour display mode (nonzero), matching the
V204 clock renderer: hours 13–23 are reduced by 12, while 00–12 are unchanged.
The MVP echoes these implemented 20-byte commands through
`33f4`, following the original dispatcher's common queued-response path. The
full V204 command dispatcher, event queue, and other notifications remain
unported. The
clock shows the phone-adjusted local time in the V204 two-pair layout. JRing
sends a little-endian Unix value after adding the phone's current timezone
offset; the ring ignores the extra raw-offset byte.
Elapsed time uses the DA14585 27-bit BASETIMECNT at 625 microseconds per tick,
with fractional-second carry and counter-wrap handling. The clock epoch and
recovered settings/counters are saved in V204's context block when a synced
date changes or a same-day quarter-hour bucket advances, subject to V204's
51-second guard, which resets at boot and advances when an eligible save is
attempted. This persistence path has not been hardware
verified. Clock synchronization, hour-format updates,
and display snapshots use short interrupt-masked sections so the BLE task and
display timer cannot observe a partially updated clock state.

The MVP overlay selects public addressing, and the SDK startup calls
`otp_hdr_get_bd_address()` to populate `dev_bdaddr` from the DA14585 OTP header.
`nvds_get(NVDS_TAG_BD_ADDRESS)` returns that OTP value when present, otherwise
the SDK's fixed fallback. The linked MVP ELF contains `dev_bdaddr` and no
`app_random_addr` symbol, consistent with the SDK's random-static address path
being compiled out. If the OTP address is blank, the SDK's
NVDS fallback byte array is `10 00 F4 35 23 48` in SDK order (normally shown
as `48:23:35:F4:00:10`); that fallback is stable across flashes but shared by
devices without provisioned addresses. The two rings' previously observed
MACs differ from it. Startup now logs the effective public address and labels
whether it matches the SDK default or is non-default; this SDK's address getter
uses the OTP value for a non-default address. This will make the next ring boot useful for
verifying identity stability. The current candidate has not
been flashed. It retains the ATC proximity profile and SUOTA alongside the
V204 vendor service and HOGPD input service; it is still not a complete V204
replacement.

## Hardware caution

The earlier MVP revision was flashed and the ring was returned to stock through
SUOTA, confirming recovery on this unit. The current revised image has not yet
been tested on-ring. Confirm that the target is the same hardware revision
before updating.
