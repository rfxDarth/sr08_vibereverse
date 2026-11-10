// rea decompile_all
// name: process_radio_state_if_active
// address: 0x7fc1e60
// body: available
// range: 0x7fc1e60-0x7fc1e6f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void process_radio_state_if_active(void)

{
  if (*(int *)(v204_radio_device_state_pointer + 0x4c) != 0) {
    dispatch_timed_state_callbacks();
  }
  return;
}

