# V204 source reconstruction

This tree rebuilds the V204 Cortex-M0 firmware payload and SUOTA container from
checked-in sources. The normal build uses no original firmware image, Ghidra
project, decompiler export, or scan CSV. Reference images are optional inputs
for parity verification.

## Build

Requirements: Python 3.9 or later, `clang-18`, `arm-none-eabi-gcc`, and `arm-none-eabi-ld`, `arm-none-eabi-objcopy`,
and `arm-none-eabi-objdump`.

The byte-matching build has been verified with Ubuntu Clang 18.1.3 and GNU Arm
binutils 2.42. The builder checks the final canonical payload and container
hashes, so a toolchain that emits different bytes fails explicitly.

The builder uses Clang for most source units and GNU Arm GCC 13.2.1 for
`reinitialize_sensor_processing_state`. GCC emits that wrapper's original aligned
stack frame directly from C. Override its executable with `--gcc`; the final
hash check also covers this compiler-specific instruction selection.

From the repository root:

```sh
python3 firmware/reconstructed/exact_clang18/build_v204.py \
  --output /tmp/V204.elf \
  --flat-output /tmp/V204.payload.bin \
  --container-output /tmp/V204.bin
```

To build from an isolated source bundle, first export the build inputs:

```sh
python3 firmware/reconstructed/exact_clang18/export_source_bundle.py \
  /tmp/V204-source
python3 /tmp/V204-source/firmware/reconstructed/exact_clang18/build_v204.py \
  --output /tmp/V204-bundle.elf \
  --flat-output /tmp/V204-bundle.payload.bin \
  --container-output /tmp/V204-bundle.bin
```

The optional `--verify-payload PATH` and `--verify-container PATH` arguments
compare outputs with separately supplied reference files. They are not needed
to build. Every build verifies complete payload coverage and the canonical
payload SHA-256, even when it emits only an ELF. When requested, the SUOTA
container is also checked against its canonical SHA-256. Parity verification
does not depend on keeping a reference firmware file in the source tree.
Current expected SHA-256 values:

- Payload: `5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570`
- SUOTA container: `c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8`

## How the rebuild works

The build compiles the checked-in C translation units into relocatable ARM
objects, then links each named code or data section at its original address.
It emits the payload from those linked sections and creates the SUOTA container
from the checked-in 64-byte header. It does not read a V20*.bin, ELF, Ghidra
export, or cached compiler output. The isolated bundle check exercises this same
path with only the exported source inputs.
The repository retains the flashable `V204_reconstructed.bin` for convenience;
the linked ELF and flat payload are reproducible intermediates and are not
stored in the source tree.

Many routines are represented as named Thumb instruction transcriptions or
mixed C and inline assembly. Those preserve exact instruction encodings where a
normal C rewrite would depend on compiler code generation. The function catalog
and comments describe their recovered behavior; routines with higher-level C
reconstructions are ordinary C and use the same fixed-address linker path.
Instruction-pinned bodies use Thumb mnemonics and named branches; the
assembler emits their instruction bytes during each build. Assembly data
directives remain where the original code embeds literal-pool words, such as
the startup callback table addresses.
Local and cross-section labels include the owning source symbol and absolute
target address (for example,
`dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa0`) so destinations
remain traceable without generic address-only label names.

This distinction matters when judging how much has been reconstructed. A
pinned Thumb body is source-controlled assembly, not a copied byte array, and
the assembler recreates its machine code on every build. But it is still an
instruction-level transcription: it explains *what the CPU executes*, not
necessarily *why the firmware does it*. The current build has 121 C sections,
99 mixed C/assembly sections, and 251 pinned Thumb sections. The C sections are
the semantic middle ground; mixed and pinned sections remain targets for
further semantic recovery. Some sections are discontiguous
blocks or entry shims rather than standalone functions, so not every pinned
section can be translated to an independent C function. Where a C rewrite
better explains behavior and preserves the linked bytes, it should replace the
transcription; otherwise the annotated instruction sequence remains the more
reviewable source of truth.

Two routines show why behaviorally equivalent C is not always byte-equivalent
with the locked compiler. A normal `while` rewrite of
`zero_word_buffer_by_byte_count` moves the zero-count check ahead of zero
initialization; V204 branches over the store into a bottom-tested loop, so the
register constraint and asm-goto remain. A normal C rewrite of
`initialize_state_and_return_one` emits `push {r7, lr}` and `pop {r7, pc}`;
V204 saves only `lr`. Keep these instruction constraints until a C form can
reproduce each original section exactly.

## Source layout

- `V204_source_manifest.json` freezes the exact source units and VMAs, the 18
  aliases for split code entries, and the ROM symbols referenced by those
  units. Ordinary function addresses are derived from the source rows.
- `V204_function_names.csv` is the checked catalog of original addresses,
  readable section/function names, behavior summaries, and confidence levels.
  Its `original_symbol` column preserves decompiler identifiers for traceability;
  the build-facing names are in `readable_symbol` and `readable_function`. The
  catalog is retained for review; the build does not read it.
- `generate_function_names.py` creates a draft from the analysis exports and
  carries reviewed names and summaries forward when the address and original
  symbol still match. By default it prints a summary and writes nothing; pass
  `--output PATH` to save a draft for review. `rename_function_identifiers.py`
  propagates reviewed symbol changes through source files, shared headers, the
  manifest, and linker layout.
