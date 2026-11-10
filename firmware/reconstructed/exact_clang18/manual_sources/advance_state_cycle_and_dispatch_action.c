/* Recovered behavior:
 * Increment the state word at index 13, set transition flag 0x400000 after the count passes three,
 * and when state word eight is 0x40 dispatch an action selected from the previous count's low two
 * bits.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"

extern void update_mode_flags_and_transitions(uint32_t);
extern void apply_sensor_control_action(uint32_t);

enum {
    CYCLE_ACTION_PHASE_ZERO = 0x400,
    CYCLE_ACTION_PHASE_TWO = 0x800,
};

__attribute__((used, section(".text.advance_state_cycle_and_dispatch_action"))) void
advance_state_cycle_and_dispatch_action(void) {
    volatile struct sr08_cycle_control_state *state;
    /* This literal-pool load fixes the singleton address and instruction form. */
    __asm__ volatile("ldr %[state], [pc, #52]" : [state] "=r"(state));
    uint32_t previous_cycle = state->cycle_counter;
    uint32_t next_cycle = previous_cycle + 1;
    state->cycle_counter = next_cycle;
    /* Crossing cycle 3 triggers the mode-transition maintenance callback. */
    if (next_cycle > 3)
        update_mode_flags_and_transitions(0x400000);
    if (state->active_control_mode == 0x40) {
        uint32_t phase = previous_cycle & 3;
        /* Only phases zero and two request sensor actions; odd phases clear it. */
        apply_sensor_control_action(phase == 0 ? CYCLE_ACTION_PHASE_ZERO : phase == 2 ? CYCLE_ACTION_PHASE_TWO : 0);
    }
}
