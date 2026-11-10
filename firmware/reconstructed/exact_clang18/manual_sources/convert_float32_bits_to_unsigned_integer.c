/* Recovered behavior:
 * Decode the exponent and significand from a 32-bit floating-point value and shift the significand
 * to produce its truncated unsigned integer value.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_software_float.h"

__attribute__((used, section(".text.convert_float32_bits_to_unsigned_integer"))) uint32_t
convert_float32_bits_to_unsigned_integer(uint32_t bits) {
    register uint32_t mantissa asm("r0");
    register int32_t exponent asm("r1");
    /* Decode the IEEE-754 exponent and significand, adding the implicit leading bit.
     * In C notation: exponent = (bits >> 23) & 0xff;
     *                mantissa = (bits & 0x7fffff) | 0x800000;
     * The sequence is pinned because the C form changes the fixed section size. */
    __asm__ volatile("lsls r1, r0, #1\n\t"
                     "lsls r0, r0, #9\n\t"
                     "movs r2, #1\n\t"
                     "lsrs r0, r0, #9\n\t"
                     "lsls r2, r2, #23\n\t"
                     "lsrs r1, r1, #24\n\t"
                     "adds r0, r2"
                     : "=r"(mantissa), "=r"(exponent)
                     :
                     : "r2", "cc");

    if (exponent < SR08_SOFTWARE_FLOAT_EXPONENT_BIAS)
        return 0;
    /* The integer exponent base is exponent bias plus significand width. */
    asm goto volatile("cmp r1, #%c[integer_exponent_base]\n\tbgt %l[large]"
                      :
                      : [integer_exponent_base] "I"(SR08_SOFTWARE_FLOAT_INTEGER_EXPONENT_BASE)
                      : "cc"
                      : large);
    return mantissa >> (SR08_SOFTWARE_FLOAT_INTEGER_EXPONENT_BASE - exponent);
large:
    return mantissa << (exponent - SR08_SOFTWARE_FLOAT_INTEGER_EXPONENT_BASE);
}
