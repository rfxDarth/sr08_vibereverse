# Alice: SPI chip-select C conversion, 0x07fcbb94

SDK identity: `spi_transaction`, `spi_58x.c:713` in our own
`Tools/SDK_6.0.24.1464/sdk/platform/driver/spi/` tree. Select P0_3 if the
shared selection byte is nonzero, otherwise P0_0; assert CS, call
`spi_access(uint32_t)` and return its full uint32_t result after releasing CS.
Read selection again after the call, as the OEM does.

`installed_candidate.c.txt` is the cleaned native ARM6 candidate, exact across
all 48 bytes including alignment and literal words. The installed source is
`../../manual_sources/update_mode_dependent_output_state_during_flash_transfer.c`.
Its compiler registration is native ac6, outside either LTO module.

A plain ternary matches the region size but swaps the two saved constant
registers and reverses both branches (4 differing bytes). A conditional
compiler signal fence on the pin-0 path retains BNE, but making both masks
opaque swaps their registers (6 differing bytes). Annotating only the pin-0
constant gives the OEM register assignment. Deriving pin-3 from an opaque
pin-0 also matches, but the single-annotation form is simpler. Neither the
fence nor annotation emits a hardware instruction. No inline assembly,
register binding, binary patching, compiler flag sweep or guard relaxation.
The raw uint8_t view deliberately preserves OEM treatment of any nonzero
stored bool representation; no new bool range assumption is introduced.

`probe_results.json` records previous native probes. Branch-weight changes
alone did not solve the mismatch; moving the conditional fence to the false
branch and preserving the correct constant lifetime did. Sources and full
instruction diffs are retained to avoid repeating these experiments.

Accepted standalone build: 508 sections / 449 units, 70 direct / 72 expanded
assembly units. All 581 exported inputs match workspace; no V20*.bin is in
the bundle. Both the 67136-byte payload and 67200-byte OTA container directly
equal OEM V204. Six support tests pass. See `verification.json`,
`source_input_hashes.json`, `installed_audit.json` and `standalone_build.log`.
