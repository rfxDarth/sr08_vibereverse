# Historical reconstruction notes

> Archived progress log retained from the original README. Its counts and
> status statements describe earlier snapshots and may be stale. Use the
> current README, source manifest, and function catalog for current state.

## Superseded snapshot

The notes below record an earlier state of the reconstruction. Their counts,
raw-instruction totals, and statements about remaining work are historical;
see `README.md` for the current build, source-style inventory, and verification.

- 79 direct, single-range functions, 24 data-backed functions, and 363
  manually curated address-exact function sections: 466 manifest entries.
  Five additional discontiguous code chunks are linked at their own addresses,
  for 471 verified function sections total. Several manually curated sources
  use naked inline assembly, so this count measures emitted sections rather
  than recovered original C functions.
- 56,300 bytes across the verified function sections.
- 313 separately linked data sections covering 10,836 bytes. This includes
  307 generated classified-data objects plus six reserved typed-data objects.
  Literal-pool bytes already carried in function sections are excluded.
- Total: 784 non-overlapping sections and 67,136 bytes, or 100% of the
  payload. The flat payload has the same SHA-256 as the extracted source payload:
  `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`.
  Every linked section matches at its original VMA.
- The separate 64-byte SUOTA header is compiled from `data/V204_ota_header.c`.
  The complete 67,200-byte reconstructed container matches `firmware/V204.bin`
  byte-for-byte; both have SHA-256
  `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`.

All 471 linked function sections now have readable C identifiers; five are
split switch blocks outside the 466 primary source-manifest entries. The
instruction cleanup has replaced 20,513 of the 20,544 raw halfwords with
assembly mnemonics or symbolic calls, including 1,002 resolved `BL` pairs,
named calls to internal functions and ROM helpers, 2,166 relative branches
linked to local labels, 208 branches linked across split code sections, and five wide
system-register instructions. Nine `add rN, pc` encodings now use mnemonics;
31 raw words remain. All are PC-relative `ADR` encodings, kept as raw words
because the assembler can reinterpret equivalent-looking syntax. Their
decoded destination registers and target addresses are recorded in comments;
27 generated annotations can be regenerated with
`clarify_thumb_instructions.py --apply --annotate-address-calculations`.
These listings are easier to read, but most firmware
behavior still needs recovered C implementations and clearer parameter/state
descriptions.

Selected C-based routines with verified output include the bounded append
and terminator at `0x07fc1fa8`, queue-tail update at `0x07fc2f8c`, record flag
lookup at `0x07fcc494`, measurement-record update at `0x07fc5808`, measurement
lookup at `0x07fc5a6c`, current record-value lookup at `0x07fcba7c`, empty
record initializer at `0x07fc6540`, status-record builder at `0x07fc4110`,
transfer progress and status publishers at `0x07fcc3cc` and `0x07fcc3f0`,
the word-clear wait and five-eighths scaling helper at `0x07fc4440`,
sensor conversion at `0x07fc7308`, HardFault and NMI handlers at `0x07fc1d88`
and `0x07fc1df8`, peripheral-control initialization at `0x07fc566c`, state
and MMIO reset at `0x07fc9830`, control-bit update at `0x07fcaf60`, device
read/send wrappers at `0x07fc7f68` and `0x07fc8850`, radio profile check and
paired-byte scan at `0x07fc8680`, cache update and indexed table clear at
`0x07fc33a4`, Thumb handler registration and slot storage at `0x07fc20d4`,
record-flag-dependent state clamp at `0x07fc2da8`, conditional
display switch at `0x07fc549c`, handle release helpers at `0x07fc7526` and
`0x07fcbc2a`, and the wrappers that clear mode flags at
`0x07fc5f64` and `0x07fc5f70`. The two handle helpers share a checked struct
with the 32-bit handle at offset `0x10`. The queue helpers share a typed
five-word ring descriptor whose field offsets are compile-time checked.
`copy_ring_buffer_entry_if_index_available` at `0x07fc2fa4` uses that typed
descriptor in its signature and expresses the capacity check, wrapped index,
record address, and copy call in C. A two-instruction inline assembly block
preserves the wrapped-index destination register; the linked section matches
V204. `dispatch_measurement_record_type` at `0x07fc67f0` now takes a const byte
record and documents that it dispatches records whose
first byte is `0x12` or `0x13`. `populate_measurement_record_if_empty` at
`0x07fc5808` uses a checked six-byte measurement-slot struct with named
accumulated value, source value, and source count fields. The type-1 record
initializer at `0x07fc6540` uses a separate checked six-byte layout; byte one
is left untouched while the two halfwords at offsets two and four are cleared.
Eleven wrappers from `0x07fc8b20` through `0x07fc8bd0` share a macro for
writing fixed values to the shared halfword at offset `0x40`; each wrapper
retains its address-specific literal load. The conditional dash-state setters
at `0x07fc8b2c` and `0x07fc8b6c` share a second macro while keeping their
different flag masks and transition values. All thirteen sections remain
byte-identical.
The conditional display-state wrappers at `0x07fc3b40`, `0x07fc97ac`, and
`0x07fc97d8` likewise share one macro, with their distinct predicates and
target states supplied at each call site.

`submit_display_code_status_record` uses named fields for the type,
paired display-code state, code, value, and flags stored in the first nine
bytes. It retains the exact allocator, lookup, and submission sequence from
V204.

`submit_display_code_record_for_fd` builds the extended type-0x1b record using
the same shared header, zeroes its three trailing fields, and submits it. C
expresses the record and calls; one inline load preserves its allocator key
literal. Its linked bytes also match V204 exactly.

`initialize_measurement_for_enabled_slot` at `0x07fc66f8` now has explicit
32-bit context and slot parameters plus typed state-query and initialization
prototypes. It retains the original nested condition and return sequence.
`zero_word_buffer_by_byte_count` at `0x07fcd0ba` now expresses its word-zeroing
loop in C; two short inline-assembly statements preserve the original initial
zero register value and branch layout.
`configure_ring_s_display_sensor_control_registers` at `0x07fcb924` and
`set_ring_s_output_mode_and_enable` at `0x07fcbb6c` replace the remaining
placeholder names for these register-update routines; the output-mode helper's
callers now use its descriptive name.
`disable_interrupt_mask_0x8000_and_publish_control_state` at `0x07fc8c64`
uses named volatile register pointers and explicit DSB/ISB barriers before
clearing the control bit and publishing state.
`lookup_measurement_value_by_index` at `0x07fc5a6c` and
`match_measurement_index_and_write_offset` at `0x07fc5a88` now share a checked
range-prefix struct with the start value at offset four and count at offset six.
`publish_per_slot_state_byte` at `0x07fc31f8` uses a checked 44-byte record
layout for the state value and submitted flag at offsets `0x28` and `0x29`.
`initialize_state_and_return_one` at `0x07fcd990` runs the initializer at
`0x07fcd908` and returns one. It retains its short assembly wrapper because
Clang's C prologue saves `r7` as well as `lr`, unlike the original bytes.

The status waits at `0x07fc1f00`, `0x07fc1f10`, and `0x07fc1ee8` now have
names that encode the tested masks and polarity. Their wrappers pass status
registers, masks, and elapsed-time thresholds to the shared wait routine; a
single inline load where needed preserves the original peripheral-pointer
literal access.

`report_hardfault_context_and_halt` at `0x07fc1d88` now uses a typed context
argument and named volatile status registers. It reports the HardFault state,
writes the hardware status codes, then spins forever. Removing the unused
Ghidra typedef and macro preamble kept its linked bytes unchanged.

`handle_nmi_and_report_context` at `0x07fc1df8` names the NMI control and
pending-interrupt registers and its exception-context parameter. It preserves
the original status polling and NMI reporting sequence.
Both handlers now call `print_exception_context_to_uart` with a typed exception
kind and a pointer to the saved register context. The reporter's pinned Thumb
range remains byte-identical and is named for its UART output.

`initialize_peripheral_control_state` at `0x07fc566c` now names its control
registers and shared enable byte. `clear_shared_state_and_mmio_flag` at
`0x07fc9830` names the state word and MMIO register while preserving the ROM
service call and bit-31 clear.

`read_device_bytes_into_buffer` at `0x07fc7f68` and
`send_device_command_pair` at `0x07fc8850` now document their command, buffer,
and byte-count arguments. Both ensure the radio control word matches its
expected profile before using the shared FIFO helpers.

`configure_radio_profile_and_mark_state_ready` at `0x07fc8018` selects the
control byte from its mode argument, runs the profile scan and radio-state
configuration, then sets the ready field. The shared state helper at
`0x07fc82b0` clears its state flags, selects one of two profile-dependent
field-update paths, and sends command `0x6a` with value two.

`write_shared_state_byte_44_and_word_40` and
`write_shared_state_byte_45_and_word_40` name two fixed state writes at
`0x07fcacd0` and `0x07fcacb8`; both preserve the PC-relative state and data
literal loads.

`format_signed_state_byte_as_three_display_digits` at `0x07fca8ec` reads the
signed byte at state offset `0x95` and formats three digits into the shared
display buffer at offset `0x42`.

`read_sensor_conversion_result` at `0x07fc7308` now names the saved display
control word, conversion-control register, and returned sensor value. It
triggers the conversion, waits for its completion flag to clear, returns the
sample, and restores the previous display-control bits.

`set_control_bit_15_clear_bits_0_1` at `0x07fcaf60` documents the bit-level
update to the 16-bit control word at `0x50000012` while preserving its
original arithmetic expression and output bytes.

`decode_halved_offset_minus_112` at `0x07fcb962` now expresses the operation
in C and keeps one `SUBS #112` instruction because Clang otherwise selects an
equivalent but byte-different low-byte addition. `shift_unsigned_64_right` at
`0x07fc1b66` has a behavior-based name and named C parameters, but keeps its
short Thumb sequence because a normal 64-bit C shift on Cortex-M0 expands to a
runtime helper and exceeds the available function slot. `convert_unsigned_integer_to_float_bits`
at `0x07fc1b30` is now a typed C wrapper around the shared float normalizer.
Register-bound arguments and empty compiler barriers preserve V204's argument
setup and stack alignment; the emitted wrapper remains byte-identical.
`return_byte_length_nul_at_18f4` now uses a C pointer loop with register-bound
locals and an empty loop barrier to retain V204's pointer-walk instructions;
the full section matches byte-for-byte. `read_eight_bytes_from_rom_helper` at
`0x07fc045a` uses C for the repeated helper call, byte store, and counter
update, with an `asm goto` for V204's signed loop branch and empty register
barriers to preserve its register allocation and saved-register set. Its
20-byte section also matches exactly.
`round_v204_float_value_from_status` at `0x07fc1b88` now expresses the status
checks and value update in C. A small `asm goto` preserves V204's `BGE` encoding
(Clang lowers the equivalent C comparison to `BPL`), and two inline shifts
preserve the original low-bit clear sequence (Clang otherwise combines them).
The complete 16-byte function matches V204. Its behavior is checked against
the branch condition and both call sites.
`dispatch_callback_table_profile_4` at `0x07fc4144` is similarly named
for its role as an adapter to the shared callback-table dispatcher.

`scan_paired_bytes_until_lanes_are_at_8a54` now expresses the bounded pair scan,
terminator test, callback, and pointer updates in C. Two `asm goto` exits retain
V204's branch encodings; register-bound locals and empty compiler barriers
preserve its register choices and update ordering. The full section matches
byte-for-byte.

Most remaining functions still need equivalent C implementations and
per-function parity checks.

The adjacent `enqueue_ring_record_overwriting_oldest` wrapper at `0x07fc2ed6`
is now readable C using the shared five-word descriptor in
`firmware/reconstructed/include/sr08_ring_buffer.h`.
It retains a short `asm goto` for the `TST` operand ordering required by the
original bytes. `enqueue_ring_record_if_space` at `0x07fc2ea8` is also readable
C with a small `asm goto` for the same exact condition test; it calls ROM
`memcpy` and advances the head. These changes keep the whole image
byte-identical, including the SUOTA container, and the normal build succeeds
without reading the original `.bin`, raw payload, or analysis CSVs.

The name catalog identifies trivial constant-return and non-returning loop
bodies automatically, and includes manually checked behavioral names for
selected routines. Twenty-six behavior names were added for indexed state-field
normalization, indexed event-state dispatch, indexed-object initialization and
release, selector-based record
submission, cached-text record
initialization, peripheral setup and status polling, callback-table command
dispatch, variable-record byte update,
measurement-record append
preparation, random-suffix buffer
initialization, CRC-32 buffer updates, BLE record submission,
indexed measurement status storage,
timestamp-to-calendar conversion,
pending peripheral-operation dispatch, measurement-chunk completion,
three-byte sample-history processing, the two callback-mode range adapters,
the eight-byte ROM-helper reader, and packed-event dispatch to an indexed
record, sensor sample processing with conditional persistence, registration
data-transfer state machines, service-event dispatch and state updates, plus
starting and stopping sensor calibration. Ten more medium-confidence names
now cover peripheral initialization, measurement response construction,
attribute request validation, motion sample tracking, attribute-operation
completion, service control commands, attribute update events, sensor
peripheral setup, descriptor-driven register programming, and request-handler
lookup. There are now 13
low-confidence entries still labeled unclassified. Catalog
generation uses analysis CSVs; the checked-in catalog itself is the normal
build input.
`dispatch_service_event_and_update_shared_state` at `0x07fcc578` now uses
named local assembly labels for its record handler, response construction,
transfer reset, status update, periodic-record triggers, and common returns.
The branch encodings and linked section remain unchanged.

`process_ble_link_layer_event_payload` at `0x07fc08ba` checks link-layer event
and session state before constructing message records. One path reverses and
copies two 32-byte payload blocks; another fills a 32-byte block with `0xff`.
The exact Thumb transcription remains pinned while its role is documented.

`handle_per_slot_ble_data_record` at `0x07fc60ec` selects a slot from the
request's high byte, updates its fixed-size record for type 7, or initializes
slot state and emits a fixed notification for type 0. Unsupported types follow
the firmware's fatal loop.

`queue_computed_status_records` at `0x07fc50b4` builds and enqueues two
records: type 3 contains computed state values, and type `0x13` copies shared
status fields.

`process_incoming_data_fragment` at `0x07fc0bac` accumulates incoming data
fragments in per-channel buffers, updates their offsets, and dispatches a
completed record. Its fixed Thumb body remains instruction-pinned because the
original control flow and stack/register layout must be preserved exactly.

