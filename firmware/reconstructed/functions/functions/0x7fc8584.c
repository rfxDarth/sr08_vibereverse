// rea decompile_all
// name: ensure_radio_profile_then_exchange_word
// address: 0x7fc8584
// body: available
// range: 0x7fc8584-0x7fc859f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void ensure_radio_profile_then_exchange_word(undefined4 radio_word)

{
  if ((DAT_07fc8874 & *DAT_07fc8870) != 0x44) {
    apply_radio_register_profile_at_7f58();
  }
  exchange_one_radio_word(radio_word);
  return;
}

