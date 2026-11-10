/* Convert the input integer using the shared software-float normalizer. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_software_float.h"

uint32_t convert_unsigned_integer_to_float_bits(uint32_t value) {
    register uint32_t zero_argument __asm__("r2");
    /* Set up the shared zero in r2 and preserve V204's callee-saved register set. */
    __asm__ volatile("movs %0, #0" : "=r"(zero_argument) : : "r4");
    return normalize_and_round_v204_software_float(value, zero_argument, zero_argument,
                                                   SR08_SOFTWARE_FLOAT_INTEGER_EXPONENT_BASE);
}
