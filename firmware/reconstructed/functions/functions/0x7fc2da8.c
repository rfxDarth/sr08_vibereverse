// rea decompile_all
// name: read_state_word_at_10_with_record_flag_clamp
// address: 0x7fc2da8
// body: available
// range: 0x7fc2da8-0x7fc2dc3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ushort read_state_word_at_10_with_record_flag_clamp(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  
  iVar3 = read_record_flag_bit_zero();
  uVar1 = *(ushort *)(v204_device_setting_literal_pool.view.state_bytes + 10);
  uVar2 = uVar1;
  if (uVar1 < 0x15) {
    uVar2 = 0x14;
  }
  if (iVar3 != 0) {
    uVar2 = uVar1;
  }
  return uVar2;
}

