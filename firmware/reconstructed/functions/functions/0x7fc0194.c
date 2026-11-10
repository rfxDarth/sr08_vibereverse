// rea decompile_all
// name: c_delay_loop_v204_timing_padding_at_0194
// address: 0x7fc0194
// body: available
// range: 0x7fc0194-0x7fc01b1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void c_delay_loop_v204_timing_padding_at_0194(int requested_iterations)

{
  do {
    if (requested_iterations == 0) {
      return;
    }
    requested_iterations = requested_iterations + -1;
  } while (requested_iterations != 0);
  return;
}

