// rea decompile_all
// name: ensure_radio_profile_then_scan_paired_bytes
// address: 0x7fc8680
// body: available
// range: 0x7fc8680-0x7fc869b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void ensure_radio_profile_then_scan_paired_bytes(undefined4 paired_bytes)

{
  if ((DAT_07fc8874 & *DAT_07fc8870) != 0x44) {
    apply_radio_register_profile_at_7f58();
  }
  scan_pair_table_until_terminator(paired_bytes);
  return;
}

