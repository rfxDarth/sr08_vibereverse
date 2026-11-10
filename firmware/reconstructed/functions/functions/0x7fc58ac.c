// rea decompile_all
// name: visit_selected_five_word_records_update_at_58ac
// address: 0x7fc58ac
// body: available
// range: 0x7fc58ac-0x7fc58f9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void visit_selected_five_word_records_update_at_58ac(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  uint uVar4;
  
  uVar2 = DAT_07fc5c40;
  iVar1 = *(int *)(param_1 + 0x10);
  puVar3 = DAT_07fc5c38;
  for (uVar4 = 1; puVar3 = puVar3 + 5, uVar4 != 6; uVar4 = uVar4 + 1) {
    if (((0x2aU >> (uVar4 & 0xff) & 1) != 0) && (*(ushort *)*puVar3 == uVar2)) {
      replace_byte_in_variable_length_record_at_index(param_2,uVar4 & 0xff,0);
    }
  }
  uVar2 = (uint)*(short *)(iVar1 + 2);
  ke_state_set(param_2 << 8 & uVar2 >> 0xf | DAT_07fc5a68 & uVar2,0);
  return;
}

