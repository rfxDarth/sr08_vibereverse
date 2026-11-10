# V204 firmware reconstruction

The maintained source build is in [`exact_clang18/`](exact_clang18/README.md).
It rebuilds the complete 67,136-byte Cortex-M0 payload and 67,200-byte SUOTA
container from checked-in source, fixed data, linker layout, and a frozen
manifest. Its regular build does not read the original firmware image, Ghidra
project, decompiler output, scan exports, or analysis scripts.

## Build

From the repository root:

```sh
python3 firmware/reconstructed/exact_clang18/build_v204.py \
  --output /tmp/V204.elf \
  --flat-output /tmp/V204.payload.bin \
  --container-output /tmp/V204.bin
```

The optional source-bundle exporter packages only the files needed for an
isolated build:

```sh
python3 firmware/reconstructed/exact_clang18/export_source_bundle.py \
  /tmp/V204-source
```

See the linked build README for tool requirements, reference hashes, source
layout, and parity details. Payload and SUOTA container parity have both been
verified against V204.

## Other reconstruction artifacts

- `exact_clang18/manual_sources/` contains the hand-reconstructed routines used
  by the maintained build.
- `data/` and `include/` contain fixed data, linker layout, and shared types.
- `V204_REBUILD.md` and `functions/` preserve behavior-recovery notes and
  decompiler experiments. They are review material, not a second firmware
  build path.
- The archived `functions/functions/` pseudocode uses the catalog's readable
  names in function definitions and calls. Its address-based filenames and
  address metadata preserve traceability; the catalog retains the original
  decompiler symbols. These pseudocode files are not inputs to the maintained
  build. They retain function addresses and Ghidra analysis-profile metadata,
  while repeated per-file session limitations are omitted. This is decompiler
  output rather than vendor source, and it does not model device boot or MMIO
  behavior. References to fixed data objects also use their checked source names
  where an exact address match exists; unresolved Ghidra temporaries remain
  labeled by address or register until their roles are established.
  Reapply catalog function names, verified data and ROM symbols, source-matched
  or owning-function local labels, verified division-remainder outputs, and
  parameter names supported by source signatures or reviewed call/dataflow
  evidence. When a source parameter conflicts with a local name, the tool adds
  `_argument`. Run it with
  `python3 firmware/reconstructed/functions/rename_decompiler_symbols.py --apply`.
- `mvp/` contains an earlier partial firmware implementation. It is not the
  input to the maintained build.
