// rea decompile_all
// name: apply_sensor_control_action
// address: 0x7fc8e58
// body: available
// range: 0x7fc8e58-0x7fc8f27 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void apply_sensor_control_action(int action_code)

{
  undefined2 *puVar1;
  int iVar2;
  
  __aeabi_memclr(DAT_07fc8f28 + 0x40,0x28);
  if (action_code == 2) {
    clear_cached_sensor_fields_refresh_calibration_at_8f48(2,1);
    write_shared_sensor_profile_fields(0x1e,0x28,0x32,DAT_07fc8f30,DAT_07fc8f2c,0x96);
    copy_incoming_fields_fixed_shared_command_at_eeac(0x20,DAT_07fc8f34,DAT_07fc8f34,DAT_07fc8f38,0x96,500,200,200,1,0x25,3);
    iVar2 = retry_radio_command_until_status_0x27();
    if (((iVar2 != 0) && (*(char *)(DAT_07fc8fa0 + 0x1e) == '\0')) &&
       (iVar2 = initialize_sensor_processing_state(), puVar1 = DAT_07fc8f3c, iVar2 != 0)) {
      *(undefined1 *)(DAT_07fc8f3c + 2) = 2;
      *(undefined1 *)((int)puVar1 + 3) = 2;
      dispatch_radio_state_action(0);
    }
  }
  else {
    if (((action_code == 0x400) || (action_code == 0x1000)) || (action_code == 0x800)) {
      clear_cached_sensor_fields_refresh_calibration_at_8f48(action_code,7);
      return;
    }
    clear_cached_sensor_fields_refresh_calibration_at_8f48(action_code,0);
    if (*(char *)(DAT_07fc8fa0 + 0x17) == '\0') {
      initialize_shared_control_state_tables();
      *DAT_07fc8f3c = (short)DAT_07fc8f40;
      six_way_command_dispatch_default_branch_at_8040(0);
    }
    if (1 < action_code - 1U) {
      return;
    }
  }
  write_indexed_timing_record(0,0x28,DAT_07fc8f44);
  return;
}

