// rea decompile_all
// name: update_selected_hot_bit_associated_bit_at_1d44
// address: 0x7fc1d44
// body: available
// range: 0x7fc1d44-0x7fc1d7f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_selected_hot_bit_associated_bit_at_1d44(byte bit_index)

{
  uint uVar1;
  uint uVar2;
  ushort uVar3;
  
  uVar1 = 1 << (bit_index - 10 & 0xff);
  uVar2 = uVar1 & 0xffff;
  uVar3 = 0;
  for (uVar2 = uVar2 + DAT_07fc1d80 ^ uVar2; (uVar2 >> 1 & 0xffff) != 0; uVar2 = uVar2 >> 1 & 0xffff
      ) {
    uVar3 = uVar3 + 1;
  }
  *DAT_07fc1d84 = (ushort)(1 << (uVar3 & 0xff)) | *DAT_07fc1d84 & ~(ushort)uVar1;
  *DAT_07fc1e44 = 1 << (uint)bit_index;
  return;
}

