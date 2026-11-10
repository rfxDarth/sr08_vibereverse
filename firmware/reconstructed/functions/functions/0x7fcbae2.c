// rea decompile_all
// name: initialize_shared_state_when_status_clear
// address: 0x7fcbae2
// body: available
// range: 0x7fcbae2-0x7fcbafb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_shared_state_when_status_clear(void)

{
  int iVar1;
  
  iVar1 = map_record_flag_to_status_mask();
  if (iVar1 != 0) {
    return;
  }
  set_ring_s_output_mode_and_enable(0);
  update_mode_dependent_output_state_during_flash_transfer(0xb9);
  return;
}

