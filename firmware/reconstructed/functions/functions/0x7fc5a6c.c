// rea decompile_all
// name: lookup_measurement_value_by_index
// address: 0x7fc5a6c
// body: available
// range: 0x7fc5a6c-0x7fc5a87 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


short lookup_measurement_value_by_index(uint index)

{
  short sVar1;
  int iVar2;
  
  iVar2 = find_keyed_record_value(0xfd);
  if (index < *(byte *)(iVar2 + 6)) {
    sVar1 = *(short *)(iVar2 + 4) + (short)index;
  }
  else {
    sVar1 = 0;
  }
  return sVar1;
}

