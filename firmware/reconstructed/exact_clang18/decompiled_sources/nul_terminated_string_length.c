/* Return the number of bytes before the terminating NUL. */
#include <stdint.h>
int nul_terminated_string_length(const uint8_t *text) {
    register const uint8_t *length_origin __asm__("r2");
    /* Keep V204's r2 = text + 1 setup for the final pointer subtraction. */
    __asm__ volatile("adds %0, %1, #1" : "=r"(length_origin) : "r"(text) : "cc");

    uint32_t current_byte;
    do {
        current_byte = *text;
        ++text;
    } while (current_byte != 0);

    return (int)(text - length_origin);
}
