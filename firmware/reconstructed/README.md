# V204 reconstruction attempt

`functions/` contains Ghidra 12.1.4 pseudocode for all 258 procedures REA identified in `V204.payload.bin`. These `.c` files are decompiler output, not recovered vendor source.

## Compile experiment

Run from the project root:

```bash
python3 firmware/reconstructed/build_pseudocode.py
```

The script generates a minimal `ghidra_compat.h`, compiles each procedure as Thumb code for Cortex-M0 with the installed `arm-none-eabi-gcc`, and partially links the successful objects. The latest run compiled 163 of 258 procedures and produced `build/V204_reconstructed.o`; 95 did not compile because Ghidra's inferred pointer, union, callback, and type information is insufficient for C compilation.

`V204_motion.o` is a successful compile of the sensor callback at `0x7fc41e4`. Its function is 492 bytes; the original body occupies 424 bytes and begins with different instructions. This demonstrates that the decompiled C can be compiled for inspection, but it does not reproduce the original code bytes.

The shim is intentionally labeled approximate. It does not provide the original Dialog SDK, ROM implementations, startup code, linker layout, compiler version, or firmware packaging/header logic. The build outputs are analysis artifacts and are not flashable firmware.

Full per-function limitations and Evidence are in `functions/decompile-index.json` and `../decompiled/V204.rea-evidence.json`.

## Recovered behavior slice

`v204_core.c` / `v204_core.h` hold the compileable Cortex-M0 slice reconstructed so far: the three-byte event format, accelerometer sample decode and recovered register-init tables, visible motion-event timing gate, JRing app's four-byte little-endian `0x51` step-count report decode, recovered step-counter accumulator and type-`0x03` record serialization, an isolated likely-HR candidate-rate curve, little-endian epoch decode/calendar conversion, confirmed display GPIO maps and seven-segment digit patterns, number formatting and buffer rendering, display scan scheduling, state-entry period writes, and raw state flags. The MVP target compiles this module and uses its number formatter, digit-scan helper, and accelerometer register tables. `firmware/mvp/v204_accel.c` ports the V204 I2C configuration, sensor ID/variant probe, initialization writes, and six-byte sample read through the DA14585 SDK; startup calls the init routine. `firmware/mvp/v204_gatt.c` restores the recovered `56ff` service through SDK CUSTS1 and supports a limited set of original commands. Neither driver has been hardware-validated; periodic motion sampling/classification, the full command dispatcher, date-change side effects/persistence, and the broader BLE report path remain incomplete. Full HR acquisition/smoothing/reporting and SpO2 remain unported. Build just this core slice with:

```bash
arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -std=c11 -Os -Wall -Wextra -Werror \
  -c firmware/reconstructed/v204_core.c \
  -o firmware/reconstructed/build/v204_core.o
```

This object is not a complete ring image. The subsystem map and current unknowns are in `V204_REBUILD.md`.
