// rea decompile_all
// name: adjust_value_for_negative_status
// address: 0x7fc1b88
// body: available
// range: 0x7fc1b88-0x7fc1b97 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint round_v204_float_value_from_status(uint value,uint rounding_status)

{
  if (((int)rounding_status < 0) && (value = value + 1, (rounding_status & 0x7fffffff) == 0)) {
    value = value & 0xfffffffe;
  }
  return value;
}

