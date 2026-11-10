// rea decompile_all
// name: map_record_flag_to_status_mask
// address: 0x7fcbad0
// body: available
// range: 0x7fcbad0-0x7fcbae1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint map_record_flag_to_status_mask(void)

{
  uint uVar1;
  
  uVar1 = initialize_output_state_for_mode_five_hundred();
  return -(uVar1 & 1) & 0xfffffff2;
}

