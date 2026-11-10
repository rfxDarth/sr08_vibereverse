// rea decompile_all
// name: allocate_ble_data_record_and_send
// address: 0x7fc3ab0
// body: available
// range: 0x7fc3ab0-0x7fc3b1f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void allocate_ble_data_record_and_send(undefined1 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  
  iVar1 = find_keyed_record_value(0x26);
  uVar2 = prf_get_task_from_id(0x26);
  puVar3 = (undefined1 *)ke_msg_alloc(v204_ble_diagnostic_text,uVar2,4,param_3 + 8U & 0xffff);
  if (puVar3 != (undefined1 *)0x0) {
    *(char *)(iVar1 + 0x22) = *(char *)(iVar1 + 0x22) + '\x01';
    *(short *)(puVar3 + 4) = (short)param_3;
    puVar3[6] = param_1;
    *(undefined2 *)(puVar3 + 2) = 0;
    *puVar3 = 0;
    __aeabi_memcpy(puVar3 + 7,param_2,param_3);
    uVar2 = request_sensor_sample_then_scale_result();
    format_and_send_uart_message(s_ble_send__d_07fc3b24,uVar2);
    format_byte_span_spaced_hexadecimal_line_at_b178(puVar3 + 7,param_3);
    ke_msg_send(puVar3);
    return;
  }
  format_and_send_uart_message(s_malloc_failure_07fc3b30);
  return;
}

