// rea decompile_all
// name: reproduce_sensor_record_allocation_out_range_at_6724
// address: 0x7fc6724
// body: available
// range: 0x7fc6724-0x7fc676f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 reproduce_sensor_record_allocation_out_range_at_6724(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined1 *puVar2;
  uint uVar3;
  
  uVar3 = param_4;
  iVar1 = ke_state_get(param_3);
  if (iVar1 == 0) {
    iVar1 = find_keyed_record_value(0xfd);
    puVar2 = (undefined1 *)ke_msg_alloc(DAT_07fc6770,4,param_3,4,uVar3);
    *puVar2 = (char)(param_4 >> 8);
    if (param_4 >> 0xb != 0) {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    *(short *)(puVar2 + 2) = *param_2 - *(short *)(iVar1 + 4);
    ke_msg_send();
  }
  return 0;
}

