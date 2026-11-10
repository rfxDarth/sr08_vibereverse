// rea decompile_all
// name: software_float_normalization_round_even_helper_at_1b98
// address: 0x7fc1b98
// body: available
// range: 0x7fc1b98-0x7fc1c09 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint normalize_and_round_v204_software_float(uint significand,uint sticky,int sign_bit,int exponent_base)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = 0;
  if (significand >> 0x10 == 0) {
    iVar2 = 0x10;
    significand = significand << 0x10;
    if (significand == 0) {
      if (sticky == 0) {
        return 0;
      }
      iVar2 = 0x11;
    }
  }
  if (significand >> 0x18 == 0) {
    significand = significand << 8;
    iVar2 = iVar2 + 8;
  }
  if (significand >> 0x1c == 0) {
    significand = significand << 4;
    iVar2 = iVar2 + 4;
  }
  if (significand >> 0x1e == 0) {
    significand = significand << 2;
    iVar2 = iVar2 + 2;
  }
  if (-1 < (int)significand) {
    significand = significand << 1;
    iVar2 = iVar2 + 1;
  }
  if (sticky != 0) {
    significand = significand | (uint)(sticky << iVar2 != 0) | sticky >> (0x20U - iVar2 & 0xff);
  }
  iVar2 = (exponent_base - iVar2) + 7;
  if (iVar2 < 0) {
    uVar1 = 0;
  }
  else {
    uVar1 = iVar2 * 0x800000 + (significand >> 8) + sign_bit;
    if (((int)(significand * 0x1000000) < 0) && (uVar1 = uVar1 + 1, (significand & 0x7f) == 0)) {
      return uVar1 & 0xfffffffe;
    }
  }
  return uVar1;
}

