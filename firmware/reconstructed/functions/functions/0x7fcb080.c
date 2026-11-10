// rea decompile_all
// name: find_key_bounded_table_return_preceding_at_b080
// address: 0x7fcb080
// body: available
// range: 0x7fcb080-0x7fcb0a5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 find_keyed_record_value(uint key)

{
  ushort *puVar1;
  ushort *puVar2;
  int iVar3;
  
  iVar3 = 0x21;
  puVar1 = (ushort *)(v204_dispatch_records + 0x16);
  do {
    puVar2 = puVar1;
    iVar3 = iVar3 + -1;
    if (iVar3 == 0) {
      return 0;
    }
    puVar1 = puVar2 + 0xc;
  } while (*puVar2 != key);
  return *(undefined4 *)(puVar2 + -3);
}

