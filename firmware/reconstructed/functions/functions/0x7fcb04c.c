// rea decompile_all
// name: dispatches_fixed_size_records_callbacks_selected_at_b04c
// address: 0x7fcb04c
// body: available
// range: 0x7fcb04c-0x7fcb07f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void dispatch_fixed_size_records_by_marker(undefined4 argument)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar2 = v204_callback_table_for_type_26;
  iVar4 = v204_dispatch_records;
  for (iVar5 = 0x20; iVar5 != 0; iVar5 = iVar5 + -1) {
    cVar1 = *(char *)(iVar4 + 0x16);
    iVar3 = iVar2;
    if (((cVar1 == '&') || (iVar3 = v204_callback_table_for_type_fd, cVar1 == -3)) ||
       (iVar3 = v204_callback_table_for_type_fc, cVar1 == -4)) {
      (**(code **)(iVar3 + 8))(iVar4,argument);
    }
    iVar4 = iVar4 + 0x18;
  }
  return;
}

