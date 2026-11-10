// rea decompile_all
// name: update_measurement_fields_emit_typed_sensor_at_6568
// address: 0x7fc6568
// body: available
// range: 0x7fc6568-0x7fc65bd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 update_measurement_fields_emit_typed_sensor_at_6568(undefined4 param_1,char *param_2,undefined4 param_3,uint param_4)

{
  undefined2 uVar1;
  int iVar2;
  char *pcVar3;
  char cVar4;
  
  iVar2 = DAT_07fc65c0;
  if (*param_2 == '\x01') {
    *(undefined2 *)(DAT_07fc65c0 + 0x6a) = *(undefined2 *)(param_2 + 2);
  }
  else {
    if (*param_2 != '\0') {
      cVar4 = 'H';
      goto update_measurement_fields_emit_typed_sensor_at_6568_label_at_07fc659c;
    }
    uVar1 = *(undefined2 *)(param_2 + 2);
    *(char *)(DAT_07fc65c0 + 0x48) = (char)uVar1;
    __aeabi_memcpy(iVar2 + 0x49,param_2 + 4,(char)uVar1);
  }
  cVar4 = '\0';
update_measurement_fields_emit_typed_sensor_at_6568_label_at_07fc659c:
  pcVar3 = (char *)ke_msg_alloc(DAT_07fc65c4,param_4 & 0xffffff0a | 10,4,2);
  pcVar3[1] = cVar4;
  *pcVar3 = *param_2;
  ke_msg_send();
  return 0;
}