- `rename_source_files.py` previews manifested source filenames that differ
  from the catalog and updates the manifest and catalog paths when run with
  `--apply`. The manifest freezer preserves these names when refreshing direct
  C sources.
- `decompiled_sources/` contains the normalized direct C translation units.
- `literal_scan_functions/` contains function implementations recovered from
  the data-literal scan; these are code sources, not data declarations.
- `manual_sources/` contains manually reconstructed routines and exact
  instruction transcriptions. Manifested source files use descriptive names;
  address IDs remain in the catalog and manifest for traceability.
- `../data/` contains fixed tables, classified bytes, the OTA header, and the
  linker layout; `../include/` contains checked structure layouts, shared
  runtime ABI declarations, instruction helpers, and common trivial-callback
  definitions used by source units.
- C and mixed C/assembly function units use the adjacent `../.clang-format`
  style (four-space indentation, 120-column limit). The fully pinned Thumb
  transcriptions keep their instruction-oriented layout. Formatting is a
  maintenance convention and is not required by the firmware build.
- `build_v204.py` links each section at its original VMA, rejects overlaps,
  requires full payload coverage before emitting a flat image, and treats
  compiler warnings in every C translation unit as errors. A local diagnostic
  exemption preserves one legacy call site that passes an optional register
  value to a fixed-address wrapper which reloads that register itself.

The frozen manifest, catalog, C files, data, headers, and linker layout are
sufficient for a standalone build. `freeze_source_manifest.py`, the catalog
and branch naming scripts, and data-generation tools are maintenance tools;
they may use analysis exports but are not part of the build dependency chain.
To regenerate classified auto-data declarations from the analysis payload and
unit map, run this maintenance command from the repository root:

```sh
python3 firmware/reconstructed/data/generate_ghidra_data.py \
  --exact-csv firmware/decompiled/V204_clang18_fomit_linked_c_scan_current.csv \
  --exact-csv firmware/decompiled/V204_clang18_data_literal_3global_current.csv \
  --exact-csv firmware/reconstructed/exact_clang18/manual_sources/V204_manual_exact.csv
```

That command refreshes `firmware/reconstructed/data/V204_auto_data.c` and
`firmware/reconstructed/data/V204_data_sections.ld`; the normal build consumes
their checked-in results without running the analysis generator or reading the
reference payload.

## Current reconstruction state

The build links 466 manifest entries into 471 function sections, plus 344 data
sections: 815 non-overlapping sections covering all 67,136 payload bytes. The
64-byte SUOTA header is compiled from `../data/V204_ota_header.c`, producing
a 67,200-byte container. Both outputs have been verified byte-for-byte against
V204.

The classified data generator names verified embedded strings as separate
fixed-address C objects, including diagnostic formats and configuration names.
The surrounding mixed data stays byte arrays until its structure is understood.

Selected shared C layouts and helpers are documented in the checked headers,
including the peripheral register profile record, measurement slots,
ring-buffer records, callback adapters, sensor
table lookups, indexed timing records, calendar conversion outputs and
calendar divisors/month lengths, exception entries, and the shared MMIO
register addresses. The readiness lookup words and stream cursor constants are
also named; the readiness pointee layout remains unresolved. The archived
progress log is in `DEVELOPMENT_HISTORY.md`; its status counts are historical
snapshots. Five pointer cells used by the step and display routines are typed
as byte pointers to the same shared context at `0x07fd557c`. The known offsets
are named in `../include/sr08_shared_context.h`; the complete context layout is
still unknown. Three more literals used by slot, packet, and formatter helpers
point to byte state at `0x07fd56d0`; the formatter writes display characters at
offset `0x42`, but the complete layout remains unknown. The two submission-
queue pointer cells share the checked `sr08_submission_queue_state` layout in
`../include/sr08_submission_queue_state.h`. Other typed literals identify the
cycle-control object, UART register block, sensor-conversion request register,
and halfword state-register block. The custom ATT registration uses checked
RWBLE 8 service and attribute descriptor layouts. Its fixed HID template is a
typed overlay on a byte-preserving constant pool: four callback mappings, 23
HID attribute records, and four adjacent handler addresses are named and
validated by the data generator; the remaining pool bytes stay opaque. The
clock routine's 82-byte literal pool also has a checked typed view for its
conversion registers, state pointers, and day-length constants; unresolved
words retain offset-based names. Its cycle/schedule state now names the five
timestamp gates used by the clock routine at offsets `0x04` through `0x14`,
with comments recording the observed interval checks. The HID and clock data
emit named C field initializers; byte lists remain only for the opaque portions
of the HID constant pool.

The countdown timing and pair-table scan sources use `-mllvm -rotation-max-header-size=0` to retain
V204's loop-head tests. The countdown body uses C decrement
and ARM NOP intrinsics without inline assembly. The pair scan additionally
disables loop strength reduction and uses source-order instruction scheduling
to retain the countdown and decrement-before-pointer-update order. The linked
record drain also disables loop rotation; both record loops are ordinary C. Per-source options live in
`SOURCE_FLAGS` in the builder and are also used by the candidate comparison tool.

The string-length source disables loop strength reduction so its C pointer
increment retains the original instructions; its initial pointer setup is
still constrained by inline assembly.