`compute_and_store_display_coordinates` at `0x07fcd0f0` derives two display
coordinates from measurement values and writes them into shared display state.
Its exact Thumb body remains inline assembly so the readable interface can be
improved without changing instruction bytes.

`update_measurement_display_and_mode_state` at `0x07fc7380` handles a
measurement result, its display state, and timer-based transitions. Its input
is the result mode, and the exact Thumb body remains inline assembly.

`validate_record_stream_fields` at `0x07fc0664` checks up to two bounded
record streams and rejects repeated tracked field tags. Its assembly body is
unchanged; the parameter types and roles are documented at the function
declaration.

`initialize_display_config_or_run_handler` at `0x07fc302c` creates the
display configuration on first entry, then dispatches its handler sequence on
later calls. It returns one when the sequence resets and zero otherwise.

`integer_square_root_newton_iteration` at `0x07fcd0c8` computes an integer
square root using the ROM division helper. Its exact Thumb implementation is
kept because the equivalent C currently compiles four bytes longer and with a
different instruction sequence.

`advance_sensor_cycle_and_toggle_mode_flags` at `0x07fcc8b0` updates the
sensor-cycle counters, toggles the shared mode flag on alternating cycles, and
calls its follow-up handler when enabled.

`process_indexed_response_and_release_buffer` at `0x07fc0a98` handles an
indexed pending response, releases any temporary storage, and clears its slot
pointer. The signature names the index used by its callers.

`clear_sensor_processing_history_tables` at `0x07fceef8` clears the sensor
processor's indexed history and working fields, restores its default value,
and returns one. Its caller is the full sensor-processing initializer.

`build_type_27_packet_or_set_fallback_state` at `0x07fc180c` copies two
reversed 32-byte slices into a type-`0x27` packet, validates it, and sets the
fallback state when validation fails.

`configure_interrupt_registers_and_optional_mode` at `0x07fc174c` writes the
interrupt-control registers with the original barriers, updates a peripheral
control halfword, and applies additional bits for mode one.

`FUN_07fc6fc0` is now represented across its 124-byte entry, 492 bytes of
case code, and 28-byte exit. Its two jump tables at `0x07fc703c` and
`0x07fc70b8` remain data. The function bodies are instruction transcriptions,
not recovered compiler-level C. Five missing case/return chunks from three
other split functions are also linked at their original addresses.

`FUN_07fc6dbc` is now represented across its entry, switch cases, and epilogue.
The switch-offset table at `0x07fc6e18` remains data; 380 bytes of computed
switch handlers occupy `0x07fc6e24–0x07fc6f9f`. Its entry block at
`0x07fc6dbc` and epilogue at `0x07fc6fa0` are linked as separate sections.

The 146-byte span at `0x07fc661a` is a further computed-switch body belonging
to `FUN_07fc65d0`; its branches return to the already linked blocks at
`0x07fc65fc` and `0x07fc66a6`. The adjacent 20-byte literal pool remains data.
Its 20-byte fault-loop handler at `0x07fc6600` is linked as code, and the
23-byte switch-offset table at `0x07fc65e4` remains data.

`FUN_07fc5fb0` now includes both omitted case ranges, 150 bytes at
`0x07fc5fca` and 116 bytes at `0x07fc6066`. Its six-byte offset table at
`0x07fc5fc4` remains data; the reconstructed blocks branch to its existing
default and return sections.

Two omitted blocks from `FUN_07fc7c88`, at `0x07fc7cea` (4 bytes) and
`0x07fc7cf6` (14 bytes), are linked as switch cases. The offset table at
`0x07fc7ce4` remains data.

`FUN_07fc76a0` is a complete 340-byte fixed-address transcription of the
record-boundary parser called by `FUN_07fc6fc0`. It follows the decompiler's
length checks, per-record bounds, marker-bit handling, and fault paths; the
two peripheral-address literals remain in their existing data sections.

`FUN_07fc8134` is a complete 356-byte fixed-address transcription of the
command-mode record configurator. It covers the six mode branches, shared
record writes, ROM timing helper, and final dispatch, and matches at its
original VMA.

`FUN_07fc6bf4` is a complete 432-byte fixed-address transcription of an
incoming-record handler. It validates the record, takes a special history
search path when indicated, builds an optional response packet, and sends the
final status record.

`FUN_07fc6a40` is linked across its 104-byte entry and 250-byte post-table
body. The 64-byte jump table between them remains data; the code routes parsed
record types to response construction and state updates.

`FUN_07fc5ab0` is linked as a 386-byte fixed-address Thumb transcription of
the service-information record builder. It iterates the shared five-word
record table, handles the terminal command, and submits the resulting record.

`FUN_07fc77fc` is linked as a 942-byte fixed-address Thumb transcription of
the multi-record packet builder and response handler. Its branches and calls
were checked against the Ghidra pseudocode; the section passes the V204 byte
comparison at its original address.

`FUN_07fc44a8` is linked as a 942-byte fixed-address Thumb transcription of
the main timekeeping and event loop. Its control flow was checked against the
Ghidra output, and its full section passes the V204 byte comparison.

`FUN_07fcdd68` is linked across four executable ranges totaling 3,592 bytes.
The 24-byte, 8-byte, and 50-byte gaps between these ranges remain separate
sections; the four code blocks pass the byte comparison at their V204 VMAs.

`FUN_07fc9da0` is linked across three executable ranges totaling 1,838 bytes.
Its 226-byte and 4-byte gaps remain separate; all three code blocks pass the
byte comparison at their original VMAs.

`FUN_07fc25c4` is linked across five executable ranges totaling 1,756 bytes.
The 116-byte, 36-byte, 16-byte, and 44-byte gaps remain separate; each code
range passes the payload comparison at its original VMA.

`FUN_07fc9104` is linked across three executable ranges totaling 1,554 bytes.
Its 20-byte and 44-byte gaps remain separate; all three code blocks pass the
payload comparison at their original VMAs.

`FUN_07fcb1b0` is linked across two executable ranges totaling 1,370 bytes.
The 56-byte gap remains separate; both blocks pass the payload comparison at
their original VMAs.

`FUN_07fcca68` is linked across two executable ranges totaling 1,162 bytes.
Its 28-byte gap remains separate; both blocks pass the payload comparison at
their original VMAs.

`FUN_07fc48a8` is linked across two executable ranges totaling 1,148 bytes.
Its 26-byte gap remains separate; both blocks pass the payload comparison at
their original VMAs.

`FUN_07fc98d4` is linked across two executable ranges totaling 1,042 bytes.
Its 186-byte gap remains separate; both blocks pass the payload comparison at
their original VMAs.

`FUN_07fcd9c8` is linked as a contiguous 914-byte fixed-address Thumb
transcription; it passes the payload comparison at its original VMA.

`FUN_07fcd4f8` is linked as a contiguous 910-byte fixed-address Thumb
transcription; it passes the payload comparison at its original VMA.

`FUN_07fcbc40` is linked as a contiguous 906-byte fixed-address Thumb
transcription; it passes the payload comparison at its original VMA.

Added `FUN_07fc20f0` (848 bytes), `FUN_07fc0e18` (784 bytes in two ranges),
`FUN_07fc1426` (624 bytes), and `FUN_07fc0bac` (620 bytes). The 28-byte gap
in `FUN_07fc0e18` remains separate. Every added code section passes the V204
byte comparison at its original VMA.

Added contiguous executable ranges for `FUN_07fc3584` (570 bytes),
`FUN_07fcd2dc` (530), `FUN_07fcec2c` (518), `FUN_07fc3ea0` (496), and
`FUN_07fcd0f0` (484). Each range passes the V204 byte comparison.

Added contiguous executable ranges for `FUN_07fc3838` (438 bytes),
`FUN_07fc8c90` and `FUN_07fc41e4` (424 each), `FUN_07fcc148` and
`FUN_07fc3b78` (418 each), `FUN_07fc7db4` (406), and `FUN_07fc8354` (400).
All pass the V204 byte comparison at their original VMAs.

Added ranges for `FUN_07fcc578` (360 bytes), `FUN_07fcc728` (330),
`FUN_07fc04fc` (328 across two ranges), `FUN_07fcadf8` (320),
`FUN_07fca64c` (304), `FUN_07fc08ba` (290), `FUN_07fc7380` (288), and
`FUN_07fc0a98` (276). The 32-byte gap in `FUN_07fc04fc` remains separate.

Added `FUN_07fceef8` (280 bytes), `FUN_07fc686c` (278), `FUN_07fc11f8`
(272 across two ranges), `FUN_07fc4d6c` (264), `FUN_07fc0664` (244),
`FUN_07fc5968` (242), `FUN_07fc60ec` (240), `FUN_07fcb980` (236),
`FUN_07fcc8b0` (228), and `FUN_07fc50b4` (224). The 34-byte gap in
`FUN_07fc11f8` remains separate. All sections pass byte comparison.

Recovered the remaining Ghidra-indexed executable ranges for
`FUN_07fc0274`, `FUN_07fc046e`, `FUN_07fc174c`, `FUN_07fc3a38`,
`FUN_07fc3ab0`, `FUN_07fc5c44`, `FUN_07fc5cbc`, `FUN_07fc5d34`, and
`FUN_07fcb0f8`. The 2-byte halfword at `0x07fc203e` is classified as data
padding and is linked with the adjacent Ghidra data unit. All payload bytes
are now represented in linked sections.

`FUN_07fc5294` is a signed radix formatter with minimum-width zero padding.
Its 152-byte Thumb implementation, including a call to the ROM divide helper,
matches the V204 payload exactly. As with other instruction-pinned candidates,
this is byte-exact C/assembly source rather than proof of the original C text.

`FUN_07fc1b98` performs significand normalization and sticky-bit rounding for
the software floating-point helpers. Its 114-byte Thumb section is retained in
a naked C function and verifies byte-for-byte against V204.

`FUN_07fc1988` performs software-float addition, selecting the larger exponent,
aligning significands, and dispatching normalization/rounding helpers. Its
162-byte Thumb section now matches V204 exactly, with both helper calls linked
at their original firmware addresses.

`FUN_07fc75d4` computes the display segment position from the active mode and
segment table. Its 204-byte Thumb section matches exactly, including the table
bounds checks, mode-dependent offsets, and bitmap tests.

`FUN_07fc077e` packs the key and input state, checks input validity, invokes
the firmware transform, and serializes its output. Its full 246-byte Thumb
section matches exactly, including the original 164-byte stack frame and all
three ROM helper call sites.

`FUN_07fcf014` computes the fixed-point normalized cross-correlation used by
the sensor pipeline. Its 262-byte Thumb section matches exactly, including the
loop bounds, stack-passed buffers, and ROM division calls.

`FUN_07fc532c` is the firmware's variadic format builder. Its 300-byte section
matches exactly, including va_list traversal, format dispatch, PC-relative
references to the percent and unknown-specifier strings, and calls into the
already matched string append and radix-format helpers.

`FUN_07fccf80` counts duplicate nonzero values in the sample array, selects
the three highest-frequency distinct values, and averages them through the ROM
divide helper. Its 298-byte Thumb section, including the random-buffer helper
call, matches V204 byte-for-byte.

`FUN_07fcb8d8` initializes several display/sensor registers and copies two
configuration halfwords from a shared structure. Its 46-byte Thumb section
matches exactly; its PC-relative loads resolve to the literal data already
present at the original firmware addresses.

`FUN_07fcb04c` scans 32 fixed-size records and dispatches records with three
special marker bytes through callback tables. Its 52-byte section matches
exactly, including the indirect callback dispatches and literal references.

`FUN_07fcb014` uses the same 32-record marker scan to invoke a callback with
two additional arguments. Its 54-byte section matches V204 exactly.

`FUN_07fc1904` walks the startup callback table, invokes each entry, then calls
the local thunk. Its 36-byte section includes the two address words used by
PC-relative loads and matches exactly. The build script now resolves indexed
function symbols referenced through `thunk_` aliases as well.

`FUN_07fc7358` scans the display mode table for an input identifier and returns
the associated display byte, or the fallback value if no entry matches. The
search and fallback are readable C; one inline assembly load pins the table
literal at its original address. The 36-byte section matches exactly.

`FUN_07fcb0a8` searches the 32-entry sensor record table by its low input byte
and returns the matched record's paired value, preserving the input's upper
24 bits. Its 38-byte section matches exactly.

`FUN_07fcb0d0` scans the same records by the marker byte and returns the
preceding halfword, also preserving the input's upper 24 bits. Its 38-byte
Thumb section matches exactly.

`FUN_07fc2568` initializes eleven words in a shared state structure. Its
current exact candidate preserves the target Thumb instruction sequence in a
naked inline-assembly C function because Clang's normal register allocation
does not reproduce the original sequence. It is included in byte coverage,
but it is not evidence that this routine's original compiler-level C has been
recovered.

`FUN_07fc0194` and `FUN_07fc20b4` now express the countdown and backward edges
in C, retaining their 10- and 11-NOP timing pads explicitly. The second loop
uses an empty register-tie asm so Clang keeps its unconditional edge through
the entry check.

`FUN_07fc2e6c` compiles its helper calls, 1,000-unit argument, and state value
flow from C; inline assembly pins the shared state-pointer load.

`FUN_07fc1a2a` initializes its high-bit mask in C and retains the exact shift,
XOR, and tail-branch sequence with small inline-assembly blocks.

`FUN_07fc3b58` builds its 20-byte stack record and dispatches it from C; its
register constraints preserve the target's stack layout across the ROM call.

`FUN_07fc5940` drains a linked record list and releases its state from C. Its
register constraints and `asm goto` preserve the target's loop test and call
order.

`FUN_07fc259c` initializes and dispatches a three-byte request packet from C;
the local structure and register constraints reproduce the target stack frame.

`FUN_07fc01b4` allocates and initializes a timing record, clamps a value from
C, and calls the associated helpers. Register constraints and `asm goto`
preserve its argument setup and compare sequence.

`FUN_07fc8c3c` uses an aligned-slot check, a retry from interval 100 to 400,
and converts the ROM helper's `r1` status into a boolean result. The helper's
status register and exact retry layout require inline Thumb assembly here; the
linked 40-byte section matches V204.

`FUN_07fcb770` reads two six-byte records and packs their byte triplets into
four output words. Its local buffer layout, helper calls, register ties, and
arithmetic compile from C to the exact 100-byte V204 section.

