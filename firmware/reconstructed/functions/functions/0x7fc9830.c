// rea decompile_all
// name: clear_shared_state_and_mmio_flag
// address: 0x7fc9830
// body: available
// range: 0x7fc9830-0x7fc984b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_shared_state_and_mmio_flag(void)

{
  *DAT_07fc984c = 0;
  rwip_wakeup_delay_set(DAT_07fc9850);
  *DAT_07fc9854 = *DAT_07fc9854 & 0x7fffffff;
  return;
}

