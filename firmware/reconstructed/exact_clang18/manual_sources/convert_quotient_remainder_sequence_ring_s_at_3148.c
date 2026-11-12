#include "firmware/reconstructed/include/sr08_display_value_formatters.h"

static const uint8_t digit_segments[17] = {
    0x77,0x24,0x5d,0x6d,0x2e,0x6b,0x7b,0x25,
    0x7f,0x6f,0x3f,0x3a,0x53,0x7c,0x5b,0x1b,0
};

/* Extract decimal digits right to left, then translate to physical segments.
 * Mode 1 blanks leading positions, preserving the units digit even for zero.
 * Other modes retain leading zeroes. The ring has at most five digit slots.
 */
__attribute__((used,section(".text.convert_quotient_remainder_sequence_ring_s_at_3148")))
void convert_quotient_remainder_sequence_ring_s_at_3148(uint32_t value,
    volatile uint8_t *output, uint32_t digit_count, uint32_t display_mode)
{
    uint8_t digits[5];
    uint32_t power = 1;
    for (uint32_t i = 0; i < digit_count; ++i) {
        uint32_t digit = (value / power) % 10u;
        uint32_t padded = power > value ? 16u : digit;
        /* This unsigned wrap comparison is equivalent to i != 0. It keeps
         * V204's reverse-index decrement/compare code generation; replacing
         * it with the simpler zero test changes the instruction layout. */
        uint32_t selected = 0u - i - 1 < 0u - i ? padded : digit;
        if (display_mode != 1) selected = digit;
        digits[digit_count - 1 - i] = selected;
        power *= 10u;
    }
    for (uint32_t i = 0; i != digit_count; ++i)
        output[i] = digit_segments[digits[i]];
}
