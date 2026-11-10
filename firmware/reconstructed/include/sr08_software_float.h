#ifndef SR08_SOFTWARE_FLOAT_H
#define SR08_SOFTWARE_FLOAT_H

#include <stdint.h>

enum {
    SR08_SOFTWARE_FLOAT_EXPONENT_BIAS = 127,
    SR08_SOFTWARE_FLOAT_SIGNIFICAND_BITS = 23,
    SR08_SOFTWARE_FLOAT_INTEGER_EXPONENT_BASE =
        SR08_SOFTWARE_FLOAT_EXPONENT_BIAS + SR08_SOFTWARE_FLOAT_SIGNIFICAND_BITS,
};

extern uint32_t normalize_and_round_v204_software_float(uint32_t significand, uint32_t sticky, uint32_t sign_bit,
                                                        int32_t exponent_base);
extern uint32_t round_v204_float_value_from_status(uint32_t value, uint32_t rounding_status);

#endif
