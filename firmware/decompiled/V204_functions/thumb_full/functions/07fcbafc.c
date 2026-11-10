/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

#include <stdint.h>

extern void set_ring_s_output_mode_and_enable(int16_t mode_value);


uint16_t initialize_output_state_for_mode_five_hundred(void)

{
  set_ring_s_output_mode_and_enable(1);
  return initialize_output_state_halfwords_around_shared_at_bb94(0x500);
}

