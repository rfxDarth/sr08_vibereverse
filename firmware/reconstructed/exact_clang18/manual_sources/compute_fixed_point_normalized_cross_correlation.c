#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"

/* Products and sums wrap to 32 bits, matching the target MUL/ADD operations.
 * Arithmetic right shifts and unsigned-to-signed conversions use the ARM
 * compiler's two's-complement semantics. Do not replace the two divisions
 * by a combined division: the first result is truncated before multiplying.
 */
#define WRAP_PRODUCT32(a, b) ((int32_t)((uint32_t)(a) * (uint32_t)(b)))
#define WRAP_ADD32(a, b) ((int32_t)((uint32_t)(a) + (uint32_t)(b)))

__attribute__((used,section(".text.compute_fixed_point_normalized_cross_correlation")))
uint32_t compute_fixed_point_normalized_cross_correlation(const int32_t *left,
    const int32_t *right, uint8_t *output, int32_t count)
{
    int32_t left_energy = 0, right_energy = 0;
    int32_t i, j;
    for (i = 0; i < count; ++i) {
        int32_t a = left[i];
        int32_t b = right[i];
        a >>= 10;
        b >>= 10;
        left_energy = WRAP_ADD32(left_energy, WRAP_PRODUCT32(a, a));
        right_energy = WRAP_ADD32(right_energy, WRAP_PRODUCT32(b, b));
    }
    int32_t length = (int32_t)((uint32_t)count * 2u);
    if (left_energy != 0 && right_energy != 0) {
        for (i = 0; length > i; ++i) {
            if (i < count) {
                int32_t sum = 0;
                for (j = 0; j < i + 1; ++j)
                    sum = WRAP_ADD32(sum, WRAP_PRODUCT32(right[count - i + j - 1] >> 9, left[j] >> 9) >> 2);
                int32_t scaled = (int32_t)((uint32_t)sum << 6);
                output[i] = (uint8_t)__aeabi_idiv(WRAP_PRODUCT32(__aeabi_idiv(scaled, left_energy), sum), right_energy);
            }
            if (i >= count) {
                if (length - 1 == i) {
                    output[i] = 0;
                } else {
                    int32_t sum = 0;
                    for (j = 0; j < length - i - 1; ++j) {
                        int32_t term = WRAP_PRODUCT32(right[j] >> 9, left[i - count + j + 1] >> 9);
                        term >>= 2;
                        sum = WRAP_ADD32(term, sum);
                    }
                    int32_t scaled = (int32_t)((uint32_t)sum << 6);
                    output[i] = (uint8_t)__aeabi_idiv(WRAP_PRODUCT32(__aeabi_idiv(scaled, left_energy), sum), right_energy);
                }
            }
        }
    } else {
        for (i = 0; length > i; ++i) output[i] = 0;
    }
    return 0;
}