`FUN_07fc0874` allocates a four-byte-header response, optionally fills it with
random or point-multiplication output, sends it, and returns the input selector
in the high half of the 64-bit result. The SDK confirms `ke_msg_alloc` takes
four arguments; Ghidra's apparent trailing arguments are saved incoming
registers. The exact 70-byte section currently uses a naked Thumb transcription
because Clang C does not reproduce V204's argument-register save/restore layout.

`FUN_07fc1144` dispatches an L2CAP/SMP receive event based on task state and
PDU fields. The 70-byte target section includes a tail branch to a shared
epilogue outside its range; the exact naked Thumb transcription preserves it.
Clang's C translation is not byte-exact.

`FUN_07fc5848` searches the list at offset `0x10`, removes a matching record
when its stored length differs, and otherwise allocates, clears, links, and
copies the requested payload. The copy length is the third `__aeabi_memcpy`
argument, which Ghidra omitted in its pseudocode. The 98-byte section is
preserved as Thumb assembly because Clang's C register-save layout differs.

`FUN_07fc4fa0` clears seven words and two associated flags before calling
`FUN_07fc50b4`. Its C stores and call compile to the target sequence; constrained
inline assembly preserves the distant PC-relative literals, zero setup order,
and `r7` save. The linked 34-byte function section matches V204 exactly.

`FUN_07fcb080` searches at most 32 table records and returns a 32-bit field
from the matching record, or zero if no key matches. Clang emits its bounded
loop and comparison from C exactly. Inline assembly pins the initial table
literal and the target's return-address calculation; the linked 38-byte
section matches V204 exactly.

`FUN_07fc3dd8` negates a signed coordinate, copies three halfword values into
display state, then calls the update helper. C handles the signed value and
helper call; inline assembly fixes the target's halfword load/store order and
scaled register offsets. Its linked 40-byte section matches V204 exactly.

`FUN_07fc33e4` scans ten registration slots, saves an item in the first free
slot, and notifies the consumer with the one-based slot number. Its semantics
are recovered, but this exact candidate is a naked inline-assembly function;
the C compiler's loop transformations did not reproduce V204. It contributes
42 verified bytes without establishing source-level C recovery for this routine.

`FUN_07fc9858` scales a narrow input directly and routes larger values through
the ROM wide-multiply helper. Its multiplication, 64-bit shift, and return code
compile from C; `asm goto` preserves branch layout and inline loads reference
the shared global literal. The linked 38-byte section matches V204 exactly.

`FUN_07fc5070` emits a mode-change packet only when the state byte changes.
Its stack packet, byte extraction, early return, and two helper calls compile
from C; inline assembly fixes the two shared literal loads. The linked 60-byte
section matches V204 exactly.

`FUN_07fceeac` copies eleven input fields into the shared command record. The
field offsets and stores compile from C; inline assembly pins the shared literal
load, and register constraints preserve the target's stack-argument order. Its
linked 42-byte section matches V204 exactly.

`FUN_07fc5f38` returns a cached table value or creates and stores it on first
use. The C conditional, allocator call, cache update, and return match exactly;
inline assembly pins the table and allocator-argument literal loads and the
register sequence. Its linked 36-byte section matches V204 exactly.

`FUN_07fc54b4` loads and initializes the display state after two ROM drawing
calls. Clang generates the constants, calls, and remaining stores from C;
inline assembly retains the target's scaled byte-store encoding and shared
state literal load. Its linked 62-byte section matches V204 exactly.

`FUN_07fc5038` builds and submits a stack-local event packet after resetting
the matching sensor slot. C creates the 28-byte frame and record layout and
emits the packet fields; inline assembly pins the saved argument registers and
shared state literal load. Its linked 54-byte section matches V204 exactly.

`FUN_07fc5230` creates a stack-local request record, initializes its scratch
buffer through a ROM helper, sets the marker and two payload words, then passes
the record to `FUN_07fc24dc`. The C structure layout reproduces the target's
24-byte frame and field offsets; inline assembly pins the two shared literal
loads. Its linked 38-byte section matches V204 exactly.

`FUN_07fc2efc` checks and advances the queue head, calculates the selected
entry address, calls the ROM queue helper, and stores the updated head. Its
state logic and call compile from C; inline assembly preserves the three-load
order, complement/add ordering, and address calculation. The linked 44-byte
section matches V204 exactly.

`FUN_07fc54f8` makes two ROM conversions, captures the second helper's value
from `r1`, and calls the display-coordinate helper twice. Inline assembly
preserves that nonstandard `r1` return and the target's coordinate instruction
sequences; the helper invocations remain C calls. Its linked 50-byte section
matches V204 exactly.

`FUN_07fc3220` constructs a sensor request for one slot. The C implementation
preserves the saved slot index, calls the ROM record allocator, clears the
corresponding slot flag, sets the request bytes, and invokes the ROM publish
helper. Inline assembly fixes the two shared PC-relative loads and argument
setup; the linked 46-byte section matches V204 exactly.

`FUN_07fc2e1c` updates two settings fields, clears an associated mode field,
and conditionally calls a helper. Clang emits its argument saves, state writes,
comparisons, branches, and calls from C exactly. Inline assembly pins the
literal loads and the first store sequence; the linked 46-byte section matches
V204 exactly.

The manually curated sources and manifest for `FUN_07fcaa4c`,
`FUN_07fc33a4`, `FUN_07fc549c`, `FUN_07fc97d8`, `FUN_07fc9880`,
`FUN_07fccf38`, `FUN_07fc5808`, `FUN_07fc1f00`, `FUN_07fc1f10`,
`FUN_07fc20d4`, `FUN_07fc3b40`, `FUN_07fc5f80`, `FUN_07fc2ff4`,
`FUN_07fcd8a0`, `FUN_07fcebc4`, `FUN_07fc97ac`, `FUN_07fc1e60`,
`FUN_07fc2e6c`, `FUN_07fc2da8`, `FUN_07fcca2c`, `FUN_07fca904`, and setter
wrappers `FUN_07fc8b20`, `FUN_07fc8b48`, `FUN_07fc8b54`, `FUN_07fc8b60`,
`FUN_07fc8b88`, `FUN_07fc8b94`, `FUN_07fc8ba0`, `FUN_07fc8bac`,
`FUN_07fc8bb8`, `FUN_07fc8bc4`, `FUN_07fc8bd0`, `FUN_07fc4440`, and
`FUN_07fc33c0`, `FUN_07fc8018`, `FUN_07fc2e50`, `FUN_07fc8004`, and
`FUN_07fc8b2c`, `FUN_07fc8b6c`, `FUN_07fc1fd0`, `FUN_07fc6440`, and
`FUN_07fceedc`, `FUN_07fc72f0`, `FUN_07fc8584`, `FUN_07fc869c`, and
`FUN_07fc8680`, `FUN_07fcacd0`, `FUN_07fcacb8`, `FUN_07fcaf84`, and
`FUN_07fcbbdc`, `FUN_07fc5740`, `FUN_07fc677c`, `FUN_07fcba98`, and
`FUN_07fc7f94`, `FUN_07fc57b8`, `FUN_07fc66c0`, `FUN_07fc8a0c`, and
`FUN_07fc5200`, `FUN_07fcc118`, `FUN_07fc3a18`, `FUN_07fc31f8`, and
`FUN_07fc5654`, `FUN_07fcc9c8`, `FUN_07fcc9a4`, `FUN_07fc5484`, and
`FUN_07fc0194`, `FUN_07fca8ec`, `FUN_07fcad54`, `FUN_07fca9b4`, and
`FUN_07fcaac8`, `FUN_07fcbbc4`, `FUN_07fc31d4`, `FUN_07fc1a2a`, and
`FUN_07fc20b4`, `FUN_07fc1b3e`, `FUN_07fc1b66`, `FUN_07fcee94`, `FUN_07fc2fcc`, `FUN_07fc3564`, `FUN_07fc3e40`, and
`FUN_07fc4144`, and `FUN_07fc3e60`, and `FUN_07fc5db4`, and `FUN_07fc0758`, and `FUN_07fc1e70`, and `FUN_07fcbb38`, and `FUN_07fcbb10`, and `FUN_07fcd0c8`, and `FUN_07fcbb94`, and `FUN_07fccf5c` are in
`firmware/reconstructed/exact_clang18/manual_sources/` (originally
`firmware/reconstructed/candidates/`). Inline assembly pins the two shared
PC-relative loads in the first function, the base/index store encoding in the
second, and the shared-pool loads in the third, fourth, and fifth. The fifth
also fixes one commutative `adds` operand order. The sixth pins a halfword store
and pointer addition register order. The seventh sequences two volatile
halfword reads to preserve the target's order. The eighth and ninth use
PC-relative inline loads to reach a literal word shared by neighboring
functions. The tenth similarly preserves an external literal reference while
keeping the destination byte store in C. The eleventh preserves a distant
state-base load and lets C generate the byte test and conditional call. The
twelfth pins the literal load and PC-relative string address used in a call;
Clang generates the calls and argument setup. The thirteenth pins a distant
literal load; Clang generates the allocator setup and remaining record writes.
The fourteenth through seventeenth pin shared state-base loads and let C
generate their field reads, tests, and conditional actions. `FUN_07fc2e6c`
pins its full short Thumb body in inline assembly, including both calls and
the PC-relative state-base load. `FUN_07fc2da8` pins only its PC-relative state
pointer load; Clang generates its call, field read, comparisons, result
selection, and return from C. `FUN_07fcca2c` pins its shared-state literal
load and binds the state pointer and counter to their original registers;
Clang emits the updates, branches, and calls from C. `FUN_07fca904` pins the
two external literal loads and the byte offset register; Clang emits the
halfword store and return from C. The setter wrappers pin the shared state
pointer load and offset register; Clang emits the halfword assignments and
returns from C. `FUN_07fc4440` pins its two state loads; Clang emits the
polling loop and scaled return expression from C. `FUN_07fc33c0` pins its
final shared pointer load; Clang emits the call sequence and byte stores from
C. `FUN_07fc8018` pins its literal loads and final instruction order; Clang
emits the conditional value calculation, stores, and calls from C.
`FUN_07fc2e50` pins its state and timer argument loads; Clang emits its field
accesses and calls from C. `FUN_07fc8004` pins its two literal loads; Clang
emits the byte clear and call from C. `FUN_07fc8b2c` pins the flag and state
pointer loads; Clang emits the flag check, callback, halfword assignment, and
return from C. `FUN_07fc8b6c` pins its flag and state-pointer loads; Clang
emits the flag test, callback, halfword assignment, and return from C. The
`FUN_07fc1fd0` uses `__builtin_add_overflow` so Clang emits the target's
carry-check loop; two inline PC-relative loads preserve its data addresses.
`FUN_07fc6440` pins its initial arithmetic and shared-base load; Clang emits
the indexed byte store and return from C. `FUN_07fceedc` pins its state and
stack-argument loads; Clang emits the field stores from C. `FUN_07fc72f0`
pins its initial counter and shared literal load; Clang emits the copy loop
from C. `FUN_07fc8584` pins the two external loads; Clang emits the mask check
and both calls from C. `FUN_07fc869c` pins its two literal loads; Clang emits
the state updates and calls from C. `FUN_07fc8680` pins its two external
loads; Clang emits the masked check and both calls from C. `FUN_07fcacd0` pins
its data loads and offset register; Clang emits its byte and word stores.
`FUN_07fcacb8` follows the same C pattern with its own offsets and value.
`FUN_07fcaf84` pins one pointer load and the index register; Clang emits the
byte write and call. `FUN_07fcbbdc` pins its state load; Clang emits the byte
test and conditional call. `FUN_07fc5740` returns the CRC state consumed by its
caller. Its eight-iteration count and loop control compile from C; inline
assembly preserves the bit-step sequence and polynomial load. The polynomial
constant remains in the separately recovered data section at `0x07fc5758`.
`FUN_07fc677c` is a naked
C wrapper containing the recovered Thumb body; the linker resolves its
in-image and ROM calls while its constants remain in the existing recovered
data sections. `FUN_07fcba98` is a naked C wrapper for the recovered Thumb
MMIO transaction and poll loop; its literal load targets a pool already
included in the exact section at `0x07fcbb6c`. `FUN_07fc7f94` is a naked C
wrapper retaining the retry loop and its three
resolved calls. Its long PC-relative load reads the pointer literal at
`0x07fc832c`, already covered by a recovered data section. `FUN_07fc57b8`
retains the linked-list walk, MMIO error writes, and null-output polling loops
in an address-exact naked C wrapper. `FUN_07fc66c0` is a naked C wrapper for
the ROM status check, MMIO error path, and record dispatch. Its literal loads
resolve to recovered sections at `0x07fc66f4`, `0x07fc698c`, and `0x07fc6990`.
The final check links all sixty-two manually curated functions at their V204
addresses and compares every selected section against the payload.
`FUN_07fc8a0c` is reconstructed in C with three
inline PC-relative loads fixed to their original global literal addresses;
Clang generates the remaining calls, MMIO access, branches, and return exactly.
`FUN_07fc5200` is likewise generated from C except for two fixed loads that
read existing global literals; Clang emits its stores, setup, and helper calls.
`FUN_07fcc118` uses C for the helper calls, conversion, and error path, with
four inline Thumb instructions pinning its global MMIO loads and the ordering
of the second error-path load, constant setup, and store.
`FUN_07fc3a18` is also C-generated except for two PC-relative global loads;
Clang emits its helper call, byte/word stores, and return.
`FUN_07fc31f8` uses a volatile first field write and a short inline sequence
for the second write to retain the original store order and encoding. Clang
generates the helper calls and remaining arithmetic; its literal resolves to
the recovered section at `0x07fc321c`.
`FUN_07fc5654` is C-generated apart from its PC-relative base-pointer load;
Clang emits the indexed read/write, signed-byte conversion, comparison, and
clamp logic exactly.
`FUN_07fcc9c8` pins its two PC-relative global loads in inline assembly;
Clang generates the allocator calls, object initialization, and timer setup.
Its literal references are covered by the existing data section at
`0x07fcc9fe`.
`FUN_07fcc9a4` uses C for the compare, conditional helper call, result store,
and return; inline assembly preserves the literal-pool address calculation and
the original address-plus-store encoding.
`fill_buffer_with_32_random_bytes` writes 32 ROM-generated bytes to its
destination and returns zero. C expresses the byte loop and helper call;
asm-goto edges preserve the target's top-tested loop layout.
`FUN_07fc0194` uses C for the counted delay; asm-goto plus a NOP block and
conditional branch preserve the target's loop timing and instruction layout.
`FUN_07fca8ec` is C-generated apart from its two global-literal loads and
signed-byte access, which are pinned to preserve their shared-pool addresses.
`FUN_07fcad54` is C-generated apart from its two shared-pool loads; Clang emits
the state pointer arithmetic, helper call, and final byte update exactly.
`FUN_07fca9b4` uses the same wrapper shape: inline assembly pins its two shared
literal loads, while C emits the helper call and state byte update.
`FUN_07fcaac8` similarly pins its two shared-pool loads and leaves the helper
call and state update to C.
`FUN_07fcbbc4` uses C for its helper call; a compact inline block preserves the
conditional global byte clear and its exact register/branch sequence.
`FUN_07fc31d4` calls the timer helper from C; one inline Thumb block pins the
subsequent two global byte stores and timestamp write to their exact encoding.
A direct C version emitted two extra bytes and overlapped the next function, so
the exact stores remain together in Thumb while their offsets and purposes are
documented inline.
`FUN_07fc1a2a` is an 8-byte naked Thumb veneer: it flips the sign bit in `r1`
and branches to the shared floating-point helper without disturbing other
incoming registers.
`FUN_07fc20b4` is a counted delay loop; C sets up the argument while inline
Thumb control flow and eleven NOPs preserve the target's timing sequence.
`FUN_07fc1b3e` uses C for its threshold checks and variable shifts; inline
Thumb instructions preserve the bit-field extraction and signed comparison.
A direct C replacement for the extraction did not fit its 34-byte function
slot and overlapped the following routine, so the exact instruction sequence
remains while the branches and shifts stay expressed in C.
`FUN_07fc1b66` is a naked Thumb routine implementing the split-word 64-bit
right shift, with separate paths for counts below and above 32.
A straightforward C version compiled to 48 bytes and overlapped the next
fixed-address section; the V204 slot is 34 bytes, so the exact Thumb body is
retained until a smaller mixed C/Thumb version can preserve its layout.
`FUN_07fcee94` scans 100 signed bytes and returns their maximum as an unsigned
byte. C handles the signed loads, update, and loop; `asm goto` preserves the
target comparison operand order. A direct C loop compiled to 26 bytes for its
24-byte slot, so the explicit comparison branch is still needed.

