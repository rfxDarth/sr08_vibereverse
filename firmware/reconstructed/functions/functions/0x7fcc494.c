// rea decompile_all
// name: read_record_flag_bit_zero
// address: 0x7fcc494
// body: available
// range: 0x7fcc494-0x7fcc4ab inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ushort read_record_flag_bit_zero(void)

{
  int iVar1;
  
  iVar1 = find_keyed_record_value(0xfc);
  if (iVar1 != 0) {
    return *(ushort *)(iVar1 + 10) & 1;
  }
  return 0;
}

