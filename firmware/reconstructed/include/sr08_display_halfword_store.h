#ifndef SR08_DISPLAY_HALFWORD_STORE_H
#define SR08_DISPLAY_HALFWORD_STORE_H

#include "firmware/reconstructed/include/sr08_display_helpers.h"

/* Compiler-selected registers; only the original shared-pool load remains
 * constrained. The older writer macro remains available to Jeff's tree. */
#define SR08_DEFINE_DISPLAY_HALFWORD_STORE(function_name, value, literal_offset) \
    __attribute__((used, section(".text." #function_name))) void function_name(void) { \
        uint32_t digits_offset = offsetof(struct sr08_display_output_state, digits); \
        volatile struct sr08_display_output_state *state; \
        __asm__ volatile("ldr %[state], [pc, #%c[pool]]" \
                         : [state] "=r"(state) \
                         : [offset] "r"(digits_offset), [pool] "i"(literal_offset)); \
        *(volatile uint16_t *)((volatile uint8_t *)state + digits_offset) = (value); \
    }

#endif