The full source build now covers all payload bytes. The software routines
described here have readable behavior summaries, while some retain explicit
Thumb instructions where Clang's generated code differs from V204.

`FUN_07fc2fcc` checks two record bounds and conditionally calls a helper with a stride-scaled value. C expresses the condition, record accesses, callback arguments, and result; inline Thumb instructions preserve the post-increment load, arithmetic forms, and register allocation. Its 40-byte section now matches V204 exactly.

`dispatch_callback_table_profile_14` adapts five callback arguments to
the shared eight-argument table dispatcher. `dispatch_callback_table_profile_7`
and `dispatch_callback_table_profile_4` use the same register shuffle with
profile counts seven and four. `sr08_callback_table_adapters.h` now defines
that shared instruction sequence once; the three source files provide only
their profile and fixed section. The typed macro signature documents the key,
callback arguments, and result-byte pointer. The linked sections remain
byte-identical and preserve the original stack layout.

`update_state_bits_and_publish_empty_status` sets or clears selected bits in
the shared state word, then stores whether the result is zero to two status
bytes. The C parameters and locals name those operations; short inline Thumb
blocks pin the literal loads, register-specific bit operation, and state
store. Its 36 code bytes match V204, using already recovered literal sections.

`perform_flash_memory_operation` now has a typed buffer, flash address, byte
count, and enum operation selector interface. Comments in its fixed-address
Thumb body identify the read, page-program, and sector-erase paths. The routine
programs in 256-byte chunks and uses a 4 KiB erase unit. `erase_flash_range`
names the mode-two wrapper. The 496-byte operation body remains a Thumb
transcription while its control flow is being recovered into C.

`stage_and_program_flash_region_3c000` stages the source word in its RAM
buffer, erases the 8 KiB flash region at `0x3c000`, and programs the first
`0x70` bytes from that buffer.

`replace_state_timer_with_600_delay` releases the current timer slot saved at
state offset nine, registers the same callback with delay value 600, and stores
the returned slot ID.

The radio scan initializer now documents its state-byte updates and command
sequence. `exchange_one_radio_word` names the radio command transfer and its
status/error paths. Other newly named routines describe the float-bit to
integer conversion, delayed callback slot update, configuration defaults,
state-flag wait, and selector-253 variable-length list-record upsert.
`initialize_sensor_processing_state` names the large shared-state reset at
`0x07fcec2c`; its short veneer at `0x07fcee44` is labeled as the corresponding
reinitializer. `process_sensor_reading_and_update_state` identifies the
sensor-reading state machine at `0x07fc20f0` from its history scan, bounded
score calculation, threshold counters, and state publishing calls.
`initialize_shared_control_state_tables` describes the zeroing loops and
default fields in the initializer at `0x07fcd908`.
An all-C version of the 126-byte initializer compiled to 120 bytes with
different loop and prologue encodings. The exact Thumb body remains, now
annotated with the state-array offsets and entry counts.
The two code ranges of `dispatch_radio_state_action` now share one name in the
catalog, reflecting their common switch-based dispatcher at `0x07fc86b8`.
`apply_sensor_control_action` documents the action-specific setup branches at
`0x07fc8e58` without assigning undocumented measurement meanings to them.
The split ranges of `build_command_response_from_status` share one entry in the
catalog and describe the command-ID response fields at `0x07fca7a0`.
The split packet decoder at `0x07fc046e` now has range-specific source names;
its summary records the bounded payload length and fixed/variable copy layout.
The split record encoder at `0x07fc0e18` is named for its byte-copy path and
schema-driven field expansion, with its capacity and malformed-input return
conditions recorded in the catalog.
The ranges at `0x07fc04fc` and `0x07fc0608` share the name
`advance_buffer_cursor_and_publish_record`, describing the cursor thresholds,
progress callbacks, and published metadata record.
The two code ranges at `0x07fc11f8` and `0x07fc12e8` now share the name
`process_indexed_payload_state`; the catalog records their 16-byte copy paths
and state transitions.
`write_indexed_timing_record` also names the 16-byte indexed record used by
several scheduling call sites.
`initialize_control_registers_and_enable_irqs` records the MMIO writes and
barrier-protected interrupt-mask updates without guessing their higher-level
purpose. Its source now uses typed, named MMIO register pointers and explicit
barrier helpers; the routine still links to the original bytes.

`read_current_record_value_byte` now accesses the handle through the checked
`sr08_releasable_object` layout instead of a raw `+0x10` pointer read.
`read_record_flag_bit_zero` uses the checked `sr08_flagged_record` prefix for
its word at offset ten. Both changes preserve the emitted V204 bytes.

`conditionally_initialize_peripheral_and_schedule_service` names the
observable sequence at `0x07fc2e80`: test the peripheral status, optionally run
the initialization routine, set the pending flag, then invoke ROM service
`0x07f1bc0e` with selector `0x413`.

`log_message_with_code_17_and_enqueue_operation_one` documents the fixed
`%s,%d\n` format string and operation record emitted by the routine at
`0x07fc5f80`; its PC-relative format load and stack argument remain exact.

`FUN_07fc5db4` reads two halfword fields, sums them modulo 16 bits, and dispatches the result with the record address and helper-returned base. The call and remaining argument setup are generated from C; inline Thumb preserves the target load order and operand encoding. Its 34-byte function section links and matches V204 exactly.

`FUN_07fc0758` scans a variable-length byte record until it finds marker 1 or reaches the supplied limit, then returns the marker payload byte or zero. Its exact loop and return layout are retained in a naked C function with a short Thumb body; the 38-byte section matches V204.

`FUN_07fc1e70` is a restoring integer square-root routine. The decompiler lost its return type, but V204 leaves the computed root in `r0`; the reconstruction uses that return value and preserves the exact Thumb loop in a naked C function. Its complete 50-byte section matches.

`FUN_07fcbb38` drives the output-state sequence: it checks the current status, initializes two output modes, waits for the next state, and returns either zero or -12 based on the status bits. Its helper calls and status handling are C; `asm goto` retains the shared early-return path. The 50-byte function section matches V204.

`FUN_07fcbb10` polls the shared output-state count and calls the status helper until its low bit clears or the scan reaches the count boundary. The 34-byte body matches V204; the following return instruction is retained in the adjacent recovered data/code section at `0x07fcbb32`.

`FUN_07fc1d10` updates the selected 16-bit mode/status slot and its associated value. Its 46 instruction bytes are an exact Thumb transcription; the following NOP and MMIO literal remain in the neighboring recovered data section. The source linker verifies both sections at their original addresses.

`FUN_07fc1928` is a restoring unsigned 64-bit divider. It accumulates quotient bits in `r0:r1` and leaves the remainder in `r2:r3`. Its 96-byte naked Thumb body preserves the V204 multi-register stack save, helper calls, and carry/borrow sequence; the linked bytes match V204 exactly.

`FUN_07fc1a3a` implements the V204 software-float multiply path, with split-product rounding, normalization, signed-zero handling, and sign restoration. Its 122-byte Thumb body matches V204 exactly.

`FUN_07fc1ab4` implements V204's restoring single-precision divide path and calls the shared rounding helper. Its 124-byte Thumb body matches V204 exactly.

`FUN_07fcd0c8` iterates the divide-based integer-root estimate until successive estimates differ by at most one. The 38-byte naked C body preserves its V204 register allocation, early zero return, and ROM divide-helper call; the linked section matches exactly.

`FUN_07fcbb94` initializes two output-state halfwords from the current mode, invokes `FUN_07fcba98`, then sets the primary halfword. Its 38-byte section matches the shared literal references, helper call, and return sequence exactly.

`FUN_07fccf5c` sends a byte buffer through the memory-mapped UART. C expresses the transmit-ready and transmit-complete polls and data write; inline Thumb preserves the counter update order and compact encodings. Its 32-byte section matches against the existing UART-address literal.

`FUN_07fca9d0` updates the display's time fields and status marker. Its 114-byte fixed-address Thumb transcription was taken from the V204 disassembly and is included in the linked byte-for-byte check.

`FUN_07fcad78` performs the sensor freshness checks, requests a refresh when due, and publishes the resulting status. Its 106-byte fixed-address Thumb transcription is included in the linked byte-for-byte check.

`FUN_07fc8774` publishes selected sensor fields through direct and callback dispatches, then invokes the periodic service. Its 118-byte mnemonic Thumb reconstruction follows the V204 disassembly and matches in the linked byte check. A normal C translation has not yet reproduced the target's register allocation.

`FUN_07fc3148` formats a value into display digits using the ROM unsigned divide helper's quotient and remainder registers, then maps the digits through the table at `0x07fc31c0`. The 120-byte mnemonic Thumb reconstruction matches V204; several compact arithmetic encodings are pinned with individual `.inst.n` directives.

`FUN_07fc132a` copies and validates a fixed-size record, then dispatches its success or failure path. Its 106-byte Thumb reconstruction includes the tail branches to the shared epilogue at `0x07fc12c4`; it matches V204 byte-for-byte.

`FUN_07fc5dd8` allocates and fills either a short or full sensor record based on the incoming sample. Its 116-byte mnemonic Thumb reconstruction matches V204; a compact add encoding is pinned with `.inst.n` to preserve the target instruction.

`FUN_07fc4f34` advances the display interval, serializes it when the active state enables that path, sets the shared update flag, and calls the record builder. Its 106-byte mnemonic Thumb reconstruction matches V204.

`FUN_07fc24dc` searches and compacts a circular 20-byte record queue before dispatching the new record. Its 140-byte mnemonic Thumb reconstruction preserves the indexed loads, wrap-mask arithmetic, and ROM copy calls and matches V204 exactly.

`FUN_07fc118a` compares an incoming sample timestamp against the stored record. The in-range path updates and reports the record; the fallback path copies it and invokes the alternate handler. Its 110-byte mnemonic Thumb reconstruction matches V204 exactly.

`FUN_07fc1394` routes an incoming packet by status and sensor mode, updates timestamp fields when eligible, and otherwise invokes the mode-specific notification path. Its 146-byte mnemonic Thumb reconstruction preserves the tail branch into the shared return block at `0x07fc1170` and matches V204.

`store_item_in_first_free_registration_slot` now expresses its ten-slot scan,
empty-slot write, helper call, and zero-on-full result in C. Inline assembly
retains the literal load, zero-based counter branch and increment, pointer
advance, and byte-sized return/call operands needed for the original 42-byte
encoding. The isolated source-bundle build reproduces the complete canonical
payload and SUOTA hashes; the section is now classified as mixed C/assembly.

`copy_ring_buffer_entry_if_index_available` now keeps the queue capacity mask
and computed slot byte offset in separate C locals. The empty inline-assembly
constraint remains to make Clang reuse V204's `r4` register; the full payload
still matches its canonical hash.

`read_eight_bytes_from_rom_helper` writes directly through its output
parameter; the redundant `output_base` alias was removed. The isolated source
bundle and repository builds both retain the exact payload hash.

`advance_ring_s_queue_and_submit_entry` now passes its original `value`
parameter directly to the copy helper; the one-use `argument` alias was
removed. The isolated source bundle and repository builds still match the
canonical payload hash.

`enqueue_typed_operation_record` now writes its `uint8_t` input directly into
the byte field instead of widening it to `uint32_t` and narrowing it again.
The isolated source bundle and repository builds retain exact payload parity.

`update_indexed_delay_entry_if_changed` returns its `entry_index` parameter
directly, removing the saved copy without altering its 30-byte section.
`build_and_publish_compact_sensor_request_record` likewise passes `index`
directly to the second assembly block instead of using a saved alias. Isolated
bundle and repository builds retain the canonical payload hash.

`update_device_settings_record_run_conditional_at_2e1c` now uses its `value`,
`setting`, and `mode` parameters directly after the helper call, with no
intermediate saved copies. Its isolated bundle and the combined repository
build preserve the canonical image.

`transmit_uart_buffer` now advances the input pointer and decrements the input
byte count directly, removing the `next_byte` and `remaining_bytes` aliases.
An isolated source-bundle build retained the canonical image.

