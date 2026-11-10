/* Recovered behavior:
 * Left-normalize the significand, fold in sticky bits, adjust the biased exponent, and round the
 * packed result to even. Return zero when the normalized exponent underflows.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_software_float.h"

/*
 * Normalize and round a V204 software-float significand.
 *
 * `significand` is shifted left until its leading bit reaches bit 31, using
 * staged 16-, 8-, 4-, 2-, and 1-bit steps. `sticky` carries discarded low
 * product bits; it is shifted into the normalized significand before packing
 * so the final guard/sticky decision can implement round-to-even. The helper
 * subtracts the normalization shift from `exponent_base`, applies the format's
 * exponent offset, and returns zero on underflow. `sign_bit` is ORed into the
 * packed result.
 *
 * The exact Thumb sequence remains pinned because its staged shifts, sticky
 * handling, and rounding branches determine V204's bit-level result.
 */
__attribute__((used, naked, section(".text.normalize_and_round_v204_software_float"))) uint32_t
normalize_and_round_v204_software_float(uint32_t significand, uint32_t sticky, uint32_t sign_bit,
                                        int32_t exponent_base) {
    __asm__ volatile("push {r4, r5, r6}\n"
                     "movs r4, #0\n"
                     "lsrs r5, r0, #16\n"
                     "bne .Lnormalize_by_eight\n"
                     "movs r4, #16\n"
                     "lsls r0, r0, #16\n"
                     "bne .Lnormalize_by_eight\n"
                     "cmp r1, #0\n"
                     "beq .Lreturn\n"
                     "movs r4, #17\n"
                     ".Lnormalize_by_eight: lsrs r5, r0, #24\n"
                     "bne .Lnormalize_by_four\n"
                     "lsls r0, r0, #8\n"
                     "adds r4, r4, #8\n"
                     ".Lnormalize_by_four: lsrs r5, r0, #28\n"
                     "bne .Lnormalize_by_two\n"
                     "lsls r0, r0, #4\n"
                     "adds r4, r4, #4\n"
                     ".Lnormalize_by_two: lsrs r5, r0, #30\n"
                     "bne .Lnormalize_by_one\n"
                     "lsls r0, r0, #2\n"
                     "adds r4, r4, #2\n"
                     ".Lnormalize_by_one: cmp r0, #0\n"
                     "blt .Lmerge_sticky_bits\n"
                     "lsls r0, r0, #1\n"
                     "adds r4, r4, #1\n"
                     ".Lmerge_sticky_bits: cmp r1, #0\n"
                     "beq .Ladjust_exponent\n"
                     "movs r5, #32\n"
                     "subs r6, r5, r4\n"
                     "mov r5, r1\n"
                     "lsrs r5, r6\n"
                     "lsls r1, r4\n"
                     "beq .Lapply_sticky_bit\n"
                     "movs r1, #1\n"
                     ".Lapply_sticky_bit: orrs r1, r5\n"
                     "orrs r0, r1\n"
                     ".Ladjust_exponent: lsls r1, r0, #24\n"
                     "subs r3, r3, r4\n"
                     "lsrs r0, r0, #8\n"
                     "adds r3, r3, #7\n"
                     "bpl .Lpack_result\n"
                     "movs r0, #0\n"
                     ".Lreturn: pop {r4, r5, r6}\n"
                     "bx lr\n"
                     ".Lpack_result: lsls r3, r3, #23\n"
                     "adds r0, r3, r0\n"
                     "adds r0, r0, r2\n"
                     "cmp r1, #0\n"
                     "bge .Lreturn\n"
                     "adds r0, r0, #1\n"
                     "lsls r1, r1, #1\n"
                     "bne .Lreturn\n"
                     "pop {r4, r5, r6}\n"
                     "lsrs r0, r0, #1\n"
                     "lsls r0, r0, #1\n"
                     "bx lr\n");
}
