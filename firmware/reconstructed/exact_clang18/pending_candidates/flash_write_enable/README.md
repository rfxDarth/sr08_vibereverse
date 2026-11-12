# Alice: flash write enable, 0x07fcbb38

SDK spi_flash_set_write_enable with spi_flash_write_enable inlined. Checks
initial readiness; sends WREN (6), waits, tests WEL (bit 1), returns 0 or -12,
or propagates the earlier readiness error. Shared API types are retained.

Installed candidate is ordinary C, native ac6. All 52 bytes of its fixed
region match including padding. Conditional compiler signal fence in the
WEL-error path plus annotation of the merged status preserve the common
return/register restore. Neither emits an ARM instruction. A fence alone
matches 44/52 bytes but sends the successful return backward to the early
pop. An annotation alone leaves the old duplicated tail (11-byte mismatch).
The combination is exact, with no branch hint needed; redundant hint/initial
annotation variants are retained with logs to avoid repeating tests.

No compiler flags, support code, guards, linker placements, shared headers or
Jeff source changes. Provenance and the SDK license reference remain in C.
See installed_native.log and probe_results.json. Complete standalone build
acceptance is recorded in verification.json: 507 sections / 449 units, 69
direct / 71 expanded assembly units. Payload and container directly equal OEM.
All 581 inputs match the current workspace, and six support tests pass.

A shared-header edit occurred during the first build (three unused named bytes
became padding). The first exported build was canonical, but its input proof
was stale for that header. A fresh export and full build against the current
header is canonical too; current_standalone_build.log and verification.json
are authoritative. Old proof records are explicitly named first_export_*.
Current artifacts: /tmp/sr08-alice-flash-wel-current.{elf,payload.bin,bin};
export: /tmp/sr08-alice-flash-wel-current-source-bundle.
