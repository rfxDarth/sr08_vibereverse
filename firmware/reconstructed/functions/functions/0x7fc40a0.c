// rea decompile_all
// name: search_callback_table_invoke_matching_handler_at_40a0
// address: 0x7fc40a0
// body: available
// range: 0x7fc40a0-0x7fc4101 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4
search_callback_table_invoke_matching_handler_at_40a0(uint key,undefined4 first_context,undefined4 second_context,undefined4 third_context,
            undefined1 *result,int table,int entry_count)

{
  undefined1 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  ushort *puVar4;
  ushort *puVar5;
  int iVar6;
  uint uVar7;
  
  uVar3 = 1;
  if (entry_count != 0) {
    iVar6 = entry_count + 1;
    puVar4 = (ushort *)(entry_count * 8 + table);
    do {
      puVar5 = puVar4;
      puVar4 = puVar5 + -4;
      iVar6 = iVar6 + -1;
      if (iVar6 < 1) {
        return 1;
      }
      uVar7 = (uint)*puVar4;
    } while ((uVar7 != key) && (uVar7 != DAT_07fc4104));
    pcVar2 = *(code **)(puVar5 + -2);
    if (pcVar2 == (code *)0x0) {
      *DAT_07fc4108 = 200;
      *DAT_07fc410c = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar1 = (*pcVar2)(key,first_context,third_context,second_context);
    *result = uVar1;
    uVar3 = 0;
  }
  return uVar3;
}

