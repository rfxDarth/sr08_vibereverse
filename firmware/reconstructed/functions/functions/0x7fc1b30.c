// rea decompile_all
// name: convert_unsigned_integer_to_float_bits
// address: 0x7fc1b30
// body: available
// range: 0x7fc1b30-0x7fc1b3d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void convert_unsigned_integer_to_float_bits(undefined4 value)

{
  normalize_and_round_v204_software_float(value,0,0,0x96);
  return;
}

