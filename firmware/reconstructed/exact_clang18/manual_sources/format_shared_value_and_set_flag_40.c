/* Recovered behavior:
 * Format the selected shared value and set the byte at offset 0x45 to 0x40.
 */
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"

enum {
    DISPLAY_DIGIT_COUNT = 5,
    DISPLAY_VALUE_TAG = 0x40,
};

__attribute__((used, section(".text.format_shared_value_and_set_flag_40"))) void
format_shared_value_and_set_flag_40(void) {
    register uint32_t value __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #576]\n\tldr r0, [r0, #56]" : "=r"(value) : : "memory");
    register volatile struct sr08_display_output_state *state __asm__("r4");
    __asm__ volatile("ldr r4, [pc, #24]" : "=r"(state) : : "memory");
    convert_quotient_remainder_sequence_ring_s_at_3148(value, state->digits, DISPLAY_DIGIT_COUNT, 1);
    state->tag = DISPLAY_VALUE_TAG;
}
