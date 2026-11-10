// rea decompile_all
// name: prepare_measurement_record_append_at_5d34
// address: 0x7fc5d34
// body: available
// range: 0x7fc5d34-0x7fc5da9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined8 prepare_measurement_record_append_at_5d34(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 local_18;
  
  local_18 = param_4;
  iVar3 = find_keyed_record_value(0xfd);
  sVar1 = *(short *)(iVar3 + 4);
  sVar2 = *(short *)(param_2 + 2);
  iVar4 = ke_state_get(param_3);
  if (iVar4 == 1) {
    uVar5 = 2;
  }
  else {
    iVar4 = search_next_item_decoded_marker_matches_at_7284(sVar2 + sVar1);
    if (iVar4 == 0) {
      *DAT_07fc5dac = 200;
      *DAT_07fc5db0 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar4 = match_measurement_index_and_write_offset(iVar4,&local_18);
    if (iVar4 != 0) {
      *DAT_07fc5dac = 200;
      *DAT_07fc5db0 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar5 = 1;
    ke_state_set(param_3,1);
    *(undefined1 *)(iVar3 + 0xc) = 0;
    *(int *)(iVar3 + 8) = param_2 + -0xc;
    *(char *)(iVar3 + 0xd) = (char)local_18;
    append_or_finalize_measurement_record_chunk();
  }
  return CONCAT44(param_2,uVar5);
}

