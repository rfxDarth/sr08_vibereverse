// rea decompile_all
// name: process_two_packed_input_bytes_update_at_8ad8
// address: 0x7fc8ad8
// body: available
// range: 0x7fc8ad8-0x7fc8b11 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined2 process_two_packed_input_bytes_update_at_8ad8(undefined1 first_value,undefined1 second_value,undefined4 param_3,undefined4 param_4)

{
  ushort *puVar1;
  undefined2 *puVar2;
  byte *pbVar3;
  short sVar4;
  byte local_14;
  undefined1 local_13 [3];
  
  puVar1 = DAT_07fc8b14;
  pbVar3 = &local_14;
  local_13._1_2_ = (undefined2)((uint)param_4 >> 0x10);
  _local_14 = CONCAT31(CONCAT21(local_13._1_2_,second_value),first_value);
  sVar4 = 2;
  do {
    wait_for_status_mask_0x02_set_minimum_8();
    *puVar1 = (ushort)*pbVar3;
    pbVar3 = pbVar3 + 1;
    sVar4 = sVar4 + -1;
  } while (sVar4 != 0);
  wait_for_status_mask_0x04_set_minimum_32();
  wait_for_status_mask_0x20_clear_minimum_8();
  puVar2 = DAT_07fc8b18;
  if ((DAT_07fc8b18[0x16] & 1) != 0) {
    format_and_send_uart_message(DAT_07fc8b1c,0xea,1);
  }
  return *puVar2;
}