`copy_incoming_fields_fixed_shared_command_at_eeac` now uses the original
`tenth` byte parameter instead of a widened `saved_tenth` temporary.
`scale_value_directly_below_0x8000_use_at_9858` uses `value` directly in its
wide-multiply path instead of copying it to `saved_value`. Isolated bundle and
combined repository builds retain exact payload parity.

`read_current_record_value_byte` now returns directly for missing record and
value pointers, instead of threading a default-zero local through nested
conditions. The isolated source bundle and combined repository build remain
byte-identical to the canonical payload.

`c_countdown_loop_v204_timing_padding_at_20b4` now decrements its by-value
`count` parameter directly instead of copying it to `remaining_iterations`.
The isolated bundle and combined repository builds preserve the canonical
payload.

`emit_event_packet_when_active_mode_changes` now reuses the `mode` parameter
instead of a `saved_mode` copy. `allocate_stamp_release_and_clamp_timing_record`
likewise keeps and passes its original `argument` and `record` parameters
directly. Both isolated bundle builds and the combined repository build
preserve exact parity.

Clarified the C/assembly boundaries in `return_signed_byte_maximum_first_entries_at_ee94`,
`write_indexed_timing_record`, and `refresh_cache_then_clear_indexed_word`.
The comments now explain the signed scan, indexed timing record fields, and
shared-table clear while the exact Thumb instructions remain explicit. The
full payload and SUOTA container still match their references and canonical
hashes.

Removed the human-review function catalog from the standalone source bundle because it is not a build input. The resulting 538-file bundle builds without the original image, decompiler outputs, or analysis catalog and reproduces all 67,136 payload bytes with the canonical hash. The bundle README now identifies the omitted catalog and naming scripts as repository-only review tools.

A trial cleanup of `c_delay_loop_v204_timing_padding_at_0194` removed its `remaining_iterations` local and decremented the by-value parameter directly. The linked code then branched from the decrement to the delay body, skipping the original zero check on subsequent iterations; exact payload verification caught the difference. The original local was restored and the canonical build passed. Keep the local unless a replacement preserves the repeated zero check and exact branch target.

`write_indexed_timing_record` now passes the indexed type constant directly to the inline-assembly register constraint, removing the `indexed_record_type` temporary. Both the repository build and an exported 538-file standalone bundle reproduced the canonical payload; the bundle also emitted the canonical SUOTA container.

Applied the repository Clang format style to the 13 C translation units that were out of format. All 220 non-pinned C units now pass `clang-format-18 --dry-run --Werror`. The full repository build and exported 538-file standalone bundle both retain canonical payload parity; the repository build also matched the reference SUOTA container.

Replaced numeric local branch labels with descriptive labels in seven pinned routines: `crc32_update_one_byte`, `dispatch_fixed_size_records_by_marker`, `visit_selected_five_word_records_update_at_58ac`, `route_record_update_slot_state_two_at_6458`, `reproduce_sensor_record_allocation_out_range_at_6724`, `update_companion_mode_bits_and_notify_display`, and `fill_hardware_fifo_optionally_report_state_at_89b0`. The branch structure is now easier to follow while the assembled bytes remain unchanged. Repository and standalone-bundle builds retained the canonical payload and the standalone build emitted the canonical SUOTA container.

Continued the pinned-source label cleanup: `applies_pending_record_operation_item_while_at_d99c`, `allocate_initialize_record_first_use_release_at_3254`, and `clear_shared_flag_and_switch_to_state_zero` now use labels describing the inactive return, send path, and already-clear branch. Repository and standalone builds still reproduce the canonical payload; the standalone build emitted the canonical SUOTA container.

Named local branches in five additional instruction-pinned routines: `dispatch_through_seven_entry_callback_table`, `scan_bounded_record_range_until_callback_at_87f4`, `update_mode_bits_and_notify_display_service`, `clear_selected_slot_record_series`, and `set_pending_flag_while_preserving_caller_at_5260`. The labels identify callback iteration/default dispatch, bounded scan outcomes, mode-flag paths, indexed clear/fatal handling, and interrupt-mask restoration. Repository and isolated source-bundle builds remain byte-identical to the canonical payload, and the bundle emitted the canonical SUOTA container.

Named numeric branches in five additional routines: `replace_occupied_slot_newly_allocated_initialized_at_3410`, `allocate_attach_per_slot_record_not_at_98a0`, `clear_and_invoke_registered_callback_for_five_values`, `dispatch_batch_item_three_sign_extended_at_ee4c`, and `normalize_and_round_v204_software_float`. Branch labels now describe slot exits, allocation, callback bounds/results, item iteration, staged normalization, sticky-bit handling, and result packing. Repository and exported source-bundle builds retained canonical payload parity; the bundle emitted the canonical SUOTA container.

Replaced numeric labels in `select_fast_rom_write_allocate_initialize_at_575c`, `load_per_slot_record_emit_time_at_334c`, and `format_integer_radix_zero_padded` with labels for fallback allocation, one-time initialization, and formatter paths (sign, radix digits, padding, termination, and reversal). Both repository and isolated source-bundle builds retain exact payload parity; the bundle emits the canonical SUOTA container.

Named local branches in `dispatch_l2cap_and_smp_received_pdu`, `reverse_copy_two_byte_regions_record_at_1894`, and `search_circular_record_queue_insert_missing_at_2f2c`: they now identify protocol dispatch cases, each reverse-copy loop, and circular-queue scan/replace/enqueue/return paths. The full repository build and exported standalone bundle retain canonical payload parity; the bundle emitted the canonical SUOTA container.

Named numeric loop and exit labels in `quiesce_irq_source_wait_pending_bit_at_c4b0`, `wait_requested_status_mask_minimum_elapsed_at_8a78`, and `poll_state_nibble_clear_state_specific_at_1ea4`. The labels now identify IRQ/lock waits, status checks and elapsed-time gates, plus state-specific polling and flag updates. Repository and standalone-bundle builds still match the canonical payload, and the bundle emits the canonical SUOTA container.

Replaced numeric labels with named paths in `send_type_9_message_if_task_state_zero`, `temporarily_clear_hardware_flags_query_sensor_at_16f8`, and `wait_shared_timer_delta_exceed_requested_at_4458`. The names mark the fatal wait, hardware-flag restoration, lock polling, interval loop, and elapsed-delta check. Repository and standalone source-bundle builds retained exact payload parity; the bundle emitted the canonical container.

Named labels in `evaluate_two_mode_dependent_record_readiness_at_022c`, `validate_selected_record_state_return_readiness_at_01e8`, and `build_measurement_message_from_service_record`, clarifying mode groups, readiness outcomes, and measurement-code selection. Also replaced the `fun_07fc76a0_parses_variable_length_service_at_76a0` alias in its three callers with `parse_variable_length_service_record` and removed the alias definition. The repository and standalone bundle both reproduce the canonical payload; the bundle emits the canonical SUOTA container.

Named the local wait loop in `build_sensor_command_packet_acquiring_shared_at_519c`, and replaced numeric branch labels in `validate_stored_sample_against_latest_reading_at_5600`, `conditional_mode_updates_using_two_display_at_74a8`, `accumulate_two_timing_deltas_update_wrapped_at_8bdc`, `update_selected_hot_bit_associated_bit_at_1d44`, `update_status_display_using_remainder_rom_at_ab3c`, and `compute_display_segment_position_from_mode_table`. A first parity run caught one wrongly targeted named branch in the display-position routine; correcting the label restored an exact full-payload match. The standalone bundle also reproduces the canonical payload and container.

Named pinned assembly branches in `send_crypto_operation_result_message`, `accumulate_elapsed_units_store_quotient_remainder_at_97f0`, `dispatch_callback_for_record_types_26_fc_fd`, `sr08_block_transform_wrapper_packs_key_at_077e`, `serialize_measurement_record_by_mode`, and `multiply_v204_software_float_values`. Labels now describe selector paths, callback iteration, word packing/unpacking, serialization modes, zero/underflow cases, and ties-to-even rounding. Repository and standalone-bundle builds retain the canonical payload; the bundle emits the canonical SUOTA container. Four manual-source files remain in the numeric-label audit.

Replaced the last numeric local labels in `add_v204_software_float_values`, `divide_v204_software_float_values`, `compute_fixed_point_normalized_cross_correlation`, and `find_measurement_record_by_id`. Their branches now identify operand ordering, exponent/significand paths, quotient and rounding stages, correlation windows and zero-fill exits, record scanning, and fatal null-output waits. A full repository build and a fresh 538-file standalone bundle both reproduce the canonical payload; the standalone build also emits the canonical SUOTA container. The manual-source numeric-label audit now reports no remaining files.

Removed duplicate leading `Recovered behavior` comments from six manual C translation units, retaining each function-level summary. This reduces repeated prose without changing source logic; the repository build and a fresh 538-file standalone bundle both retain the canonical payload, and the bundle emits the canonical SUOTA container.

Removed three redundant pointer copies while retaining their register-allocation constraints: `nul_terminated_string_length` advances `text`, `scan_pair_table_until_terminator` advances `pairs`, and `write_display_values_53_65_at_selected_offset` advances `display_base`. Repository builds preserve the canonical payload, and a fresh standalone bundle reproduces both canonical payload and container hashes.

Removed the `record` copy in `drain_linked_record_list_and_clear_head`, using `record_argument` directly in the asm-goto loop. In `increment_character_by_ten_wrap_at_d`, supplied the shared-context offset constant directly to the register constraint and indexed the field with the named constant, removing a scalar temporary. Both changes preserve exact payload bytes; a fresh standalone bundle reproduces canonical payload and container hashes.

Replaced `timer_slot_index` with `HID_TIMER_SLOT_INDEX` directly in the scheduling helper and asm register constraint. Removed zero-valued locals from `refresh_cache_then_clear_indexed_word` and `clear_record_field_run_validation_helper_at_bbf4`, using literal zero register constraints instead. Each repository build preserved the canonical payload; a fresh standalone bundle also reproduced the canonical payload and SUOTA container.

Renamed `applies_pending_record_operation_item_while_at_d99c` to `apply_pending_record_operation_to_items_while_active` and `send_four_adjacent_field_updates_through_at_7fcc` to `send_four_adjacent_field_updates_via_callback`. The catalog, source filenames, manifest, linker references, and call sites now use behavior-based names without redundant address suffixes. Repository and isolated source-bundle builds reproduce the canonical payload.

Documented the exact inactive/empty-list return behavior and 8-bit wrapping loop counter in `apply_pending_record_operation_to_items_while_active`. A temporary ordinary-C rewrite in an exported source bundle compiled to 60 bytes (the original section is 38 bytes) and overlapped the following fixed-address data at `0x07fcd9c2`; it cannot replace the pinned body under the current Clang 18 build. The source comment records the truncation constraint. The checked-in source build remains canonical.

In `return_signed_byte_maximum_first_entries_at_ee94`, replaced the empty asm barrier used to initialize the loop index with an explicit `movs` output constraint. This keeps the original instruction order and signed-loop bytes while making the initialization visible in the source; the full payload remains canonical. The post-increment barrier remains necessary: without it, Clang changes the signed `blt` loop edge to `bne`. Removing both barriers also aliases the index with the running maximum and produces an incorrect indexed load.

A similar register-variable trial for `copy_ring_buffer_entry_if_index_available` did not preserve the original offset computation: Clang moved the mask/offset AND and multiply from r4 into r1, changing the section bytes. The existing allocation barrier is retained because it is the explicit constraint that currently reproduces V204.

Combined the two adjacent empty inline-assembly constraints in `convert_unsigned_integer_to_float_bits` into one statement with the shared `r2` zero input and `r4` clobber. This removes redundant scaffolding while preserving both register-allocation requirements; an exported source bundle and repository build both reproduce the canonical payload, and the bundle emits the canonical SUOTA container.

Replaced the empty zero-value constraint in `zero_word_buffer_by_byte_count` with an explicit `movs` output. This pins zero initialization before the branch-around-store check. A trial using a fixed-r0 C register variable moved initialization after the branch and changed the loop entry; the explicit instruction restores the original order and the canonical payload. Repository and isolated source-bundle builds both pass; the bundle emits the canonical SUOTA container.

Combined the adjacent initial register constraints in `scan_pair_table_until_terminator`: one empty asm now carries both the pair pointer and the initialized trip count. The later post-decrement constraint remains because it also constrains the pointer across the helper call. Repository and fresh isolated-source builds reproduce the canonical payload; the source bundle emits the canonical SUOTA container.

Combined the `r4` loop-counter initialization and `r6` saved-register clobber in `read_eight_bytes_from_rom_helper` into one explicit `movs` output constraint. This removes a separate empty clobber statement while keeping the original register save set and exact payload bytes. Repository and standalone-source builds reproduce canonical payload parity; the bundle emits the canonical SUOTA container.

Reformatted the constraint note in `find_variable_record_value_by_marker` to identify the pinned entry branch, offset update, and shared return path. The comment-only cleanup leaves the repository and source-bundle payload hashes unchanged.

In `crc32_update_one_byte`, replaced the empty post-decrement register barrier with an explicit `subs` constraint on `rounds_remaining`. The decrement is now visible as the target operation while the constrained loop counter and branch retain their original bytes. Repository and fresh source-bundle builds reproduce the canonical payload; the bundle emits the canonical SUOTA container.

Clarified the register barrier in `integer_square_root_restoring`: it keeps the subtraction result in r5 without clobbering the SUBS carry flags consumed by the next condition. Replacing the C subtraction with a `subs` inline-assembly constraint forced an extra `cmp`, grew the routine from 50 to 52 bytes, and overlapped the next fixed data section. The original C subtraction/barrier form remains; repository and source-bundle builds still match the canonical payload and container.

In `read_eight_bytes_from_rom_helper`, replaced the post-increment plus empty register barrier with an explicit `adds` output on the r4 counter. This removes the remaining empty asm statement from the helper and states the target loop operation directly. A temporary bundle matched the canonical payload before the edit; repository and fresh bundle builds still match the canonical payload, and the bundle emits the canonical SUOTA container.

In `copy_six_profile_bytes_from_offsets_two_to_seven`, replaced the C decrement plus loop-entry register barrier with an explicit `subs` on the `r1`-bound source offset. The fixed register variable alone preserves placement; an isolated source-bundle trial and the repository build both reproduce the canonical payload, and the bundle emits the canonical SUOTA container.

