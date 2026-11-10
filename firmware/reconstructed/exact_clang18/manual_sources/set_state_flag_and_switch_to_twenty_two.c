/* Recovered behavior:
 * Set the state flag at offset 0x94 and switch display state to 0x16.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

extern void switch_display_state_and_run_hooks(uint32_t);

__attribute__((used, section(".text.set_state_flag_and_switch_to_twenty_two"))) void
set_state_flag_and_switch_to_twenty_two(void) {
    uint32_t state_flag_offset = offsetof(struct sr08_display_transition_state, state_flag);
    register volatile struct sr08_display_transition_state *state __asm__("r1");
    /* Keep the offset materialization before the PC-relative load, as in V204. */
    __asm__ volatile("ldr r1, [pc, #12]" : "=r"(state) : [offset] "r"(state_flag_offset));
    state->state_flag = 1;
    switch_display_state_and_run_hooks(22);
}
