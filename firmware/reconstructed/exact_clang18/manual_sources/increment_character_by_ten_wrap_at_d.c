/* Recovered behavior:
 * Add ten to the selected character, wrapping to line feed past 'd'.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"

enum {
    DISPLAY_CHARACTER_INCREMENT = 10,
    DISPLAY_CHARACTER_UPPER_BOUND = 'd',
    DISPLAY_CHARACTER_WRAP_VALUE = 10,
};

__attribute__((noinline, used, section(".text.increment_character_by_ten_wrap_at_d"))) void
increment_character_by_ten_wrap_at_d(void) {
    volatile int8_t *display_context_bytes;
    /* The literal at 0x07fc5668 points to v204_shared_context_bytes_for_display_character. */
    __asm__ volatile("ldr %[context], [pc, #16]"
                     : [context] "=r"(display_context_bytes)
                     : [offset] "r"(SR08_SHARED_CONTEXT_DISPLAY_CHARACTER_OFFSET)
                     : "memory");
    int8_t value = display_context_bytes[SR08_SHARED_CONTEXT_DISPLAY_CHARACTER_OFFSET] + DISPLAY_CHARACTER_INCREMENT;
    if (value > DISPLAY_CHARACTER_UPPER_BOUND)
        value = DISPLAY_CHARACTER_WRAP_VALUE;
    display_context_bytes[SR08_SHARED_CONTEXT_DISPLAY_CHARACTER_OFFSET] = value;
}
