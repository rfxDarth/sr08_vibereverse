// rea decompile_all
// name: build_submit_sensor_record_incoming_sample_at_5dd8
// address: 0x7fc5dd8
// body: available
// range: 0x7fc5dd8-0x7fc5e4b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 build_submit_sensor_record_incoming_sample_at_5dd8(undefined4 param_1,byte *param_2,undefined4 param_3)

{
  undefined2 uVar1;
  int iVar2;
  undefined2 *puVar3;
  
  iVar2 = ke_state_get(param_3);
  if (iVar2 == 1) {
    iVar2 = (uint)*param_2 * 0x100 + 8;
    if (param_2[6] == 0) {
      puVar3 = (undefined2 *)ke_msg_alloc(DAT_07fc5e4c,iVar2,param_3,*(short *)(param_2 + 4) + 6)
      ;
      uVar1 = lookup_measurement_value_by_index(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0;
      *puVar3 = uVar1;
      puVar3[1] = *(undefined2 *)(param_2 + 4);
      __aeabi_memcpy((int)puVar3 + 5,param_2 + 7,*(undefined2 *)(param_2 + 4));
    }
    else {
      puVar3 = (undefined2 *)ke_msg_alloc(DAT_07fc5e4c,iVar2,param_3,6);
      uVar1 = lookup_measurement_value_by_index(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0x80;
      *puVar3 = uVar1;
    }
    ke_msg_send(puVar3);
    ke_state_set(param_3,0);
  }
  return 0;
}

