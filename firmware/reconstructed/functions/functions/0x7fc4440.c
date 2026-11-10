// rea decompile_all
// name: set_word_wait_until_zero_and_scale_second_word
// address: 0x7fc4440
// body: available
// range: 0x7fc4440-0x7fc4457 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint request_sensor_sample_then_scale_result(void)

{
  int *piVar1;
  
  piVar1 = DAT_07fc44a0;
  *DAT_07fc44a0 = 1;
  do {
  } while (*piVar1 != 0);
  return (uint)(*DAT_07fc44a4 * 5) >> 3;
}

