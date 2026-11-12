# Official SDK provenance investigation

The local ATC tree identifies itself in
`Firmware_src/sdk/platform/include/sdk_version.h` as `v_6.0.22.1401`, with build
date `2024-03-07 17:18`. ATC's README specifies SmartSnippets Studio 2.0.20 and
uses `projects/target_apps/ble_examples/prox_reporter/Eclipse`.

This identifies the version ATC bundled, not the version originally used to
build V204. Nor does it establish ATC's exact download history.

## Primary Renesas sources

- Tools portal: https://www.renesas.com/en/software-tool/smartbond-development-tools
- DA14585 product/download page: https://www.renesas.com/en/products/da14585
- Official matching SDK download: https://www.renesas.com/en/document/swo/sdk60221401-da1453x-da145856
- SDK release notes SW-B-002: https://www.renesas.com/en/document/rln/da1453x-da145856-sdk-release-notes-v60221401
- Studio manual UM-B-057: https://www.renesas.com/en/document/mas/um-b-057-smartsnippets-studio-2020-user-manual
- Studio release notes: https://www.renesas.com/en/document/rln/smartsnippets-studio-2020-release-note

The DA14585 page lists SDK6.0.22.1401 (15.7 MB ZIP, 15 March 2024), with a
login-required download. Attempting the official link returned HTTP 403 in the
web tool; the official ZIP has not been acquired or compared with ATC's files.

UM-B-057 page 16 (printed pagination) explains that the SDK is downloaded and
unzipped separately, and Studio opens its root directory, containing sdk,
projects and config. Studio is therefore not the authoritative SDK package.

SW-B-002 page 4 identifies release 6.0.22.1401 and points to `doc/license.txt`
for SDK licensing. Page 8 records that SDK6.0.18 changed released Keil projects
to ARM Compiler 6 with LTO. This concerns project defaults, not proof that all
prebuilt libraries were rebuilt with that compiler.

## What to obtain and compare

Obtain the unmodified official 6.0.22.1401 ZIP first, preserving its license,
release notes and archive hashes. Compare `da14585_586.lib` member hashes with
ATC's copy before moving the build dependency to an upstream package location.
The product page also lists 6.0.20.1338, 6.0.18.1182.1, 6.0.16.1144 and older
releases. These are valuable binary-provenance candidates for V204: the one-byte
RF difference could be a release difference or a local modification; existing
evidence does not decide which. Newer SDK versions must not be substituted
merely because they are newer: complete canonical image parity remains required.

## Official archives supplied locally

The user supplied official SDK ZIPs 6.0.22.1401 and 6.0.24.1464 under Tools.
The 6.0.22 Keil DA14585/586 archive is byte-for-byte identical to ATC's copy.
The canonical build now uses the official archive under
`firmware/reconstructed/third_party/renesas_sdk_6.0.22.1401`, with its original
SDK license included in standalone exports. REA and Ghidra now reside under
`Tools/REA` and `Tools/Ghidra`. Tools is excluded from Git.
Both SDK archives yield 27 initial relocation-masked function candidates;
version-specific reports record ZIP and library hashes. Equal candidate counts
do not establish identical code.

## Member comparison and embedded compiler provenance

All ten members of the official 6.0.22 and 6.0.24 Keil DA14585/586 libraries
are individually byte-for-byte identical, despite differing whole-archive
hashes. See `sdk_member_comparison.json`. Neither package changes the RF
comparison immediate (SDK cmp r0,#15 versus V204 cmp r0,#1).

The original patch.o `.comment` section explicitly identifies ARM Compiler
5.06 update 7 (build 960), ArmCC. Its recorded command includes Cortex-M0,
Thumb, -O3, --c99, --library_interface=aeabi_clib and -D__MICROLIB. This is
direct compiler provenance for the SDK object. It does not independently
prove V204 application code used the same compiler. ARM Compiler 5 microlib
is now a concrete candidate for matching the reconstructed runtime helpers.

A direct RF-object link at 0x07fc16f8 resolves its three ROM calls and matches
275 of 276 bytes. The sole difference is cmp immediate at 0x07fc1796.
Functions rf_calibration_585 (84 bytes) and set_gauss_modgain (54 bytes)
match; their shared pool is also exact. Whole-member replacement is rejected
until matching regions can be linked without replacing the differing
enable_rf_diag_irq routine. No SDK machine code has been patched.
