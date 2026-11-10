// rea decompile_all
// name: clear_selected_slot_s_record_series_at_74d4
// address: 0x7fc74d4
// body: available
// range: 0x7fc74d4-0x7fc7517 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_selected_slot_record_series(int param_1,uint param_2)

{
  undefined2 *puVar1;
  int iVar2;
  uint uVar3;
  
  if (param_2 < 8) {
    iVar2 = *(int *)(param_1 + 0x10);
    *(undefined2 *)(DAT_07fc7520 + 0x20) = 0;
    puVar1 = (undefined2 *)(param_2 * 2 + iVar2 + 6);
    for (uVar3 = (uint)*(byte *)(iVar2 + 0x21); uVar3 != 0; uVar3 = uVar3 - 1) {
      *puVar1 = 0;
      puVar1 = puVar1 + 0xb;
    }
    *(undefined1 *)(iVar2 + 0x22) = 0;
    ke_state_set(*(undefined2 *)(param_1 + 0x14),0);
    *(undefined1 *)(DAT_07fc75cc + 0xb0) = 0;
    return;
  }
  *DAT_07fc77f4 = 200;
  *DAT_07fc77f8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

