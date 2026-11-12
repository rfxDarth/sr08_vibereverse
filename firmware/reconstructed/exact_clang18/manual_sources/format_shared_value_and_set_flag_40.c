/* Recovered behavior:
 * Format the selected shared value and set the byte at offset 0x45 to 0x40.
 */
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

enum {
    DISPLAY_DIGIT_COUNT = 5,
    DISPLAY_VALUE_TAG = 0x40,
};

__attribute__((used, section(".text.format_shared_value_and_set_flag_40"))) void
format_shared_value_and_set_flag_40(void) {
    uint32_t value;
    value = *(volatile uint32_t *)((uint8_t *)&sr08_shared_context +
        SR08_SHARED_CONTEXT_TOTAL_STEP_COUNT_OFFSET);
    volatile struct sr08_display_output_state *state;
    state = (volatile struct sr08_display_output_state *)&merged_globals_56d0;
    convert_quotient_remainder_sequence_ring_s_at_3148(value, state->digits, DISPLAY_DIGIT_COUNT, 1);
    state->tag = DISPLAY_VALUE_TAG;
}
