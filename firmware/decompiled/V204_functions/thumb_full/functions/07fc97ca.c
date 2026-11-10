/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void select_operation_four_and_reset_state(void)

{
  __asm__ volatile ("" : : : "r7");
  build_dispatch_byte_record_used_operation_at_3b58(4);
  switch_to_display_state_zero_if_fourteen();
  return;
}

