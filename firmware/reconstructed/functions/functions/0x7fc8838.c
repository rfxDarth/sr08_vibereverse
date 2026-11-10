// rea decompile_all
// name: write_two_bytes_from_packed_value
// address: 0x7fc8838
// body: available
// range: 0x7fc8838-0x7fc884f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void write_two_bytes_from_packed_value(uint packed_value)

{
  send_device_command_pair(99,(packed_value & 0xfff) >> 8);
  send_device_command_pair(0x62,packed_value & 0xff);
  return;
}

