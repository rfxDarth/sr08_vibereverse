/* Advance the cycle counter; past three cycles request the mode-transition
 * update. In control mode 0x40 the previous cycle's phase selects a sensor
 * action: phase zero 0x400, phase two 0x800, odd phases none. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"

extern void update_mode_flags_and_transitions(uint32_t);
extern void apply_sensor_control_action(uint32_t);

enum {
    CYCLE_ACTION_PHASE_ZERO = 0x400,
    CYCLE_ACTION_PHASE_TWO = 0x800,
};

void advance_state_cycle_and_dispatch_action(void) {
    struct sr08_cycle_control_state *state = &cycle_control_state;
    uint32_t previous_cycle = state->cycle_counter;
    uint32_t next_cycle = previous_cycle + 1;
    state->cycle_counter = next_cycle;
    if (next_cycle > 3)
        update_mode_flags_and_transitions(0x400000);
    if (state->active_control_mode == 0x40) {
        uint32_t phase = previous_cycle & 3;
        apply_sensor_control_action(phase == 0 ? CYCLE_ACTION_PHASE_ZERO : phase == 2 ? CYCLE_ACTION_PHASE_TWO : 0);
    }
}
