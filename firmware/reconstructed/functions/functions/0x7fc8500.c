// rea decompile_all
// name: save_valid_measurement_range_clear_stale_at_8500
// address: 0x7fc8500
// body: available
// range: 0x7fc8500-0x7fc8561 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void save_valid_measurement_range_clear_stale_at_8500(void)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  short sVar4;
  
  iVar3 = v204_radio_range_literal_pool.view.device_control_state_bytes;
  iVar2 = v204_measurement_range_state_bytes;
  if (*(int *)(v204_measurement_range_state_bytes + 0x3c) == 1) {
    uVar1 = *(ushort *)(v204_measurement_range_state_bytes + 0x40);
    if (uVar1 == 0) {
      sVar4 = *(short *)(v204_measurement_range_state_bytes + 0x44);
      if (sVar4 == 0) goto save_valid_measurement_range_clear_stale_at_8500_label_at_07fc854e;
    }
    else {
      if (uVar1 == DAT_07fc8564) goto save_valid_measurement_range_clear_stale_at_8500_label_at_07fc854e;
      sVar4 = *(short *)(v204_measurement_range_state_bytes + 0x44);
    }
    *(ushort *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x42) = uVar1;
    *(short *)(iVar3 + 0x46) = sVar4;
    *(undefined2 *)(iVar3 + 0x44) = *(undefined2 *)(iVar2 + 0x42);
    *(undefined2 *)(iVar3 + 0x48) = *(undefined2 *)(iVar2 + 0x46);
    format_byte_span_spaced_hexadecimal_line_at_b178(iVar2 + 0x40,8);
    *(undefined1 *)(iVar3 + 0x1a) = 0;
    *(undefined1 *)(iVar3 + 0x19) = 1;
    return;
  }
save_valid_measurement_range_clear_stale_at_8500_label_at_07fc854e:
  *(undefined2 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x42) = 0;
  *(undefined2 *)(iVar3 + 0x48) = 0;
  *(undefined4 *)(iVar3 + 0x44) = 0;
  *(undefined1 *)(iVar3 + 0x1a) = 1;
  *(undefined1 *)(iVar3 + 0x19) = 0;
  return;
}

