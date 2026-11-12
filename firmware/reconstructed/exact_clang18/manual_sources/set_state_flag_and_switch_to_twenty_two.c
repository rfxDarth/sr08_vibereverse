/* Recovered behavior:
 * Set the state flag at offset 0x94 and switch display state to 0x16.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern void switch_display_state_and_run_hooks(uint32_t);

__attribute__((used, section(".text.set_state_flag_and_switch_to_twenty_two"))) void
set_state_flag_and_switch_to_twenty_two(void) {
    *(volatile uint8_t *)&sr08_shared_context.display_transition_flag = 1;
    switch_display_state_and_run_hooks(22);
}
