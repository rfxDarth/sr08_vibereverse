# Address-exact V204 C sections (Clang 18)

This directory contains a reproducible Cortex-M0 C build whose linked sections
cover the complete V204 payload byte-for-byte, together with recovered startup,
lookup, literal, and Ghidra-classified data. The build emits an ELF, a flat
payload, and the complete SUOTA `.bin` container.

## Rebuild and verify

From the repository root:

```sh
python3 firmware/decompiled/scan_data_literal_c_matches.py \
  --compiler clang-18 --optimization s --omit-frame-pointer \
  --max-pointer-globals 3 --infer-pointer-widths --include-scalar-globals \
  --preserve-generated-c-to firmware/reconstructed/exact_clang18/data_globals \
  --output firmware/decompiled/V204_clang18_data_literal_3global_current.csv

python3 firmware/reconstructed/data/generate_ghidra_data.py \
  --exact-csv firmware/decompiled/V204_clang18_fomit_linked_c_scan_current.csv \
  --exact-csv firmware/decompiled/V204_clang18_data_literal_3global_current.csv \
  --exact-csv firmware/reconstructed/candidates/V204_manual_exact.csv

python3 firmware/reconstructed/exact_clang18/build_partial_exact.py \
  --flat-output firmware/reconstructed/exact_clang18/V204_reconstructed.payload.bin \
  --container-output firmware/reconstructed/exact_clang18/V204_reconstructed.bin
```

The final command recompiles all selected functions and data, links each section
at its original V204 address, checks for address overlap, extracts every
section, and compares every byte against `firmware/decompiled/V204.payload.bin`.
It then assembles the flat payload from those linked section bytes and requires
complete payload coverage. It compiles `V204_ota_header.c` as a separate C data
section, checks the 64-byte result against the original SUOTA header, prefixes
that header to the rebuilt payload, and compares the complete container to
`firmware/V204.bin`. Verify the whole image with:

```sh
cmp firmware/decompiled/V204.payload.bin \
  firmware/reconstructed/exact_clang18/V204_reconstructed.payload.bin
cmp firmware/V204.bin \
  firmware/reconstructed/exact_clang18/V204_reconstructed.bin
```

The current ELF is `V204_exact.elf`; the verified flat payload is
`V204_reconstructed.payload.bin`; the complete reconstructed `.bin` is
`V204_reconstructed.bin`.

## Current coverage

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
the associated display byte, or the fallback value if no entry matches. Its
36-byte Thumb section matches exactly.

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
`firmware/reconstructed/candidates/`. Inline assembly pins the two shared
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
`FUN_07fc5484` uses C for its byte-copy loop and helper call; asm-goto edges
preserve the target's top-tested loop layout.
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
`FUN_07fc1a2a` is an 8-byte naked Thumb veneer: it flips the sign bit in `r1`
and branches to the shared floating-point helper without disturbing other
incoming registers.
`FUN_07fc20b4` is a counted delay loop; C sets up the argument while inline
Thumb control flow and eleven NOPs preserve the target's timing sequence.
`FUN_07fc1b3e` uses C for its threshold checks and variable shifts; inline
Thumb instructions preserve the bit-field extraction and signed comparison.
`FUN_07fc1b66` is a naked Thumb routine implementing the split-word 64-bit
right shift, with separate paths for counts below and above 32.
`FUN_07fcee94` scans 100 signed bytes and returns their maximum as an unsigned
byte. C handles the signed loads, update, and loop; `asm goto` preserves the
target comparison operand order.

The other payload bytes are not reconstructed by this partial link. In
particular, most executable functions still need source and compiler/layout
recovery; this ELF must not be treated as flashable firmware.

`FUN_07fc2fcc` checks two record bounds and conditionally calls a helper with a stride-scaled value. C expresses the condition, record accesses, callback arguments, and result; inline Thumb instructions preserve the post-increment load, arithmetic forms, and register allocation. Its 40-byte section now matches V204 exactly.

`FUN_07fc3564` adapts five incoming arguments into the eight-argument call to `FUN_07fc40a0`. The exact Thumb implementation preserves the saved-register stack layout, loads the shared word at `0x07fc3580`, adds constant 14 and the repeated fourth argument, then returns. The 28-byte function section is verified against V204.

`FUN_07fc3e40` and `FUN_07fc4144` are the same eight-argument dispatch adapter pattern as `FUN_07fc3564`, with different shared literal words and fixed constants 7 and 4. Their two 28-byte Thumb sections link the call to `FUN_07fc40a0` and match V204 exactly.

`FUN_07fc3e60` sets or clears a requested bit in the shared state word, then stores whether the resulting word is zero to two status bytes. C expresses the branch behavior and zero test; inline Thumb pins the three literal loads, register-specific bit operation, and state store. Its 36 code bytes match V204, using already recovered literal sections.

`FUN_07fc5db4` reads two halfword fields, sums them modulo 16 bits, and dispatches the result with the record address and helper-returned base. The call and remaining argument setup are generated from C; inline Thumb preserves the target load order and operand encoding. Its 34-byte function section links and matches V204 exactly.

`FUN_07fc0758` scans a variable-length byte record until it finds marker 1 or reaches the supplied limit, then returns the marker payload byte or zero. Its exact loop and return layout are retained in a naked C function with a short Thumb body; the 38-byte section matches V204.

`FUN_07fc1e70` is a restoring integer square-root routine. The decompiler lost its return type, but V204 leaves the computed root in `r0`; the reconstruction uses that return value and preserves the exact Thumb loop in a naked C function. Its complete 50-byte section matches.

`FUN_07fcbb38` drives the output-state sequence: it checks the current status, initializes two output modes, waits for the next state, and returns either zero or -12 based on the status bits. Its helper calls and status handling are C; `asm goto` retains the shared early-return path. The 50-byte function section matches V204.

`FUN_07fcbb10` polls the shared output-state count and calls the status helper until its low bit clears or the scan reaches the count boundary. The 34-byte body matches V204; the following return instruction is retained in the adjacent recovered data/code section at `0x07fcbb32`.

`FUN_07fc1d10` updates the selected 16-bit mode/status slot and its associated value. Its 46 instruction bytes are an exact Thumb transcription; the following NOP and MMIO literal remain in the neighboring recovered data section. The partial linker verifies both sections at their original addresses.

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
