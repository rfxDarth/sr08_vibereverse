// rea decompile_all
// name: optionally_calculate_three_axis_magnitude_dispatching_at_3d6c
// address: 0x7fc3d6c
// body: available
// range: 0x7fc3d6c-0x7fc3dd1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void optionally_calculate_three_axis_magnitude_dispatching_at_3d6c(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,int param_6)

{
  short sVar1;
  int iVar2;
  short local_20 [2];
  undefined2 local_1c [2];
  undefined2 local_18 [2];
  
  local_1c[0] = (undefined2)param_3;
  local_18[0] = (undefined2)param_2;
  local_20[0] = (short)param_4;
  if (param_6 == 1) {
    copy_three_signed_coordinates_to_display_state(local_18,local_1c,local_20);
    iVar2 = param_3 * param_3 + param_2 * param_2;
    param_4 = (int)local_20[0];
    if (-1 < *(char *)(DAT_07fc3dd4 + 7)) {
      iVar2 = iVar2 + param_4 * param_4;
    }
    sVar1 = integer_square_root_restoring(iVar2);
    param_1 = (int)sVar1;
  }
  update_motion_sample_history_and_activity_flags(param_1,param_2,param_3,param_4,param_5);
  return;
}

