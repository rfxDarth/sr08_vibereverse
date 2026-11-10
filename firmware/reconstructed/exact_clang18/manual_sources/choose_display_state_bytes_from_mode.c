/* Choose and write the three display-state bytes from the mode flag. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

enum {
    MODE_FLAG_DISPLAY_BIT = 2,
    SECOND_DISPLAY_DIGIT_INDEX = 1,
    THIRD_DISPLAY_DIGIT_INDEX = 2,
};

__attribute__((used, section(".text.choose_display_state_bytes_from_mode"))) void
choose_display_state_bytes_from_mode(void) {
    uint32_t mode_flags_offset = offsetof(struct sr08_display_mode_flags_state, mode_flags);
    register volatile struct sr08_display_mode_flags_state *control_state __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #724]" : "=r"(control_state) : [offset] "r"(mode_flags_offset));

    uint32_t mode_bits = control_state->mode_flags & MODE_FLAG_DISPLAY_BIT;
    uint32_t first_pattern = mode_bits ? 119 : 82;

    volatile struct sr08_display_output_state *display_state;
    __asm__ volatile("ldr %[state], [pc, #224]" : [state] "=r"(display_state));
    display_state->digits[0] = (uint8_t)first_pattern;

    uint32_t third_pattern = mode_bits ? 27 : 124;
    display_state->digits[THIRD_DISPLAY_DIGIT_INDEX] = (uint8_t)third_pattern;

    uint32_t second_pattern = mode_bits ? 27 : 83;
    display_state->digits[SECOND_DISPLAY_DIGIT_INDEX] = (uint8_t)second_pattern;
}
