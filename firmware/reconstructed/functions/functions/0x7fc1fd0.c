// rea decompile_all
// name: wait_for_state_flag_bit_one_to_clear_and_read_result
// address: 0x7fc1fd0
// body: available
// range: 0x7fc1fd0-0x7fc1fed inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ushort wait_for_state_flag_bit_one_to_clear_and_read_result(void)

{
  ushort *puVar1;
  uint uVar2;
  bool bVar3;
  
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = *DAT_07fc20a4 | 2;
  uVar2 = DAT_07fc1ff0;
  do {
    bVar3 = 0xfffffffe < uVar2;
    uVar2 = uVar2 + 1;
    if (bVar3) break;
  } while ((int)((uint)*puVar1 << 0x1e) < 0);
  puVar1[4] = 0;
  return puVar1[5];
}

