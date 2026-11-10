/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

#include <stdint.h>


uint32_t map_record_flag_to_status_mask(void)

{
  uint32_t initialized_state;
  
  initialized_state = initialize_output_state_for_mode_five_hundred();
  return -(initialized_state & 1) & 0xfffffff2;
}

