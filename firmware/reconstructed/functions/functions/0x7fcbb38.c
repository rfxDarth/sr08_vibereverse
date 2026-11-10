// rea decompile_all
// name: drive_ring_s_output_state_machine_at_bb38
// address: 0x7fcbb38
// body: available
// range: 0x7fcbb38-0x7fcbb69 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int drive_ring_s_output_state_machine(void)

{
  int iVar1;
  int iVar2;
  
  iVar1 = map_record_flag_to_status_mask();
  if (iVar1 == 0) {
    iVar2 = 0;
    set_ring_s_output_mode_and_enable(0);
    update_mode_dependent_output_state_during_flash_transfer(6);
    iVar1 = poll_output_state_table_and_report_count_advance();
    if (iVar1 == 0) {
      iVar1 = initialize_output_state_for_mode_five_hundred();
      if (-1 < iVar1 << 0x1e) {
        iVar2 = -0xc;
      }
      return iVar2;
    }
  }
  return iVar1;
}

