/* Recovered behavior:
 * Clear the shared flag when set, then switch display state to zero.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

extern void switch_display_state_and_run_hooks(uint32_t);

__attribute__((used, section(".text.clear_shared_flag_and_switch_to_state_zero"))) void
clear_shared_flag_and_switch_to_state_zero(void) {
    register uint32_t state_flag_offset __asm__("r0") = offsetof(struct sr08_display_transition_state, state_flag);
    register volatile struct sr08_display_transition_state *state __asm__("r1");
    register uint32_t state_flag __asm__("r2");
    /* Keep the field offset in r0 for the indexed byte accesses. */
    __asm__ volatile("ldr r1, [pc, #36]" : "=r"(state) : [offset] "r"(state_flag_offset));
    __asm__ volatile("ldrb r2, [r1, r0]" : "=r"(state_flag) : "r"(state), "r"(state_flag_offset) : "memory");
    if (state_flag != 0)
        /* C owns the conditional; keep the exact indexed store sequence. */
        __asm__ volatile("movs r2, #0\n\tstrb r2, [r1, r0]" : : : "cc", "memory");
    switch_display_state_and_run_hooks(0);
}
