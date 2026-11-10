// rea decompile_all
// name: process_crc_byte_eight_reflected_polynomial_at_5740
// address: 0x7fc5740
// body: available
// range: 0x7fc5740-0x7fc5757 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void crc32_update_one_byte(uint crc_state)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  for (iVar2 = 8; iVar2 != 0; iVar2 = iVar2 + -1) {
    uVar3 = crc_state >> 1;
    uVar1 = crc_state & 1;
    crc_state = uVar3;
    if (uVar1 != 0) {
      crc_state = uVar3 ^ v204_crc32_reflected_polynomial;
    }
  }
  return;
}

