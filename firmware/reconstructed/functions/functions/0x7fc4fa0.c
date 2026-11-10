// rea decompile_all
// name: reset_mode_state_clear_associated_flag_at_4fa0
// address: 0x7fc4fa0
// body: available
// range: 0x7fc4fa0-0x7fc4fc1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void reset_mode_state_clear_associated_flag_at_4fa0(void)

{
  int iVar1;
  
  iVar1 = v204_shared_context_bytes_for_step_accumulator;
  *(undefined4 *)(v204_shared_context_bytes_for_step_accumulator + 0x38) = 0;
  *(undefined4 *)(iVar1 + 0x3c) = 0;
  *(undefined4 *)(iVar1 + 0x40) = 0;
  *(undefined4 *)(iVar1 + 0x48) = 0;
  *(undefined4 *)(iVar1 + 0x4c) = 0;
  *(undefined4 *)(iVar1 + 0x50) = 0;
  *(undefined4 *)(iVar1 + 0x54) = 0;
  *(undefined4 *)(DAT_07fc5028 + 0x68) = 0;
  *(undefined1 *)(DAT_07fc4fc4 + 6) = 0;
  queue_computed_status_records();
  return;
}

