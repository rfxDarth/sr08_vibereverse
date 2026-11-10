#ifndef SR08_DISPLAY_VALUE_FORMATTERS_H
#define SR08_DISPLAY_VALUE_FORMATTERS_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

void convert_quotient_remainder_sequence_ring_s_at_3148(uint32_t value, volatile uint8_t *output, uint32_t digit_count,
                                                        uint32_t display_mode);

/* Shared body for fixed-address display formatters. The input byte and output
 * state are loaded from per-entry literal pools; the formatter call and tag
 * update are otherwise identical at both entry points. */
#define SR08_DEFINE_SHARED_DISPLAY_VALUE_FORMATTER(function_name, value_displacement, value_offset,                    \
                                                   state_displacement)                                                 \
    __attribute__((used, section(".text." #function_name))) void function_name(void) {                                 \
        enum { DISPLAY_DIGIT_COUNT = 3, DISPLAY_VALUE_TAG = 0x10, DISPLAY_FORMATTER_MODE = 1 };                        \
        register uint32_t value __asm__("r0");                                                                         \
        __asm__ volatile("ldr r0, [pc, #%c[value_disp_imm]]\n\t"                                                       \
                         "ldrb r0, [r0, #%c[value_byte_imm]]"                                                          \
                         : "=r"(value)                                                                                 \
                         : [value_disp_imm] "i"(value_displacement), [value_byte_imm] "i"(value_offset)                \
                         : "memory");                                                                                  \
        register volatile struct sr08_display_output_state *state __asm__("r4");                                       \
        __asm__ volatile("ldr r4, [pc, #%c[state_disp_imm]]"                                                           \
                         : "=r"(state)                                                                                 \
                         : [state_disp_imm] "i"(state_displacement)                                                    \
                         : "memory");                                                                                  \
        convert_quotient_remainder_sequence_ring_s_at_3148(value, state->digits, DISPLAY_DIGIT_COUNT,                  \
                                                           DISPLAY_FORMATTER_MODE);                                    \
        state->tag = DISPLAY_VALUE_TAG;                                                                                \
    }

#endif
