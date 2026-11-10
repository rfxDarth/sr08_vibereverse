// rea decompile_all
// name: shift_unsigned_64_right
// address: 0x7fc1b66
// body: available
// range: 0x7fc1b66-0x7fc1b87 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ulonglong shift_unsigned_64_right(uint low,uint high,uint shift)

{
  if (0x1f < (int)shift) {
    return (ulonglong)(high >> (shift - 0x20 & 0xff));
  }
  return CONCAT44(high >> (shift & 0xff),
                  low >> (shift & 0xff) | high << (0x20 - shift & 0xff));
}

