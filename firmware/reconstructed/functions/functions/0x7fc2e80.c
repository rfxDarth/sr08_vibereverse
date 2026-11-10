// rea decompile_all
// name: conditionally_initialize_peripheral_and_schedule_service
// address: 0x7fc2e80
// body: available
// range: 0x7fc2e80-0x7fc2e9d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void conditionally_initialize_peripheral_and_schedule_service(void)

{
  if ((int)((uint)*DAT_07fc2ea0 << 0x1d) < 0) {
    initialize_peripheral_state_and_interrupts();
  }
  set_pending_flag_while_preserving_caller_at_5260();
  ke_msg_send_basic(DAT_07fc2ea4,4,0);
  return;
}

