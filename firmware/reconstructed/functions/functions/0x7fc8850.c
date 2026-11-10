// rea decompile_all
// name: send_device_command_pair
// address: 0x7fc8850
// body: available
// range: 0x7fc8850-0x7fc886f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void send_device_command_pair(undefined4 command,undefined4 value)

{
  if ((DAT_07fc8874 & *DAT_07fc8870) != 0x44) {
    apply_radio_register_profile_at_7f58();
  }
  process_two_packed_input_bytes_update_at_8ad8(command,value);
  return;
}

