#ifndef SR08_DISPLAY_HELPERS_H
#define SR08_DISPLAY_HELPERS_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

enum {
    SR08_DISPLAY_STATE_WORD_0002 = 0x0002,
    SR08_DISPLAY_STATE_WORD_0005 = 0x0005,
    SR08_DISPLAY_STATE_WORD_0006 = 0x0006,
    SR08_DISPLAY_STATE_WORD_000b = 0x000b,
    SR08_DISPLAY_STATE_WORD_001e = 0x001e,
};

/*
 * These entry points store a fixed halfword at display output offset 0x40.
 * The explicit PC-relative load preserves each original entry point's literal
 * pool encoding; the unused offset input keeps the compiler's register
 * allocation aligned with the recovered instruction sequence. The pool
 * displacement is supplied as a checked immediate operand.
 */
#define SR08_DEFINE_DISPLAY_HALFWORD_WRITER(function_name, value, literal_offset)                                      \
    __attribute__((used, section(".text." #function_name))) void function_name(void) {                                 \
        uint32_t digits_offset = offsetof(struct sr08_display_output_state, digits);                                   \
        register volatile struct sr08_display_output_state *state __asm__("r1");                                       \
        __asm__ volatile("ldr r1, [pc, #%c[pool_offset_imm]]"                                                          \
                         : "=r"(state)                                                                                 \
                         : [offset] "r"(digits_offset), [pool_offset_imm] "i"(literal_offset));                        \
        *(volatile uint16_t *)((volatile uint8_t *)state + digits_offset) = (value);                                   \
    }

#endif
