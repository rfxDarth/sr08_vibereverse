# SR08 ring reverse engineering

This repository contains the ring clicker CLI, firmware analysis artifacts,
and a byte-matching V204 firmware reconstruction. The maintained firmware
build is documented in
[`firmware/reconstructed/exact_clang18/README.md`](firmware/reconstructed/exact_clang18/README.md).

The reconstruction builds its 67,136-byte payload and 67,200-byte SUOTA image
from checked-in C and Thumb sources, fixed data, headers, and a frozen source
manifest. It does not read an original firmware image or Ghidra output. Use
`export_source_bundle.py` to create an isolated source-only copy and build it
without the rest of this repository.

The normal build requires Python 3.9 or later, `clang-18`, `arm-none-eabi-gcc`, and the GNU Arm Embedded
linker/binutils:

```sh
python3 firmware/reconstructed/exact_clang18/build_v204.py \
  --output /tmp/V204.elf \
  --flat-output /tmp/V204.payload.bin \
  --container-output /tmp/V204.bin
```

The source tree also preserves the original analysis exports and historical
reconstruction notes for traceability; those are not inputs to this build.
