// rea decompile_all
// name: dispatch_through_seven_entry_callback_table_at_3460
// address: 0x7fc3460
// body: available
// range: 0x7fc3460-0x7fc34a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined1 dispatch_through_seven_entry_callback_table(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 local_18 [4];
  
  iVar1 = 0;
  do {
    if (iVar1 + 4 == 0x1c) {
      dispatch_service_event_and_update_shared_state(param_1,param_2,param_3,param_4);
      return 0;
    }
    iVar2 = (**(code **)(DAT_07fc34a4 + iVar1))(param_1,param_2,param_3,param_4,local_18);
    iVar1 = iVar1 + 4;
  } while (iVar2 != 0);
  return local_18[0];
}

