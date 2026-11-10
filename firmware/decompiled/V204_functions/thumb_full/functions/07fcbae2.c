/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

#include <stdint.h>

extern void set_ring_s_output_mode_and_enable(int16_t mode_value);


void initialize_shared_state_when_status_clear(void)

{
  uint32_t status_mask;
  
  status_mask = map_record_flag_to_status_mask();
  if (status_mask != 0) {
    return;
  }
  set_ring_s_output_mode_and_enable(0);
  initialize_output_state_halfwords_around_shared_at_bb94(0xb9);
  return;
}

