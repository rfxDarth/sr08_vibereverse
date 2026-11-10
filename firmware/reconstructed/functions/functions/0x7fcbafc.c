// rea decompile_all
// name: initialize_output_state_for_mode_five_hundred
// address: 0x7fcbafc
// body: available
// range: 0x7fcbafc-0x7fcbb0f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined2 initialize_output_state_for_mode_five_hundred(void)

{
  undefined2 uVar1;
  
  set_ring_s_output_mode_and_enable(1);
  uVar1 = update_mode_dependent_output_state_during_flash_transfer(0x500);
  return uVar1;
}

