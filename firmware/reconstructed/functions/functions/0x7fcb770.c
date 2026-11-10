// rea decompile_all
// name: read_two_six_byte_records_combine_at_b770
// address: 0x7fcb770
// body: available
// range: 0x7fcb770-0x7fcb7d3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void combine_two_six_byte_records_into_words(int *output_argument)

{
  byte local_24;
  byte local_23;
  byte local_22;
  byte local_21;
  byte local_20;
  byte local_1f;
  byte local_1c;
  byte local_1b;
  byte local_1a;
  byte local_19;
  byte local_18;
  byte local_17;
  
  read_device_bytes_into_buffer(2,&local_1c,6);
  read_device_bytes_into_buffer(8,&local_24,6);
  *output_argument = (uint)local_1b * 0x100 + (uint)local_1c + (uint)local_1a * 0x10000;
  output_argument[1] = (uint)local_18 * 0x100 + (uint)local_19 + (uint)local_17 * 0x10000;
  output_argument[2] = (uint)local_23 * 0x100 + (uint)local_24 + (uint)local_22 * 0x10000;
  output_argument[3] = (uint)local_20 * 0x100 + (uint)local_21 + (uint)local_1f * 0x10000;
  return;
}

