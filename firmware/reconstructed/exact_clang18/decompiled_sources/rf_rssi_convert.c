/* Halve the input, subtract 112, and return the low byte. */
#include <stdint.h>

enum { FLOAT_INTEGER_EXPONENT_OFFSET = 112 };

/* The firmware uses this transform when decoding a packed float exponent. */
uint8_t rf_rssi_convert(uint32_t value) {
    return (uint8_t)((value >> 1) - FLOAT_INTEGER_EXPONENT_OFFSET);
}
