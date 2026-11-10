// rea decompile_all
// name: update_indexed_delay_entry_if_changed
// address: 0x7fcc9a4
// body: available
// range: 0x7fcc9a4-0x7fcc9c1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int update_indexed_delay_entry_if_changed(int entry_index,int timing_value)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = DAT_07fcc9c4 + entry_index * 0x10;
  if (*(int *)(iVar2 + 4) != timing_value) {
    *(int *)(iVar2 + 4) = timing_value;
    uVar1 = request_sensor_sample_then_scale_result();
    *(undefined4 *)(iVar2 + 8) = uVar1;
  }
  return entry_index;
}