In `nul_terminated_string_length`, replaced the initial empty input constraint with an explicit `adds` output that sets the r2 length origin to `text + 1`. The remaining loop constraint is unchanged. A temporary bundle trial and both repository/source-bundle builds reproduce the canonical payload; the source bundle also reproduces the canonical SUOTA container.

In `nul_terminated_string_length`, replaced the C post-increment plus empty pointer constraint with an explicit in-place `adds` after the byte load. The operation order and register allocation remain exact; the repository and fresh source-bundle builds reproduce the canonical payload, and the bundle emits the canonical SUOTA container.

Combined the five initial constraints for the first device-byte read in `combine_two_six_byte_records_into_words` into one asm constraint after setting its offset, destination, and count. Isolated trials showed grouping the second-read constraints changes scheduling around the r5 buffer setup, so those remain separate. The repository and fresh source bundle reproduce the canonical payload; the bundle emits the canonical SUOTA container.

In `return_signed_byte_maximum_first_entries_at_ee94`, replaced the final index-allocation barrier and C condition with an explicit asm-goto `cmp`/`blt` loop edge using the named 100-byte scan limit. This removes the function's last empty asm constraint while retaining C control flow for the maximum update and result. Repository and fresh source-bundle builds reproduce the canonical payload; the bundle emits the canonical SUOTA container.

In `c_countdown_loop_v204_timing_padding_at_20b4`, replaced the C decrement and empty counter constraint with an explicit `subs` on `count`. The 11-NOP timing pad and explicit back edge remain intact. An isolated bundle trial, repository build, and fresh source-bundle build reproduce the canonical payload; the bundle emits the canonical SUOTA container.

In `write_display_values_53_65_at_selected_offset`, replaced the C pointer increment plus empty register constraint with an explicit `adds` using the named `DISPLAY_PAIR_OFFSET`. The second display write remains in C. Isolated trial and repository/source-bundle builds reproduce the canonical payload; the bundle also emits the canonical SUOTA container.

In `scan_pair_table_until_terminator`, replaced the post-callback decrement and empty counter barrier with an explicit `subs` while retaining `pairs` as the input constraint used by the original allocation. Repository and fresh source-bundle builds reproduce the canonical payload; the bundle emits the canonical SUOTA container.

In `allocate_stamp_release_and_clamp_timing_record`, replaced the empty multi-variable barrier with explicit `r4` and `r6` register locals for the argument and record pointer. The returned PDU remains in `r5`; this makes the values that must survive helper calls explicit. Isolated trial and repository/source-bundle builds reproduce the canonical payload, and the bundle emits the canonical SUOTA container.

Renamed `copy_incoming_fields_fixed_shared_command_at_eeac` to `copy_incoming_fields_to_shared_command_record`, matching its field-layout writes and removing the redundant address suffix. The catalog, filename, manifest, linker references, and call sites now use the behavior-based name. Repository and isolated source-bundle builds reproduce the canonical payload; the bundle emits the canonical SUOTA container.

Renamed `scale_value_directly_below_0x8000_use_at_9858` to `scale_value_by_threshold_specific_factor`. The new name describes the narrow/wide multiply paths without exposing a source address as part of the routine's identity. The catalog, source filename, manifest, linker references, and caller now use the clearer name; repository and source-bundle builds reproduce the canonical payload and container.

Renamed `copy_scaled_payload_slice_on_mask_hit_at_2fcc` to `copy_scaled_payload_slice_when_mask_hits`, describing the descriptor mask gate and selected-slice copy without an address suffix. The catalog, source file, manifest, linker references, and call sites were updated; repository and source-bundle builds reproduce the canonical payload and container.

Renamed the two dash-state dispatch helpers to expose their actual bit pairs: `dispatch_transition_0x10_when_control_0x01_clear_then_set_dash_state` and `dispatch_transition_0x20_when_control_0x02_clear_then_set_dash_state`. The names distinguish these near-identical handlers without address suffixes. Catalog, filenames, manifest, linker references, and callers are updated; repository and source-bundle builds reproduce the canonical payload and container.

Made `map_elapsed_ticks_to_firmware_time_units` easier to audit by naming its result offsets and shifted range limits in the inline assembly, and annotating the shared-state read and each piecewise interval. This remains an instruction transcription, not a C reconstruction; the change improves the source explanation without claiming semantic recovery. The repository build still links all 815 sections and reproduces the canonical 67,136-byte payload hash.

Documented the register-allocation barrier in `copy_ring_buffer_entry_if_index_available`. Replacing it with an explicit `r4` register variable changed the canonical payload hash, so the empty operand barrier remains necessary under the pinned Clang 18 build. The failed trial was reverted; this note records the compiler constraint rather than treating the barrier as redundant.

Trialed a C loop for `retry_radio_command_until_status_0x27`: ten command/wait/exchange attempts, status storage, and success return. Clang 18 emitted 56 bytes for its 54-byte fixed slot, overlapping the next data section; fixed-register-variable variants grew further. Restored the verified Thumb source. The behavior is clear, but this compiler and layout need a mixed C/assembly form before a C body can fit without changing the image.

Added the checked `sr08_variable_length_record` layout for nodes found by `find_measurement_record_by_id`: typed next-node pointer at offset 0, ID at 4, value length at 5, and payload at 6. The assembly comments now identify those fields by name during the list walk and returned-payload calculation. The direct build reproduces the canonical payload, confirming the type and comments add no emitted bytes.

In `convert_unsigned_integer_to_float_bits`, replaced the empty input-only barrier with an explicit `movs` output that initializes the fixed `r2` zero argument. Kept the `r4` clobber that preserves the original aligned save set. The function's object disassembly is unchanged and the repository build reproduces the canonical payload.

In `scan_pair_table_until_terminator`, replaced the empty pointer/counter constraint with locals explicitly bound to the original `r4` and `r5` registers. An `asm goto` keeps the counter check at the loop head; the pointer input on the explicit decrement remains because removing it reordered the decrement and pointer update. The resulting section disassembly matches V204, and the repository build reproduces the canonical payload.

Typed `wait_requested_status_mask_minimum_elapsed_at_8a78` as returning its preserved first argument in `r0`. `wait_for_any_status_bit_or_elapsed_200` now returns that call directly instead of extracting the result through an empty output constraint. Other call sites ignore the return as before. The repository build reproduces the canonical payload.

In `copy_incoming_fields_to_shared_command_record`, replaced the empty input-only barrier with explicit stack loads for the sixth, seventh, and tenth arguments into `r7`, `r6`, and `r5`. The C assignments then consume those named register outputs. A trial using register variables initialized from the C parameters changed the save set; the explicit loads retain the exact original section, and the repository build reproduces the canonical payload.

Tried a size-optimized C form of `upsert_variable_length_list_record` using the checked variable-record type. The candidate occupies 98 bytes, but its normal C frame saves `{r3,r4-r7,lr}` and uses payload stack offsets `0` where V204 saves `{r1-r7,lr}` and uses offset `8`; bytewise comparison confirms those four bytes differ. Inline `asm goto` can preserve the two comparison encodings but cannot make Clang emit V204's caller-register save frame. Retained the exact Thumb implementation and annotated its node ID, length, and payload accesses with the shared field names.

Combined the two identical `input >= trial` branches in `integer_square_root_restoring` so a single C condition updates both the remainder input and root. Clang 18 emits the same SUBS/CMP/branch sequence and the exact 50-byte section; the repository build reproduces the canonical payload. The carry-preserving result constraint remains necessary.

Removed all five empty register-allocation barriers from `combine_two_six_byte_records_into_words`. Fixed-register locals now name the two stack buffers, six-byte count, and helper argument registers; the exact 100-byte section disassembly remains unchanged. The repository build reproduces the canonical payload.

Removed the final operand barrier in `copy_ring_buffer_entry_if_index_available`. The tail-plus-index addition and capacity-mask operation are now explicit inline instructions over fixed `r1`/`r4` values; `r4` carries the wrapped slot offset into the scaling step. The section disassembly matches V204 and the repository build reproduces the canonical payload.

Checked whether `reinitialize_sensor_processing_state` could drop its `r4` clobber. Clang retained the aligned two-register frame but changed it from V204's `{r4,lr}` to `{r7,lr}`, changing the wrapper bytes. Restored the clobber and documented its frame-preservation purpose.

Renamed five C/mixed-C helpers to remove address suffixes and describe their effects: `reset_mode_state_and_publish_status_records`, `update_device_settings_and_timeout_if_value_low`, `clear_attribute_record_field_validate_or_halt`, `set_pending_flag_if_status_bit_7_clear`, and `flip_sign_bit_and_tail_call_float_add`. The catalog, manifest, source filenames, linker symbols, and call sites were propagated through the rename tools; instruction bodies were unchanged.

Renamed `return_cached_value_allocate_cache_table_at_5f38` to `get_or_allocate_cached_message_buffer_for_index` and `return_signed_byte_maximum_first_entries_at_ee94` to `find_signed_byte_maximum_in_first_100`. Their names now describe the indexed allocation/cache behavior and signed scan; the rename tools propagated both through source, catalog, manifest, linker, and callers.

Renamed the two radio-profile wrappers from address-based labels to `apply_device_state_radio_profile` and `restore_radio_profile_before_command`. Their caller groups distinguish the profile used during device/motion state processing from the profile used to recover command readiness. Named both fixed profile addresses in the shared device-register header; descriptor bytes remain in the existing byte-preserving data object.

Added the checked 16-byte `sr08_peripheral_register_profile` layout for the record consumed by `program_peripheral_registers_from_descriptor`. Typed the function's otherwise ABI-identical pointer and annotated assembly loads with the corresponding field and destination register. Selector semantics that are not established by the code remain explicitly unnamed. The normal build still matches the canonical payload hash.

Recovered the exact behavior of the record transform at 0x07fc1894: tag 0x2026 gates two in-place reversals over offsets 12..43 and 44..75, after which the P-256 start routine is called unconditionally. Renamed the entry point and documented the loop ranges. A straightforward C rewrite compiled to 92 bytes, ten bytes larger than the 82-byte slot and overlapped the next literal data; it was discarded, leaving the exact Thumb body in place.

Retried `find_variable_record_value_by_marker` as structured C with the recovered length-prefixed-record semantics. The compiler folded the zero-limit case into an early branch and generated a 36-byte body rather than the original 38-byte range; pinning the offset and result to registers made the frame larger and the body shorter still. Both candidates were discarded. The pinned implementation remains because it preserves the original entry order, 16-bit offset wrap, and shared return path.

Replaced the final opaque PRIMASK compare/return assembly block in `set_pending_flag_if_status_bit_7_clear` with C `if` control flow and explicit C returns. The two short inline-assembly tails now contain only the required `msr primask` instruction; Clang emits both `bx lr` instructions and the original branch layout. The complete payload hash remains canonical.

Removed the remaining `goto` in `set_pending_flag_if_status_bit_7_clear`: the pending-bit update now sits inside a structured C condition testing status bit 7. Clang retains the original `lsl`/`bmi` branch and the payload hash remains canonical.

Simplified the status test in `set_pending_flag_if_status_bit_7_clear` from an explicit sign-bit shift/mask expression to `(status[0] & 0x0080u) == 0`. Clang still emits the exact original `lsl`/`bmi` sequence and the canonical payload hash.

Rewrote the six-byte profile copier's infinite loop plus early return as a `while (source_offset != 1)` loop. The register-bound decrement remains explicit assembly; the structured C loop emits the same section and preserves the canonical payload hash.

Reworked `find_keyed_record_value` to express its 32-record scan as a pre-decrement `while` loop and its volatile key load plus 24-byte record advance as C. Those changes retain the exact section bytes. A trial replacing the matched-value address calculation with direct C pointer arithmetic shortened the fixed section by ten bytes, so the original arithmetic transcription remains for that calculation.

Replaced both explicit register increments in the registration-slot scan with C pointer and counter increments. A zero-byte asm barrier consumes the updated pointer and current index to keep V204's pointer-before-counter order; without it Clang schedules the independent updates in reverse order. The complete payload remains byte-identical.

A trial replacing the inline `adds`/`str` in `update_indexed_delay_entry_if_changed` with `record->timing_value = timing_value` left two uncovered payload bytes in the fixed layout. Restored the instruction adapter; the C assignment does not fit this section under the pinned compiler.

Tried expressing the threshold branch in `scale_value_by_threshold_specific_factor` as a C shift test; Clang changed the canonical payload, so the `lsrs`/`beq` asm-goto remains. Likewise, a C clamp in the MTU helper changed the payload. Kept both exact instruction sequences. Improved the MTU helper's parameter from an untyped byte pointer to `const struct sr08_mtu_update_pdu *`; the register-bound pointer is typed too, while the pinned load/compare/clamp instructions remain unchanged. Renamed the helper to `send_local_mtu_response_and_set_negotiated_limit` and described its negotiation behavior. The complete payload hash still matches V204.

Tried expressing the reflected CRC bit step in `crc32_update_one_byte` as a C shift/conditional-XOR sequence. Clang folded the conditional into a longer masking sequence, extending the 24-byte routine into the adjacent polynomial literal. A mixed C plus asm-goto variant was longer still. Restored the compact instruction sequence; it is required by the fixed slot under Clang 18.

Tried replacing the MTU helper's two literal `movs` with C call constants and with fixed-register C locals. Clang consistently emitted the independent `r1`/`r2` initializations in reverse order, changing the exact function bytes. Restored the two-instruction adapter, which preserves V204's `r2`-then-`r1` sequence.

Retried the lower-bound check in `match_measurement_index_and_write_offset` as both `candidate_index < range_start` and `range_start > candidate_index`. Clang canonicalizes both conditions to `cmp candidate, range_start; bcc`, while V204 uses the operand-reversed `cmp range_start, candidate; bhi`. Restored the short asm-goto so the bounds check remains byte-exact.

Tried removing the zero-byte `remainder` operand barrier from `integer_square_root_restoring`, since the value is already fixed to `r5`. Clang then recomputed the subtraction for the condition and emitted a second compare, changing the 50-byte section. Restored the barrier; it constrains when the remainder is materialized and is required for the original SUBS/CMP/branch sequence.

Typed the offset-four base handle in `set_attribute_value_from_measurement_record` as the existing `sr08_measurement_range.range_start` field, retaining `const volatile` access. This removes raw byte-pointer arithmetic and a cast while preserving the exact halfword load and payload bytes.

