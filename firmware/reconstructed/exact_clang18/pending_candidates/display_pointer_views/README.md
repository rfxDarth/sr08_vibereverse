# Alice: display pointer-view conversions

Installed sources at 0xaa4c, 0xab3c, 0xab78 and 0xac7c are ordinary C without assembly
or register bindings. An annotation retains the intermediate digit-base
address; it supplies no instruction bytes. Canonical RAM objects are declared
as incomplete byte arrays. Struct-global declarations generate different code.

Native ac6 instructions match OEM except PC-relative literal loads. For 0xab78,
240 assignment-order/select forms (121 binaries) yielded the needed register
allocation with assignment order fifth, fourth, first, second, third. Search
tool and starting array-view candidate are retained here.

Optional `check_emulation.py` tests all 256 config-byte values per routine:
1024 cases match OEM RAM, synthetic flash and I/O under Unicorn. This does not
replace byte/pool acceptance gates or establish hardware behavior.

Full LTO does not preserve these annotated address forms. Its input bitcode
contains `llvm.annotation`; the specific later optimization pass responsible
has not been isolated. Probe option
`ac6lto ... --native SYMBOL` compiles selected C files without -flto, linking
their ordinary objects into the existing module for literal sharing. All
placement, fixed-context and full-byte checks remain required.

Two support issues were found:

- Wine winedevice processes inherited captured stderr. The linker had exited
  but Python waited for pipe EOF. Wine calls now capture diagnostics through
  temporary regular files and wait for the compiler. Focused success/failure
  regression tests need neither Wine nor SDK licenses.
- In an overlapping diagnostic link, a temporary copy from stub 0xacd0 landed
  at 0xace8 over the next stub's instructions. Load 0xa906 was redirected there.
  The validator read the next stub's original code instead of the copy. A helper
  now resolves named four-byte trailing copies by their owning ELF section and
  verifies their generated value tags. This ONLY requests the existing raw-load
  retry. Diagnostic links cannot return placements; a strict link must pass.
  Tests cover overlapping sections and reject unproven copy metadata.

Logs use `/tmp/sr08-alice-display-four-{lto,native-context,native-context-fixed}.log`.
Corresponding `...-artifacts` directories retain compiler evidence. The first
single-unit LTO wrapper was terminated after verifying its linker had exited
and Wine background processes held its pipe. Shared Wine processes and Jeff's
jobs were left running. Original log:
`/tmp/sr08-alice-display-ab3c-annotated-lto.log`.

All four are installed and fully verified. Final formatted standalone export:
`/tmp/sr08-alice-display-four-formatted-source-bundle`. Build log:
`/tmp/sr08-alice-display-four-formatted-standalone.log`; outputs use the same
stem. All 580 exported inputs match the workspace exactly; payload and complete
OTA container compare byte-for-byte equal to OEM. Inventory: 523 sections,
451 units, 79 direct / 85 expanded assembly units. Redundant installed-candidate
copies were removed; `check_emulation.py` reads the actual manifested sources.

Recheck the installed group with:

```sh
python3 probe_arm_group.py ac6lto \
  write_display_values_53_65_at_selected_offset \
  update_status_display_using_remainder_rom_at_ab3c \
  select_two_display_patterns_mode_flag_at_ab78 \
  choose_display_state_bytes_from_mode
python3 -m unittest discover -s tests
```

The probe automatically uses the installed native-unit configuration. Next
related candidates are the parked halfword/word display writers at 0xa904,
0xacb8 and 0xacd0; check current claims before picking one. Native similarity
or successful emulation alone remains insufficient to install a candidate.
