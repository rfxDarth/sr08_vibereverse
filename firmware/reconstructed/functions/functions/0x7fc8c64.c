// rea decompile_all
// name: disable_interrupt_mask_0x8000_and_publish_control_state
// address: 0x7fc8c64
// body: available
// range: 0x7fc8c64-0x7fc8c85 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void disable_interrupt_mask_0x8000_and_publish_control_state(void)

{
  *DAT_07fc8c88 = 0x8000;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *DAT_07fc8c8c = *DAT_07fc8c8c & 0xfffe;
  update_state_bits_and_publish_empty_status(1,2);
  return;
}

