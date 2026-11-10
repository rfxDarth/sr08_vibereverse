// rea decompile_all
// name: match_measurement_index_and_write_offset
// address: 0x7fc5a88
// body: available
// range: 0x7fc5a88-0x7fc5aad inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 match_measurement_index_and_write_offset(uint candidate_index,char *relative_index)

{
  ushort uVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar2 = find_keyed_record_value(0xfd);
  uVar1 = *(ushort *)(iVar2 + 4);
  uVar3 = 0x80;
  if ((uVar1 <= candidate_index) && (candidate_index < (uint)*(byte *)(iVar2 + 6) + (uint)uVar1)) {
    *relative_index = (char)candidate_index - (char)uVar1;
    uVar3 = 0;
  }
  return uVar3;
}

