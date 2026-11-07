# Clang exact-match candidates with payload-backed globals

These generated C files are Ghidra pseudocode candidates for V204 functions
that reference payload-backed `DAT_*` globals. The scanner substitutes the
observed four-byte payload values and tries 8-, 16-, and 32-bit pointer types
for dereferenced globals. Each file records the pointer-width choices in its
`#define`s. Pointer-valued payload globals targeting peripheral addresses are
also treated as volatile, including typed pointer locals loaded from them. It
maps out-of-payload `_DAT_400xxxxx` and `_DAT_500xxxxx` symbols directly to
volatile MMIO lvalues and maps Ghidra's barrier/IRQ intrinsics to their
Cortex-M instructions.
Address-taking call arguments such as `&DAT_07fca788` are translated to the
flash address of the object, rather than the address of its substituted
constant value.

Each file compiled independently with Clang 18, Cortex-M0 Thumb,
`-Os -fomit-frame-pointer`, and freestanding settings, then was linked at its
V204 address with direct calls resolved to V204 or ROM addresses. Every
emitted byte was compared with the payload starting at that address. The
The first max-five-pointer scan found 19 exact functions. Modeling pointers
into peripheral space as volatile raised the count to 24; all 24 emitted
sections match their payload bytes. The five additions are
`FUN_07fc1df8`, `FUN_07fc566c`, `FUN_07fc7308`, `FUN_07fcb924`, and
`FUN_07fcbb6c`. Two startup functions,
`FUN_07fc8c64` and `FUN_07fcf11c`, match because the intrinsic mapping emits
their `dsb`, `isb`, and interrupt-enable instructions inline. Clang 14 also
matches those two sections byte for byte. The earlier max-three-pointer scan
found 17 exact sections in both Clang versions; its results are
`../V204_clang18_data_literal_fomit_3globals.csv` and
`../V204_clang14_data_literal_fomit_3globals.csv`.
The pre-volatile full address-inventory regression is
`../V204_clang18_data_literal_fomit_5globals_address_inventory_addressfix.csv`;
the latest 24-match result is
`../V204_clang18_data_literal_fomit_5globals_mmio_volatile.csv`.
Adding address-suffixed string resolution leaves the exact set at 24 and
reduces compile errors from 121 to 116 after adding the generic callback type:
`../V204_clang18_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`.
The completed Clang 14 and Clang 18 sweeps both find these same 24 exact
functions; Clang 14's result is
`../V204_clang14_data_literal_fomit_5globals_mmio_volatile_strings_codeptr.csv`.

These files are source-level reconstructions of individual functions, not the
vendor's recovered source. The inferred pointer types and literal values must
be checked against use sites and memory maps. The full image is still far from
a bit-matching C rebuild.

Reproduce all 24 exact candidates with:

```sh
python3 firmware/decompiled/scan_data_literal_c_matches.py \
  --compiler clang-18 --optimization s --omit-frame-pointer \
  --max-pointer-globals 5 \
  --preserve-generated-c-to firmware/decompiled/reconstructed_c_clang18_literals \
  --only 07fc1c0c --only 07fc1d88 --only 07fc1df8 --only 07fc1e50 \
  --only 07fc1ee8 --only 07fc1f20 --only 07fc2e80 --only 07fc4110 \
  --only 07fc566c --only 07fc7308 --only 07fc7f58 --only 07fc7f68 \
  --only 07fc82a0 --only 07fc8850 --only 07fc8c64 --only 07fc9830 \
  --only 07fcaf60 --only 07fcb924 --only 07fcb96c --only 07fcbb6c \
  --only 07fcc3cc --only 07fcc3f0 --only 07fcc528 --only 07fcf11c
```
