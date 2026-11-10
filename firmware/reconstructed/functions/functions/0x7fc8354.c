// rea decompile_all
// name: read_three_byte_samples_and_update_history
// address: 0x7fc8354
// body: available
// range: 0x7fc8354-0x7fc84e3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined2 read_three_byte_samples_and_update_history(int param_1)

{
  undefined2 uVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  undefined4 uVar5;
  ushort division_remainder;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  undefined4 *puVar9;
  uint uVar10;
  uint uVar11;
  byte *pbVar12;
  int iVar13;
  undefined4 local_3c;
  byte local_38 [2];
  byte local_36;
  byte local_18;
  byte local_17;
  byte local_16;
  
  uVar2 = ensure_radio_profile_then_exchange_word(0x40);
  if (uVar2 < (uint)(param_1 << 1)) {
    uVar1 = 0;
  }
  else {
    __aeabi_idiv(uVar2 - param_1,param_1);
    iVar13 = v204_sensor_diagnostic_format;
    uVar11 = (uVar2 - param_1) - (uint)division_remainder;
    if (*(char *)(v204_sensor_diagnostic_format + 0x11) == '\x01') {
      read_device_bytes_into_buffer(0x41,&local_18,3);
      *(undefined1 *)(iVar13 + 0x11) = 0;
    }
    uVar6 = uVar11 * 3 & 0xffff;
    if (uVar6 < 0x1f) {
      pbVar12 = local_38;
      local_3c = uVar11;
      read_device_bytes_into_buffer(0x41,pbVar12,uVar11 * 3 & 0xff);
      puVar3 = (uint *)(DAT_07fc84f8 + 0x104);
      for (uVar8 = uVar11 & 0xffff; iVar13 = v204_sensor_diagnostic_format, uVar8 != 0; uVar8 = uVar8 - 1) {
        uVar10 = (uint)pbVar12[2] << 0x10;
        if ((int)((uint)pbVar12[2] << 0x1b) < 0) {
          uVar10 = uVar10 | *pbVar12 | (uint)pbVar12[1] << 8 | DAT_07fc84fc;
        }
        else {
          uVar10 = (uVar10 & 0x1f0000) + (uint)*pbVar12 | (uint)pbVar12[1] << 8;
        }
        *puVar3 = uVar10;
        puVar3 = puVar3 + 1;
        pbVar12 = pbVar12 + 3;
      }
      uVar6 = (local_38[uVar6 - 1] & 0x7f) >> 5;
      uVar8 = (local_36 & 0x7f) >> 5;
      if (uVar8 != 0) {
        puVar9 = (undefined4 *)(DAT_07fc84f8 + 0x104);
        local_3c = (local_3c - param_1) + uVar8;
        uVar7 = local_3c & 0xffff;
        for (uVar10 = uVar7; uVar10 != 0; uVar10 = uVar10 - 1) {
          *puVar9 = puVar9[param_1 - uVar8];
          puVar9 = puVar9 + 1;
        }
        puVar9 = (undefined4 *)(uVar7 * 4 + DAT_07fc84f8 + 0x104);
        for (; uVar7 < (uVar11 & 0xffff); uVar7 = uVar7 + 1) {
          *puVar9 = 0;
          puVar9 = puVar9 + 1;
        }
      }
      if ((int)uVar6 < param_1 + -1) {
        uVar8 = local_3c & 0xffff;
        uVar11 = uVar8 + param_1 + ~uVar6;
        iVar4 = ~uVar6 + param_1;
        for (uVar6 = uVar8; uVar6 < iVar4 + uVar8; uVar6 = uVar6 + 1) {
          read_device_bytes_into_buffer(0x41,&local_18,3);
        }
        if (uVar11 <= uVar8) {
          uVar11 = uVar8;
        }
        *(uint *)(DAT_07fc84f8 + uVar11 * 4 + 0x104) =
             (uint)local_17 * 0x100 + (uint)local_18 + (local_16 & 0x1f) * 0x10000;
        iVar13 = v204_sensor_diagnostic_format;
      }
      else {
        iVar4 = ~uVar6 + param_1;
      }
      uVar1 = __aeabi_uidiv(iVar4 + local_3c & 0xffff,param_1);
    }
    else {
      format_and_send_uart_message(s_3918_f_e__d_07fc84e8);
      uVar1 = 0;
    }
    if (uVar2 == 0x40) {
      uVar5 = ensure_radio_profile_then_exchange_word(0x3d);
      send_device_command_pair(0x3d,0);
      wait_shared_timer_delta_exceed_requested_at_4458(5);
      send_device_command_pair(0x3d,uVar5);
      *(undefined1 *)(iVar13 + 0x11) = 1;
    }
  }
  return uVar1;
}

