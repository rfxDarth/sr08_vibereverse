/* Recovered behavior:
 * Write the literal halfword to shared-state byte offset 0x40.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

__attribute__((used, section(".text.write_literal_halfword_to_shared_state_offset_0x40"))) void
write_literal_halfword_to_shared_state_offset_0x40(void) {
    uint32_t digits_offset = offsetof(struct sr08_display_output_state, digits);
    register volatile struct sr08_display_output_state *state __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #940]" : "=r"(state) : [offset] "r"(digits_offset));

    register uint32_t value __asm__("r2");
    __asm__ volatile("ldr r2, [pc, #4]" : "=r"(value));
    *(volatile uint16_t *)(void *)state->digits = (uint16_t)value;
}
