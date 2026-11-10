/* Apply V204's rounding status, selecting the even result on an exact tie. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_software_float.h"

enum { ROUNDING_STATUS_LOW_BITS_MASK = 0x7fffffff };

uint32_t round_v204_float_value_from_status(uint32_t value, uint32_t rounding_status) {
    __asm__ goto volatile("cmp %[status], #0\n\tbge %l[done]" : : [status] "l"(rounding_status) : "cc" : done);

    ++value;

    if ((rounding_status & ROUNDING_STATUS_LOW_BITS_MASK) != 0)
        goto done;

    /* Keep V204's two-shift low-bit clear; a C mask emits different Thumb instructions. */
    __asm__ volatile("lsrs %[value], %[value], #1\n\t"
                     "lsls %[value], %[value], #1"
                     : [value] "+l"(value));

done:
    return value;
}
