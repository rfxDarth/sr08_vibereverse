// rea decompile_all
// name: read_current_record_value_byte
// address: 0x7fcba7c
// body: available
// range: 0x7fcba7c-0x7fcba95 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined1 read_current_record_value_byte(void)

{
  undefined1 uVar1;
  int iVar2;
  
  iVar2 = find_keyed_record_value(0xfd);
  uVar1 = 0;
  if ((iVar2 != 0) && (*(int *)(iVar2 + 0x10) != 0)) {
    uVar1 = *(undefined1 *)(*(int *)(iVar2 + 0x10) + 6);
  }
  return uVar1;
}

