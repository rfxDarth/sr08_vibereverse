/* Recovered behavior:
 * Switch to display state zero when the state flag is not one.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

extern void switch_display_state_and_run_hooks(uint32_t);

__attribute__((used, section(".text.switch_to_state_zero_unless_flag_is_one"))) void
switch_to_state_zero_unless_flag_is_one(void) {
    uint32_t state_flag_offset = offsetof(struct sr08_display_transition_state, state_flag);
    register volatile struct sr08_display_transition_state *state __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #12]" : "=r"(state) : [offset] "r"(state_flag_offset));
    if (state->state_flag != 1)
        switch_display_state_and_run_hooks(0);
}
