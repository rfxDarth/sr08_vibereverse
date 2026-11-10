// rea decompile_all
// name: zero_word_buffer_by_byte_count
// address: 0x7fcd0ba
// body: available
// range: 0x7fcd0ba-0x7fcd0c7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void zero_word_buffer_by_byte_count(undefined4 unused_callback_argument,undefined4 *destination,int byte_count)

{
  for (; byte_count != 0; byte_count = byte_count + -4) {
    *destination = 0;
    destination = destination + 1;
  }
  return;
}

