// rea decompile_all
// name: update_state_bits_and_publish_empty_status
// address: 0x7fc3e60
// body: available
// range: 0x7fc3e60-0x7fc3e83 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_state_bits_and_publish_empty_status(int clear_mode,uint state_mask)

{
  if (clear_mode == 0) {
    state_mask = *(uint *)(DAT_07fc4090 + 0x78) | state_mask;
  }
  else {
    state_mask = *(uint *)(DAT_07fc4090 + 0x78) & ~state_mask;
  }
  *(uint *)(DAT_07fc4090 + 0x78) = state_mask;
  *(bool *)DAT_07fc3e88 = state_mask == 0;
  *(bool *)(DAT_07fc3e8c + 3) = state_mask == 0;
  return;
}

