/* Recovered behavior:
 * Multiply the two 23-bit fraction fields using split products and cross terms, normalize the
 * product, round ties to even, and adjust the biased exponent. Return zero for a zero input
 * magnitude and apply the XOR of the input signs to the result.
 */
#include <stdint.h>

/*
 * Multiply V204's two software-float values. Each word stores a sign in bit
 * 31, a biased exponent in bits 30..23, and a 23-bit fraction in bits 22..0.
 * A zero magnitude returns positive zero. Otherwise the routine:
 *
 *   1. Adds the exponents and forms the XOR sign.
 *   2. Computes the fraction product from 16-bit high/low pieces plus the
 *      cross term, retaining discarded low bits as the rounding sticky bit.
 *   3. Normalizes the product and adjusts the exponent when its top bit is
 *      clear.
 *   4. Rounds the packed result to even at the exact halfway case and returns
 *      signed zero on exponent underflow.
 *
 * The naked Thumb body preserves V204's split-product instruction order and
 * exact rounding sequence; a direct C translation does not fit the 122-byte
 * fixed section with matching bytes.
 */
__attribute__((used, naked, section(".text.multiply_v204_software_float_values"))) uint32_t
multiply_v204_software_float_values(uint32_t left, uint32_t right) {
    __asm__ volatile("mov r2, r0\n"
                     "push {r4, r5, r6, lr}\n"
                     "eors r2, r1\n"
                     "lsrs r3, r2, #31\n"
                     "lsls r3, r3, #31\n"
                     "lsls r0, r0, #1\n"
                     "beq .Lreturn_zero\n"
                     "lsls r2, r1, #1\n"
                     "beq .Lzero_product\n"
                     "lsrs r1, r0, #24\n"
                     "lsrs r4, r2, #24\n"
                     "lsls r0, r0, #8\n"
                     "lsls r2, r2, #8\n"
                     "adds r1, r1, r4\n"
                     "lsrs r0, r0, #9\n"
                     "lsrs r2, r2, #9\n"
                     "adds r4, r0, r2\n"
                     "lsls r5, r4, #7\n"
                     "mov r4, r0\n"
                     "muls r4, r2\n"
                     "lsrs r0, r0, #8\n"
                     "lsrs r2, r2, #8\n"
                     "lsls r6, r5, #16\n"
                     "muls r0, r2\n"
                     "adds r4, r4, r6\n"
                     "adds r2, r0, r5\n"
                     "lsrs r0, r4, #16\n"
                     "mvns r5, r0\n"
                     "adds r2, r5, r2\n"
                     "lsrs r2, r2, #16\n"
                     "movs r5, #1\n"
                     "lsls r5, r5, #14\n"
                     "adds r2, r2, #1\n"
                     "adds r2, r2, r5\n"
                     "lsls r2, r2, #16\n"
                     "subs r1, #127\n"
                     "lsls r4, r4, #16\n"
                     "beq .Lmerge_fraction_product\n"
                     "adds r2, r2, #1\n"
                     ".Lmerge_fraction_product: orrs r0, r2\n"
                     "bmi .Lcheck_product_significand\n"
                     "lsls r0, r0, #1\n"
                     "subs r1, r1, #1\n"
                     ".Lcheck_product_significand: uxtb r2, r0\n"
                     "lsls r4, r1, #24\n"
                     "lsrs r0, r0, #7\n"
                     "adds r0, r4, r0\n"
                     "adds r0, r0, #1\n"
                     "lsrs r0, r0, #1\n"
                     "cmp r2, #128\n"
                     "beq .Lround_tie_to_even\n"
                     "b .Lcheck_exponent\n"
                     ".Lzero_product: movs r0, #0\n"
                     ".Lreturn_zero: pop {r4, r5, r6, pc}\n"
                     ".Lround_tie_to_even: lsrs r0, r0, #1\n"
                     "lsls r0, r0, #1\n"
                     ".Lcheck_exponent: cmp r1, #0\n"
                     "bge .Lapply_sign\n"
                     "movs r0, #0\n"
                     ".Lapply_sign: orrs r0, r3\n"
                     "pop {r4, r5, r6, pc}\n");
}
