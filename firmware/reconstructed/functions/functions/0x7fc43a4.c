// rea decompile_all
// name: build_mode_status_record_select_corresponding_at_43a4
// address: 0x7fc43a4
// body: available
// range: 0x7fc43a4-0x7fc43e9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void build_mode_status_record_select_corresponding_at_43a4(int mode)

{
  int iVar1;
  undefined2 uVar2;
  
  serialize_status_and_global_values_with_word(*DAT_07fc43ec,1);
  start_or_stop_sensor_calibration(0);
  iVar1 = DAT_07fc4434;
  *(short *)(DAT_07fc4434 + 0x98) = (short)DAT_07fc43f0;
  *(undefined4 *)(iVar1 + 0x9c) = *(undefined4 *)(DAT_07fc4438 + 0x2c);
  if (mode == 2) {
    uVar2 = (undefined2)DAT_07fc43f4;
  }
  else {
    uVar2 = 0;
  }
  if (mode == 1) {
    uVar2 = (undefined2)DAT_07fc43f8;
  }
  stage_and_program_flash_region_3c000();
  *DAT_07fc43fc = uVar2;
  platform_reset(0);
  return;
}