Replaced the raw byte-offset halfword stores in `dispatch_transition_0x20_when_control_0x02_clear_then_set_dash_state` and its 0x10 counterpart with typed `state->digits` accesses. Kept the `offsetof` input as a compiler-ordering constraint: dropping it reordered the 64-byte offset materialization and literal load. Both typed stores preserve the exact payload.

Changed the four-byte digit writes in `write_shared_state_byte_44_and_word_40` and `write_shared_state_byte_45_and_word_40` to typed `state->digits` stores. Both preserve V204's exact sections. A typed rewrite of the separate byte-at-offset-0x44 store in the first helper extended its fixed section into following literal data, so that byte access retains its explicit offset form.

Simplified the record advance in `find_keyed_record_value` from a byte-pointer cast and `+ 24` back to `volatile uint16_t *` into `cursor += 12`. The twelve-halfword stride is now explicit in the comment, and Clang emits the same address increment; the full payload remains byte-identical.

Changed the sensor-configuration scratch clear to pass `record.sensor_configuration.reserved` and its `sizeof` directly to `__aeabi_memclr`, replacing byte-pointer arithmetic from the first field. Clang emits the same 20-byte stack-record routine and the payload stays byte-identical.

Added the checked four-byte `sr08_ota_transfer_status` payload layout and changed `publish_transfer_status_code` from `record[2]` to `record->status_code`. The named field is fixed at payload offset two; the full payload remains byte-identical.

Added a checked five-word `sr08_scaled_payload_descriptor` for `copy_scaled_payload_slice_when_mask_hits`. The C accesses at descriptor indices three and four are now `copy_length` and `payload_base`; static offset checks also document the first two range operands and selection mask consumed by the pinned load sequence. The complete payload remains byte-identical.

Typed the input prefix in `check_status_record_range_and_publish_code`, naming its status byte and candidate halfword with checked offsets. Replaced the standalone `ldrh r0, [r1, #4]` with the C field load; the section remains byte-exact. A C rewrite of the shared-state store caused Clang to keep the candidate in `r4` instead of V204's `r0`, changing the compare/store instructions, so the two-instruction store adapter remains.

Typed the flash-controller register prefix in `transfer_flash_controller_word` as status, low/high data, transfer trigger, and control fields, with checked halfword offsets. Replacing indexed `controller[n]` accesses with named fields preserves the exact payload bytes; the carry-sensitive readback sequence remains pinned.

Typed the two scaling-state pointers in `scale_value_by_threshold_specific_factor` as `sr08_scale_factor_record` and replaced numeric word index four with the named `scale_factor` field. Its offset assertion documents the observed byte offset 16; both the narrow multiply and wide ROM multiply paths retain the canonical payload.

Typed the scale lookup in `call_divider_for_indexed_record` as `sr08_indexed_division_parameters.index_scale` at offset eight. Also expressed the numerator addition as `indexed_numerator = scaled_index + indexed_numerator`; this operand order emits V204's `adds r0, r1, r0`. The compound `+=` form emitted the reversed, byte-different `adds r0, r0, r1`, so it was replaced by the exact C expression.

Replaced NMI handler relative pointer indexing with the established named MMIO register macros for NMI control, display control, peripheral status, and system control. Simplified the volatile read/modify/write operations with compound assignments and expressed the clear mask as `~2u`. The full payload remains byte-identical.

Introduced the checked two-byte `sr08_radio_command_pair` layout and typed `scan_pair_table_until_terminator` to read its `first`/`second` bytes and advance one pair at a time. Propagated the pair pointer through the radio-profile scan API and its C callers, including the profile-backed table. The complete payload remains byte-identical.

Added a checked prefix layout for the handler-registration state and replaced `registration_state[11]` with the named `handler_slot_index` field. The field remains at byte offset eleven, and the exact 24-byte section and complete payload are unchanged.

Changed the pending-status and pending-flag accesses from `[0]` indexing to direct volatile pointer dereferences, and changed the first-free registration-slot store from `slot[0]` to `*slot`. These express the existing pointer semantics directly; the full payload remains byte-identical.

Extracted the repeated three-byte little-endian packing expression in `combine_two_six_byte_records_into_words` into `pack_three_little_endian_bytes` and advanced the second triplet by three bytes. Clang inlined the helper to the same instructions; the complete payload remains byte-identical.

Tried expressing the byte write to `sr08_display_image_state.mode` as a C field assignment. It shortened the fixed section and overlapped the following literal data, so the explicit three-instruction adapter remains. Also tried replacing the signed compare in `find_signed_byte_maximum_in_first_100` with C conditions: Clang selected a reversed compare and different conditional branch, changing the payload hash. Restored the original `cmp value, maximum; ble keep` adapter.

Changed the typed-operation and three-byte-request record clears from numeric lengths to `sizeof` their declared `reserved` arrays. Both compile to the same helper arguments, and the full payload remains byte-identical.

Tried replacing the pinned decrement in `copy_six_profile_bytes_from_offsets_two_to_seven` with `--source_offset`. Clang enlarged the routine by two bytes, overlapping the following fixed data section, so the explicit two-byte `subs` adapter remains.

Replaced both event-packet scratch clear counts with `sizeof(packet.scratch)` and the flash staging operation length with `sizeof(staging->program_words)`. The checked array extents now supply these byte counts; the full payload remains byte-identical.

Extracted the four repeated shifts/stores in `serialize_status_and_global_values_with_word` into `store_word_as_little_endian_bytes`, preserving volatile byte writes. Clang inlined the helper to the same sequence; the complete payload remains byte-identical.

Named the scan bounds, two-byte pair stride, shared-state-relative mode/value lookup biases, and not-found code in `search_display_code_table_from_minus20_to_zero`. Documented that the lookup pointer is the containing state block and the pairs begin at byte offsets 102/103; the complete payload remains byte-identical.

Added the checked `sr08_indexed_sensor_state_view` for the shared indexed sensor-state window and replaced the request builder's raw `slot[0x5b]` store with `slot->measurement_available`. The layout records offsets 0x58, 0x5a, and 0x5b; its comment clarifies that views overlap because the underlying fields are columns with a 14-byte index stride. The full payload remains byte-identical.

Typed the state pointer and offset of `clear_shared_flag_and_switch_to_state_zero` with the existing `sr08_display_transition_state.state_flag` definition. The zero test is now C-controlled; the indexed load/store adapters keep the flag offset in `r0` and preserve the original Thumb sequence. A fully C field store recomputed the address and grew the section, so the exact indexed store remains. The complete payload remains byte-identical.

Named the transition-state marker and flag offsets and the destination result-word offset in `reset_transition_state_and_store_scaled_value`, using immediate operands in the existing assembly adapter. The same instructions are emitted and the complete payload remains byte-identical.

Replaced the raw offset-based halfword store in `write_literal_halfword_to_shared_state_offset_0x40` with a typed `sr08_display_output_state.digits` access. The `offsetof` input preserves V204's offset materialization and fixed literal-load order; the full payload remains byte-identical.

Added a size assertion to `sr08_indexed_sensor_state_view`, requiring the typed prefix to extend through the `measurement_available` byte at 0x5b. This makes the accessed tail part of the checked layout; the full payload remains byte-identical.

Added `sr08_display_code_lookup_table` with ten checked two-byte mode/value pairs beginning at shared-table offset 0x66. The lookup routine now derives its scan biases and pair stride from the layout instead of unexplained numeric constants; its generated instructions and the complete payload remain byte-identical.

Modeled the 122-byte indexed-record stride in `store_byte_in_table_by_high_index` as `sr08_indexed_record_block`. The access is now `table_base[(packed_value >> 8) + 1].value`, naming the first byte of the next block instead of expressing it as a scaled byte offset plus one stride. The full payload remains byte-identical.

Moved `sr08_indexed_record_block` and its checked 122-byte size into `sr08_indexed_record_table.h`. Reused `SR08_INDEXED_RECORD_BLOCK_SIZE` in the matching measurement-status Thumb transcription's `movs` immediate, tying both table accesses to one checked stride without changing its encoding. The full payload remains byte-identical.

Typed `v204_indexed_record_table` itself as a pointer to `sr08_indexed_record_block` in the checked auto-data source and updated its analysis-time generator entry and includes. The source-built pointer bytes remain identical; the standalone build does not invoke the generator.

Aligned the generated auto-data comment and declaration formatting with `generate_ghidra_data.py` so refreshing classified data preserves the indexed-record pointer type. This is source-only formatting; the canonical payload remains unchanged.

Named the 14-byte indexed sensor-state slot stride in `sr08_indexed_sensor_state.h` and used it as the immediate operand in both request construction and measurement-status handling. The assembly still emits the same `movs` instructions; root and standalone source-bundle builds match the canonical payload.

Named the typed-operation queue record type and the display-image erase ranges, mode offset, event header, and region value. The mode offset remains an immediate in the same Thumb instruction. Both root and standalone source-bundle builds match the canonical payload.

Removed redundant local pointers that only aliased stack queue-record objects in `initialize_and_dispatch_three_byte_request` and `enqueue_typed_operation_record`; field accesses and dispatch calls now name the records directly. Root and standalone source-bundle builds match the canonical payload.

Named the three-byte request's comparison/copy length and clarified the queue-search routine's second parameter as `record_size_bytes` (it is used by `memcmp` and `memcpy`). The assembly body and compiled image are unchanged; root and standalone source-bundle builds match the canonical payload.

Replaced stringified numeric operands in the shared display-value formatter with checked immediate operands. Each entry point now names its value-pointer literal displacement, shared-value byte offset, and display-state pointer displacement; the formatter mode is named as well. Root and standalone source-bundle builds match the canonical payload.

Changed the shared fixed-halfword display writers to pass their PC-relative literal-pool displacement as an immediate operand instead of stringifying it into assembly text. The existing pointer register allocation and display store remain intact; root and standalone source-bundle builds match the canonical payload.

Named the five values written by the fixed-halfword display-state wrappers and replaced their bare numeric macro arguments. Their observed values and fixed halfword store remain unchanged; root and standalone source-bundle builds match the canonical payload.

Converted the callback-table profile and sensor-table lookup macros from stringified numeric assembly fragments to named immediate operands. Their wrapper sources now name the profile IDs, literal-pool displacements, key offsets, and matched-value backsteps. Root and standalone source-bundle builds match the canonical payload.

Converted the exception stack-dispatch entry macro's stack mask and PSP/MSP literal-pool offsets to named immediate operands. The two wrapper files now identify their respective dispatcher literal locations; root and standalone source-bundle builds match the canonical payload.

Named the three callback indices per mode and the byte offsets for the two callback windows. The shared helper now describes the calculated value as the callback-window start; the full root and standalone builds remain byte-identical.

Named the CRC updater's eight rounds per byte, reflected-bit shift, and polynomial literal displacement, and supplied them as immediate operands to the existing Thumb adapters. The C loop and generated instructions are unchanged; root and standalone source-bundle builds match the canonical payload.

Named the six-way dispatch range limit and four-byte jump-table entry shift, supplying them as immediate operands in the shared Thumb prefix. The default branch targets and emitted instructions remain unchanged; root and standalone source-bundle builds match the canonical payload.

Removed the duplicated per-function address map from the frozen source manifest. The build now derives regular function addresses from the source rows and keeps only 18 explicit split-entry aliases; the manifest freezer and symbol-renaming maintenance tool use the same schema. The full source build, standalone bundle, and symbol/catalog consistency check pass with canonical payload and container hashes.

Named the shared-state pointer's fixed PC-relative literal displacement in the common nonzero-field clear helper. Both field-clear wrappers retain the same pointer load; root and standalone source-bundle builds match the canonical payload.

Applied the documented Clang format to the ten maintained C/mixed-source units that did not yet match it, leaving fully pinned naked instruction bodies in their transcription layout. The formatted source set passes its style check, and root and standalone source-bundle builds retain canonical hashes.

Pruned the frozen ROM symbol map from 869 entries to the 128 names referenced by manifested source units; the full ROM index remains in the analysis exports. Updated the manifest freezer to apply the same filter. The linker still resolves every source reference, and root and standalone source-bundle builds retain canonical payload and container hashes. Refreshed the source-style counts in the README from the current manifest and linked section map.

Named the per-slot state-record type literal displacement in `publish_per_slot_state_byte` and retained its register-allocation input. The routine compiles to the same instructions; formatting and both build paths pass with canonical hashes.

Named the shared radio-status literal displacement and the status mask that skips profile restoration in `ensure_radio_profile_then_exchange_word`. Both status loads and the C condition compile to the same instructions; formatting and the root and standalone builds pass with canonical hashes.

Tried replacing the linked-list head-test `asm goto` in `drain_linked_record_list_and_clear_head` with C `while`/`for` forms, including a saved head pointer. Clang moved the test to the loop bottom and grew the fixed section by four bytes, overlapping the next routine; restoring the original guard returns the full payload to its canonical hash.

Typed the 14-byte registration-slot literal block as a packed C view with checked offsets for the slot-table pointer, sentinel, and event-ID base. Updated the Ghidra data generator and the two archived registration-slot pseudocode files to use the field names. Root and standalone source-bundle builds both retain the canonical payload and container hashes.

Replaced the unexplained `0x14` argument in `search_queue_and_insert_limit_twenty` with the named `RECORD_QUEUE_INSERT_LIMIT` value. The root build and a newly exported standalone source bundle both retain the canonical payload and container hashes.

Tried converting the eight-byte ROM helper's fixed-register counter initialization and increment to C, first together and then one at a time. Clang reassigned r4/r5 or emitted a longer section that overlaps the next entry; restoring the two short inline-assembly constraints is required for exact layout.

Tried replacing the pointer-increment assembly in `nul_terminated_string_length` with a C increment. Clang extended the function section across the next fixed-address data section; restored the original increment instruction to retain the exact layout.

Renamed the local ring-buffer indices and wrap mask in `advance_queue_tail_if_nonempty` to make their roles explicit. The root build and a fresh isolated source-bundle build both retain the canonical payload and container hashes.

Added packed aliases for the typed clock literal pool's word-array, byte-addressed cycle state, and callback pointer views, with static offset checks. Replaced every clock-pool `DAT_` reference used by the archived clock routines with the corresponding pool field. The root and isolated source-bundle builds both retain canonical hashes.

