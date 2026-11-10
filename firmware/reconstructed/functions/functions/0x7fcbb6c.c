// rea decompile_all
// name: set_ring_s_output_mode_and_enable
// address: 0x7fcbb6c
// body: available
// range: 0x7fcbb6c-0x7fcbb8b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void set_ring_s_output_mode_and_enable(short mode_value)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fcbb8c;
  *DAT_07fcbb8c = *DAT_07fcbb8c & 0xfffe;
  *puVar1 = mode_value << 7 | (ushort)DAT_07fcbb90 & *puVar1;
  *puVar1 = *puVar1 | 1;
  return;
}

