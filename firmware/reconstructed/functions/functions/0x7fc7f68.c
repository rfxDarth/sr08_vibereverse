// rea decompile_all
// name: read_device_bytes_into_buffer
// address: 0x7fc7f68
// body: available
// range: 0x7fc7f68-0x7fc7f8b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void read_device_bytes_into_buffer(undefined4 command,undefined4 destination,undefined4 byte_count)

{
  if ((DAT_07fc7f90 & *DAT_07fc7f8c) != 0x44) {
    apply_radio_register_profile_at_7f58();
  }
  fill_hardware_fifo_optionally_report_state_at_89b0(command,destination,byte_count);
  return;
}