Tried replacing the sign-flip veneer with a plain C XOR and tail call; Clang emitted a larger section that overlapped the next data block. Adding `musttail` caused the locked Clang 18.1.3 frontend to crash. Restored the register-pinned veneer; it remains the exact source for this section.

Typed the 22-byte radio-range literal pool with checked offsets for its device-state and cycle-state pointers, default value, and observed range bounds. Updated the data generator and replaced the corresponding five `DAT_` names across five archived radio-state pseudocode files. Regeneration, root build, and standalone bundle build preserve canonical hashes.

Typed the adjacent 18-byte radio-state literal pool with checked offsets for its device-control and profile-state pointers and two radio-update parameters. Updated the generator and replaced its four interior `DAT_` names in five archived radio helpers. The root and isolated source-bundle builds retain canonical hashes.

Typed the six-byte device-setting pointer pool at 0x07fc2e4a with a byte-addressed view, preserving the archived pseudocode's byte offsets. Replaced its pointer `DAT_` in three setting helpers and documented the literal address in the matching exact C routine. Root and standalone bundle builds retain canonical hashes.

Typed the ten-byte radio-dispatch literal pool with a byte-addressed state pointer and the two-argument send-device-command callback type. Updated the generator and replaced both `DAT_` names in the radio dispatcher and command publisher. Root and standalone bundle builds retain canonical hashes.

Replaced three Ghidra-style signed-shift status tests with explicit bit-mask conditions: the sensor-conversion busy flag and peripheral status bit 2, plus NMI peripheral status bit 3. The masks are named without assigning uncertain hardware meanings. Each full root build and a fresh isolated source-bundle build match the canonical payload and SUOTA container hashes.

Named the shared-state bit-31 clear mask and consolidated the repeated 16-bit bit-0 clear mask in the device-register header. Named bit 15 for the control-register and NVIC mask writes. Root and isolated source-bundle builds retain the canonical payload and SUOTA container hashes.

Reformatted the exact C function sources and shared headers with the repository's `.clang-format` policy. Also rewrote `map_record_flag_to_status_mask` as an explicit low-bit conditional returning either zero or `0xfffffff2`; its compiled bytes remain unchanged. The root and fresh isolated bundle builds match canonical payload and container hashes.

Rewrote `map_record_flag_to_status_mask` as an explicit conditional for its two outputs; the compiled bytes are unchanged. Simplified `decode_halved_offset_minus_112` by removing a redundant signed temporary; truncation to the low byte preserves the same result over the full uint32 input range, and the compiled bytes remain unchanged.

Tried loading the typed device-setting pointer through its named literal-pool field in `read_state_word_at_10_with_record_flag_clamp`. The compiler grew the function from its 28-byte fixed section across the next function at 0x07fc2dc4; restored the fixed PC-relative load. The source build then returned to its canonical payload hash.

Factored the identical 78-byte Thumb bodies of `update_companion_mode_bits_and_notify_display` and `update_mode_bits_and_notify_display_service` into `sr08_mode_update.h`. The six PC-relative literal displacements remain explicit immediate arguments at each entry point. The full repository build and a fresh 549-file standalone bundle both match canonical payload and container hashes.

Factored the duplicate 118-byte Thumb body in the two `prepare_measurement_record_append` entry points into `sr08_measurement_append.h`. Each fixed-address wrapper supplies its four original PC-relative fatal-path literal displacements as immediate operands. The root and fresh 550-file standalone bundle builds match the canonical payload and SUOTA container hashes.

Renamed two fixed-register locals from register-based identifiers to value roles: the tail-adjusted queue index and the scan pair cursor/count. Register assignments and inline assembly constraints remain unchanged; the full source build retains the canonical hashes.

Combined the two null guards in `read_current_record_value_byte` into one short-circuit check. The record handle is inspected only when its parent record exists; the typed value dereference and return are unchanged. The full source build retains the canonical payload and container hashes.

Replaced signed-shift tests in the display-control and UART transmit routines with named masks for control bit 1 and UART status bits 5 and 6. The root image retains the canonical payload and container hashes.

Named the low 31 bits tested by the rounding helper's `status << 1` condition and rewrote the test as an explicit mask. This preserves the original bit-31 exclusion. Replacing the preceding `asm goto` signed compare with a C `int32_t` condition grows the function by two bytes into the next fixed section, so the assembly branch remains. The restored source and explicit mask retain canonical hashes.

Follow-up: the unsigned condition `(rounding_status & 0x80000000u) == 0` also lowers to a branch layout with two return instructions, adding two bytes and overlapping the next fixed section. A plain `rounding_status >= 0` is invalid here because `rounding_status` is unsigned and the comparison is always true. The exact signed compare remains `asm goto`; the low-bit mask cleanup remains C.

Detailed rounding-helper code-generation audit: the canonical 16-byte body is `cmp r1,#0; bge done; adds r0,#1; lsls r1,#1; bne done; lsrs r0,#1; lsls r0,#1; bx lr`. Replacing the first `asm goto` with ordinary signed C and `goto done` gives an 18-byte layout: Clang inverts the first edge to `bmi` into the rounding body, inserts an early `bx lr`, and retains another `bx lr` at the common end. The unsigned bit-31 predicate without an `int32_t` cast has the same layout. With `__builtin_expect` on both C conditions, Clang coalesces the returns and emits the same-sized sequence, but canonicalizes `bge` after `cmp #0` to `bpl`; the condition is equivalent there because V is clear, but the opcode differs from V204. Replacing the final shift pair with `(value >> 1) << 1` emits `movs r1,#1; bics r0,r1` instead of `lsrs; lsls`, again preserving length but not bytes. The exact compare/branch and shift pair therefore remain inline assembly; the low-31-bit test is ordinary C. Restoring those two instruction sequences returns the payload to its canonical hash.

Converted `reinitialize_sensor_processing_state` to ordinary C by compiling that translation unit with GNU Arm GCC 13.2.1. GCC naturally emits the canonical push {r4,lr}, call, pop {r4,pc}; removed the empty inline assembly clobber. The builder exposes --gcc and selects GCC only for this unit. Full payload and container retain canonical hashes. The rounding-helper GCC candidate still differs at the increment encoding (3001 versus canonical 1c40); restored its prior exact implementation.

Investigated three further ordinary-C conversions with GCC 13.2.1. The eight-byte ROM loop becomes a pointer-end loop, strlen gets a different scan/register layout, and word-zeroing gets an end-pointer loop; these cannot replace the exact bodies as generated. Also tried replacing only the zero initializer assembly with a C constant in the Clang word-zeroing helper; the full payload hash changed to b0b5a6e545ca27970450cb24c468fd09869a0fa6c4190e4a9806f90076f0b59c. Restored that helper. Next experiments should target optimization passes controlling loop induction and instruction placement rather than repeating those source forms.

Loop-pass follow-up: GCC -fno-tree-loop-optimize preserves the eight-byte ROM helper's index induction, reducing its differences to MOVS versus MOV, ADD-immediate encoding, and BNE versus BLT. Plain Clang emits the canonical three-operand increment already but assigns the output base to r4 and index to r5, saves r7 rather than r6, and proves the loop comparison equivalent to !=8. This identifies register allocation and induction range analysis as the remaining controls for this helper. Removed a stale strlen comment claiming an empty constraint remained, and documented the per-unit GCC routing.

Further asm-to-C probes: replacing just the ROM loop increment with ++byte_index grows the fixed section by 12 bytes and overlaps 0x07fc046e; restored it. The ring-buffer offset calculation is a closer candidate: both `(tail + index) & capacity_mask` and `capacity_mask &= tail + index` preserve section size and control flow, but Clang allocates the masked offset to r1 instead of canonical r4. The only instruction differences are ANDS (4021 versus 400c), MULS (4359 versus 435c), and final ADD (1841 versus 1901). Both produce payload hash 1c1df296e87da920c45964d64cc76b7adf13c786f2beecae9220dda3787c9637; restored the exact body. This candidate needs allocation control rather than algorithm changes.

Aligned the GCC source-unit ABI metadata with Clang using -fno-short-enums and marked its stack non-executable with -Wa,--noexecstack. readelf confirms enum size int and a non-executable .note.GNU-stack; full image retains canonical hashes. Fixed the candidate comparison tool to default both sides to the manifested compiler, keeping --cc as a candidate-only override.

Replaced both timing loops' .rept/NOP inline assembly blocks with explicit __builtin_arm_nop intrinsics (ten and eleven calls). The ten-NOP delay helper now has no asm declarations or blocks; its complete 30-byte object section matches. The countdown helper retains only its decrement asm: ordinary --count differs at two bytes despite identical section size. The full payload and container retain canonical hashes. These are ARM compiler intrinsics, not portable ISO C, and preserve the explicitly required timing instructions.

Removed the countdown helper's final decrement asm block. Its previous two-byte C mismatch was the branch edge, not SUBS: loop rotation changed the unconditional jump to the loop-head compare into BNE to the NOP body. Clang -mllvm -rotation-max-header-size=0 preserves the original 32-byte sequence exactly. Added per-source flags to the builder and candidate probe; the source now contains only C and ARM NOP intrinsics. Full payload and OTA hashes remain canonical.

Removed the pair-table scanner's loop-head asm goto, replacing it with an ordinary C zero check under the per-source loop-rotation disable setting. The complete 34-byte section and relocations match. Its decrement remains constrained: replacing it too grows the section to 36 bytes and changes call relocation position. Neither plain while nor explicit C goto reproduces the word-zeroing helper's original bottom-test branch, even with rotation disabled; those experiments remain outside build inputs.

Converted two more complete helpers to ordinary C. The linked-list drain's head load/test now uses C under -rotation-max-header-size=0, preserving all 40 bytes and call relocations. The pair-table scan's decrement now uses C under disabled loop strength reduction and source-order pre-RA scheduling, preserving all 34 bytes and relocations; removed its r4/r5 register annotations as well. Full payload and OTA container match canonical hashes.

Removed the string-length helper's pointer-increment asm block, using ordinary ++text with per-source -disable-lsr. All 14 section bytes and relocations match. The initial text+1 register setup remains constrained. Tested the complete ordinary-C scanner and eight-byte ROM loop against combinations of loop-rotation, strength-reduction, and source/list scheduling controls; none match, so those candidates remain outside the canonical build.

Replaced the CRC byte updater's counter-decrement asm with --rounds_remaining under disabled loop rotation. All 24 bytes and relocations match. Its initialization and reflected-bit transform remain constrained; replacing the initializer too grows the section by four bytes. Tested zero-word loop and six-byte profile-copy candidates under rotation, strength-reduction and scheduling combinations; no exact candidates found.

Removed two asm blocks from the restoring square-root helper: the backward branch is now C goto under disabled loop rotation, and the original-input fallback move is ordinary C assignment. All 50 bytes match. Trial addition in C differs at one byte (operand encoding); removing the empty remainder constraint changes register allocation, so both remain. Tested the CRC reflected-bit transform in C under loop/scheduler controls without an exact result.

Removed the restoring-square-root fallback value's redundant r3 register annotation after its assembly move was converted to C. Complete section bytes and relocations remain identical. Trial-addition operand-order and scheduler variants did not match; the Newton helper's C loop condition grows its section from 38 to 44 bytes across tested rotation/strength-reduction/scheduler settings. These unsuccessful candidates remain outside build inputs.

Converted the UART transmit loop's pointer increment and count decrement asm block to ++buffer and --byte_count. Disabled loop rotation and source-order pre-RA scheduling preserve the full original section and relocations. Its fixed UART-base load remains constrained. Probed C arithmetic in cached-message slot selection, indexed timing-record store, and queue submission; those candidates still alter register allocation or instruction count and remain outside build inputs.

Converted the 32-byte random-fill helper completely to ordinary C, replacing its only asm goto with an index ==32 guard under disabled loop rotation. Complete section and relocations match. Reordered six-byte profile-copy C update sequences under tested loop/scheduling controls still do not match and remain outside build inputs.

Consolidated repeated per-source LLVM option sequences into named loop-head, induction, and scheduling controls. The builder and candidate probe continue consuming the same per-source map. Signed-byte maximum scanner experiments replacing either comparison or index initialization still change layout/register allocation; retained its exact constraints rather than accepting those candidates.

Identified why initialize_state_and_return_one needs its stack-frame constraint: ordinary AAPCS C reserves an extra callee-saved register to maintain eight-byte stack alignment, while V204 saves only LR. GCC -mabi=apcs-gnu reproduces the ten instruction bytes exactly, but emits an EABI-version-0 object rejected by the EABI-5 linker. Reverted the compiler/source experiment rather than suppressing ABI mismatch checks. Clang stack-alignment=4 alone does not alter the saved-register pair.

Removed three assembly blocks from registration-slot insertion: loop-bound guard is now C under disabled loop rotation, existing slot item uses a typed volatile load, and helper argument narrowing uses a uint8_t cast. The combined 42-byte section and relocations match. The selected-slot addition and return narrowing remain constrained because their individual C candidates differ.

Removed the registration helper's selected-slot ADD assembly using C index+1 with disabled loop strength reduction. Also removed redundant register annotations from the saved value, existing slot item, and byte-sized helper argument; the combined 42-byte section and relocations match. The empty ordering barrier has a separately exact source-scheduled alternative, but removing it together with the C addition grows the function by two bytes; retained the barrier rather than combining incompatible candidates.

Removed the registration scanner's now-redundant r3 index annotation and saved-value alias, and combined the narrowed argument declaration/initialization. Its return narrowing remains constrained: C conversion still differs under current loop flags. Status-range branch-edge and comparison C probes also remain nonmatching. Full canonical build checks cover the accepted cleanup.

Removed the mode activation gate's mode==2 asm goto, replacing it with C under per-source -disable-block-placement. Complete object bytes and relocations match. The other compound bit-condition adapters remain constrained. MTU setup-constant C variants still differ and remain outside build inputs.

Removed the mode-two compound flag-check asm block from the mode activation gate. C now tests named bit-0 and bit-6 masks for the two profile results; existing disabled block-placement setting preserves the complete 62-byte section and relocations. Mode-one compound and split-condition candidates still change instruction/register encoding and remain outside build inputs.

Renamed mode-gate first/second locals and assembly operand names to profile_result_42/profile_result_43, reflecting their actual command IDs without assuming sensor semantics. Full mode-one C conditions, split mode checks, branch-hint variants, and scheduler/coalescing controls still fail exact section comparison; retained the constrained mode-one block.
