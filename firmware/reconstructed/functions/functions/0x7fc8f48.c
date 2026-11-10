// rea decompile_all
// name: clear_cached_sensor_fields_refresh_calibration_at_8f48
// address: 0x7fc8f48
// body: available
// range: 0x7fc8f48-0x7fc8f9f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_cached_sensor_fields_refresh_calibration_at_8f48(undefined4 param_1,undefined1 param_2)

{
  int iVar1;
  code *pcVar2;
  undefined1 uVar3;
  uint uVar4;
  
  iVar1 = DAT_07fc8fa0;
  *(undefined1 *)(DAT_07fc8fa0 + 0x12) = param_2;
  *(undefined1 *)(iVar1 + 0x18) = 0;
  *(undefined1 *)(iVar1 + 0x17) = 0;
  *(undefined2 *)(iVar1 + 0x14) = 0;
  clear_state_counter_at_offset_four();
  *(undefined2 *)(iVar1 + 0x1e) = 0;
  clear_state_word_at_offset_1c();
  retry_radio_command_until_status_0x27();
  uVar4 = ensure_radio_profile_then_exchange_word(0x47);
  if (uVar4 < 0x40) {
    ensure_radio_profile_then_scan_paired_bytes(DAT_07fc8fa4);
    pcVar2 = DAT_07fc8fa8;
    uVar3 = (*DAT_07fc8fa8)(0x45);
    iVar1 = DAT_07fc8fac;
    *(undefined1 *)(DAT_07fc8fac + 3) = uVar3;
    uVar3 = (*pcVar2)(0x46);
    *(undefined1 *)(iVar1 + 5) = uVar3;
    uVar3 = (*pcVar2)(0x47);
    *(undefined1 *)(iVar1 + 7) = uVar3;
    uVar3 = (*pcVar2)(0x48);
    *(undefined1 *)(iVar1 + 9) = uVar3;
    ensure_radio_profile_then_scan_paired_bytes(iVar1);
  }
  configure_command_record(param_1);
  return;
}

