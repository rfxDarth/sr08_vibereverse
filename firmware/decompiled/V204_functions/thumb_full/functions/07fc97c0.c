/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void switch_display_state_to_one(void)

{
  __asm__ volatile ("" : : : "r7");
  switch_display_state_and_run_hooks(1);
  return;
}

