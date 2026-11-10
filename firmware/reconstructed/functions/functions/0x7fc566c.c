// rea decompile_all
// name: initialize_peripheral_control_state
// address: 0x7fc566c
// body: available
// range: 0x7fc566c-0x7fc5689 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_peripheral_control_state(void)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fc568c;
  DAT_07fc568c[1] = 0x14;
  *puVar1 = *puVar1 | 3;
  *puVar1 = *puVar1 | 4;
  *DAT_07fc5690 = 1;
  return;
}

