/* Conditionally run mode transition flags 0x10, then select dash state. */
#include <stddef.h>
#include "firmware/reconstructed/include/sr08_display_state.h"
#include "firmware/reconstructed/include/sr08_mode_transition.h"

enum {
    CONTROL_FLAG_MASK = 1,
    TRANSITION_FLAG_MASK = 0x10,
    DASH_MARKER = 45,
};

__attribute__((used, section(".text.dispatch_transition_0x10_when_control_0x01_clear_then_set_dash_state"))) void
dispatch_transition_0x10_when_control_0x01_clear_then_set_dash_state(void) {
    register volatile struct sr08_display_control_state *flags __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #776]" : "=r"(flags));
    if ((flags->control_flags & CONTROL_FLAG_MASK) == 0)
        update_mode_flags_and_transitions(TRANSITION_FLAG_MASK);

    /* Keep the field offset live across the literal load to preserve V204's register order. */
    uint32_t digits_offset = offsetof(struct sr08_display_output_state, digits);
    register volatile struct sr08_display_output_state *state __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #764]" : "=r"(state) : [offset] "r"(digits_offset));
    *(volatile uint16_t *)(void *)state->digits = DASH_MARKER;
}
