/* Halve the input, subtract 112, and return the low byte. */
#include <stdint.h>

uint32_t decode_halved_offset_minus_112(uint32_t value)
{
    value >>= 1;
    /* Preserve the original 32-bit subtraction; Clang otherwise folds this
     * into the equivalent low-byte addition of 144. */
    __asm__ volatile ("subs %0, %0, #112" : "+l"(value) : : "cc");
    return (uint8_t)value;
}

