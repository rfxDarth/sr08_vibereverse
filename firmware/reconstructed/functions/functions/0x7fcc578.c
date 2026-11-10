// rea decompile_all
// name: dispatch_service_event_and_update_shared_state
// address: 0x7fcc578
// body: available
// range: 0x7fcc578-0x7fcc6df inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void dispatch_service_event_and_update_shared_state(int param_1,undefined2 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  short sVar5;
  undefined1 local_28;
  undefined1 auStack_27 [19];
  
  if (param_1 == v204_upload_diagnostic_format) {
    if (param_2[1] == 5) {
      handle_record_flag_and_queue_sensor_configuration();
    }
    else if (param_2[1] == 2) {
      format_and_send_uart_message(&DAT_07fcc6f4);
      format_byte_span_spaced_hexadecimal_line_at_b178(param_2 + 3,0x14);
      uVar1 = request_sensor_sample_then_scale_result();
      format_and_send_uart_message(DAT_07fcc6f8,uVar1);
      local_28 = *(undefined1 *)(param_2 + 3);
      __aeabi_memcpy(auStack_27,(undefined1 *)((int)param_2 + 7),0x13);
      enqueue_ring_record_if_space(DAT_07fcc6fc + 0x48,&local_28);
      store_measurement_value_divided_by_1000();
      uVar2 = (uint)*(byte *)(param_2 + 3);
      if ((((uVar2 - 0x10 < 0x16) && ((1 << (uVar2 - 0x10 & 0xff) & DAT_07fcc700) != 0)) ||
          ((uVar2 - 0x31 < 0x1c && ((1 << (uVar2 - 0x31 & 0xff) & DAT_07fcc704) != 0)))) ||
         (uVar2 == 1)) {
        gate_periodic_record_creation_sensor_mode_at_2dc4();
      }
    }
  }
  else {
    if (param_1 == DAT_07fcc6e4) {
      __aeabi_memclr(&local_28,0x14);
      sVar5 = 0;
      puVar4 = (undefined1 *)0x0;
      if (*(char *)((int)param_2 + 1) == '\x01') {
        if (*(char *)((int)param_2 + 3) == '\x01') {
          sVar5 = 0x92;
          puVar4 = DAT_07fcc710;
        }
        else {
          sVar5 = 0;
          puVar4 = (undefined1 *)0x0;
          if (*(char *)((int)param_2 + 3) == '\0') {
            sVar5 = 0;
            puVar4 = (undefined1 *)0x0;
            if (*(byte *)(param_2 + 3) < 2) {
              sVar5 = *(short *)(DAT_07fcc714 + (uint)*(byte *)(param_2 + 3) * 0xc + 2);
              puVar4 = &local_28;
            }
          }
        }
      }
      puVar3 = (undefined1 *)ke_msg_alloc(DAT_07fcc70c,param_4,param_3,sVar5 + 10);
      puVar3[2] = 0;
      *puVar3 = (char)((uint)param_4 >> 8);
      puVar3[1] = *(undefined1 *)((int)param_2 + 1);
      puVar3[4] = *(undefined1 *)(param_2 + 1);
      puVar3[8] = *(undefined1 *)(param_2 + 3);
      puVar3[5] = *(undefined1 *)((int)param_2 + 3);
      *(short *)(puVar3 + 6) = sVar5;
      __aeabi_memcpy(puVar3 + 9,puVar4,sVar5);
    }
    else {
      if (param_1 != DAT_07fcc6e8) {
        if (param_1 == DAT_07fcc6ec) {
          *(undefined1 *)(DAT_07fcc708 + 0xb0) = 0;
          return;
        }
        if (param_1 != DAT_07fcc6f0) {
          return;
        }
        format_and_send_uart_message(s_up__d__d__d_07fcc718,*param_2,param_2[1],param_2[2]);
        update_device_settings_record_run_conditional_at_2e1c(*param_2,param_2[1],param_2[2]);
        return;
      }
      puVar3 = (undefined1 *)ke_msg_alloc(DAT_07fcc70c + 2,param_4,param_3,4);
      puVar3[1] = 0;
      *puVar3 = *(undefined1 *)param_2;
      puVar3[2] = *(undefined1 *)(param_2 + 1);
      puVar3[3] = *(undefined1 *)((int)param_2 + 3);
    }
    ke_msg_send(puVar3);
  }
  return;
}

