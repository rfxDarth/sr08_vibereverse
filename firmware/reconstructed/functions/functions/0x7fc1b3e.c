// rea decompile_all
// name: convert_float32_bits_to_unsigned_integer
// address: 0x7fc1b3e
// body: available
// range: 0x7fc1b3e-0x7fc1b65 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint convert_float32_bits_to_unsigned_integer(uint bits)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = (bits & 0x7fffffff) >> 0x17;
  uVar1 = (bits & 0x7fffff) + 0x800000;
  if (uVar2 < 0x7f) {
    return 0;
  }
  if (uVar2 < 0x97) {
    return uVar1 >> (0x96 - uVar2 & 0xff);
  }
  return uVar1 << (uVar2 - 0x96 & 0xff);
}

