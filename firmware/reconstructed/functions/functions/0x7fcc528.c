// rea decompile_all
// name: clear_shared_flag_bit_zero
// address: 0x7fcc528
// body: available
// range: 0x7fcc528-0x7fcc533 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_shared_control_bit_zero(void)

{
  *DAT_07fcc534 = *DAT_07fcc534 & 0xfffe;
  return;
}

