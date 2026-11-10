/* Recovered behavior:
 * Normalize the 24-bit significands, compute their quotient with restoring shift/subtract
 * division, derive rounding status from the remainder, and apply the XOR sign. Return zero for
 * zero magnitudes or exponent underflow.
 */
#include <stdint.h>

extern uint32_t round_v204_float_value_from_status(uint32_t, uint32_t);

/*
 * Divide V204 software-float values (sign bit 31, biased exponent bits 30..23,
 * fraction bits 22..0). The routine restores the implicit significand bit,
 * normalizes the numerator/denominator ratio, and emits the quotient with a
 * shift/subtract loop. It derives a signed rounding status from the final
 * remainder and delegates tie handling to round_v204_float_value_from_status.
 * A zero magnitude or negative adjusted exponent returns zero.
 *
 * Keep the exact Thumb sequence: the quotient loop and remainder-to-status
 * cases encode V204's bit-level rounding behavior.
 */
__attribute__((used, naked, section(".text.divide_v204_software_float_values"))) uint32_t
divide_v204_software_float_values(uint32_t numerator, uint32_t denominator) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "mov r2, r0\n"
                     "eors r2, r1\n"
                     "lsrs r5, r2, #31\n"
                     "lsls r0, r0, #1\n"
                     "lsls r2, r1, #1\n"
                     "lsls r5, r5, #31\n"
                     "lsrs r0, r0, #1\n"
                     "lsrs r2, r2, #1\n"
                     "cmp r0, #0\n"
                     "beq .Lzero_result\n"
                     "cmp r2, #0\n"
                     "beq .Lzero_result\n"
                     "lsrs r4, r0, #23\n"
                     "lsrs r3, r2, #23\n"
                     "lsls r1, r0, #9\n"
                     "movs r0, #1\n"
                     "lsls r0, r0, #23\n"
                     "lsls r2, r2, #9\n"
                     "lsrs r1, r1, #9\n"
                     "lsrs r2, r2, #9\n"
                     "subs r4, r4, r3\n"
                     "adds r1, r1, r0\n"
                     "adds r2, r2, r0\n"
                     "adds r4, #125\n"
                     "cmp r1, r2\n"
                     "bcc .Lnormalize_ratio\n"
                     "adds r4, r4, #1\n"
                     "b .Lcheck_adjusted_exponent\n"
                     ".Lnormalize_ratio: lsls r1, r1, #1\n"
                     ".Lcheck_adjusted_exponent: cmp r4, #0\n"
                     "bge .Lquotient_loop_init\n"
                     ".Lzero_result: movs r0, #0\n"
                     "pop {r4, r5, r6, pc}\n"
                     ".Lquotient_loop_init: movs r3, #0\n"
                     ".Lquotient_loop: cmp r1, r2\n"
                     "bcc .Lshift_remainder\n"
                     "subs r1, r1, r2\n"
                     "orrs r3, r0\n"
                     ".Lshift_remainder: lsrs r0, r0, #1\n"
                     "lsls r1, r1, #1\n"
                     "cmp r0, #0\n"
                     "bne .Lquotient_loop\n"
                     "cmp r1, #0\n"
                     "beq .Lbuild_result\n"
                     "cmp r1, r2\n"
                     "bne .Lcompare_remainder_to_half\n"
                     "movs r1, #1\n"
                     "lsls r1, r1, #31\n"
                     "b .Lbuild_result\n"
                     ".Lcompare_remainder_to_half: cmp r1, r2\n"
                     "bcs .Lround_above_half\n"
                     "movs r1, #1\n"
                     "b .Lbuild_result\n"
                     ".Lround_above_half: movs r1, #1\n"
                     "mvns r1, r1\n"
                     ".Lbuild_result: lsls r0, r4, #23\n"
                     "adds r0, r0, r3\n"
                     "adds r0, r0, r5\n"
                     "bl round_v204_float_value_from_status\n"
                     "pop {r4, r5, r6, pc}\n");
}
