
/*
 * Program the peripheral from the profile passed in r0. Save and mask
 * PRIMASK while enabling the peripheral, restore the caller's interrupt
 * state, clear the pending condition, copy the profile's register fields
 * and packed option bytes into MMIO registers, then wait for completion.
 *
 * `profile` is marked unused only because this naked function exposes its
 * inputs to the compiler as raw registers; the pinned body reads it directly
 * through r0. Do not remove or reorder those loads without checking the
 * calling convention and exact V204 bytes.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_peripheral_register_profile.h"
__attribute__((used, naked, section(".text.program_peripheral_registers_from_descriptor"))) void
program_peripheral_registers_from_descriptor(const struct sr08_peripheral_register_profile *profile
                                             __attribute__((unused))) {
    __asm__ volatile("push {r4, r5, r6, r7, lr} /* 0x07fc88e0 */\n"
                     "mrs r2, PRIMASK /* 0x07fc88e2 */\n"
                     "movs r1, #1 /* 0x07fc88e6 */\n"
                     "msr PRIMASK, r1 /* 0x07fc88e8 */\n"
                     "ldr r3, [pc, #180] /* 0x07fc88ec */\n"
                     "ldrh r5, [r3, #0] /* 0x07fc88ee */\n"
                     "movs r4, #32 /* 0x07fc88f0 */\n"
                     "orrs r5, r4 /* 0x07fc88f2 */\n"
                     "strh r5, [r3, #0] /* 0x07fc88f4 */\n"
                     "cmp r2, #0 /* 0x07fc88f6 */\n"
                     "beq.n .L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8900 /* branch: eq, "
                     "target at .+8 */ /* 0x07fc88f8 */\n"
                     "msr PRIMASK, r1 /* 0x07fc88fa */\n"
                     "b.n .L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8906 /* branch: always, "
                     "target at .+8 */ /* 0x07fc88fe */\n"
                     ".L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8900:\n"
                     "movs r2, #0 /* 0x07fc8900 */\n"
                     "msr PRIMASK, r2 /* 0x07fc8902 */\n"
                     ".L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8906:\n"
                     "ldr r2, [pc, #160] /* 0x07fc8906 */\n"
                     "ldrh r3, [r2, #0] /* 0x07fc8908 */\n"
                     "bics r3, r1 /* 0x07fc890a */\n"
                     "strh r3, [r2, #0] /* 0x07fc890c */\n"
                     ".L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc890e:\n"
                     "ldrh r3, [r2, #0] /* 0x07fc890e */\n"
                     "lsls r3, r3, #31 /* 0x07fc8910 */\n"
                     "bne.n .L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc890e /* branch: ne, "
                     "target at .-4 */ /* 0x07fc8912 */\n"
                     "ldr r3, [pc, #148] /* 0x07fc8914 */\n"
                     "movs r5, #0 /* 0x07fc8916 */\n"
                     "strh r5, [r3, #48]	@ 0x30 /* 0x07fc8918 */\n"
                     "ldrh r5, [r0, #0] /* 0x07fc891a */\n"  /* profile.value_for_register_14 */
                     "strh r5, [r3, #20] /* 0x07fc891c */\n" /* peripheral register +0x14 */
                     "ldrh r5, [r0, #2] /* 0x07fc891e */\n"  /* profile.value_for_register_18 */
                     "strh r5, [r3, #24] /* 0x07fc8920 */\n" /* peripheral register +0x18 */
                     "ldrh r5, [r0, #4] /* 0x07fc8922 */\n"  /* profile.value_for_register_1c */
                     "strh r5, [r3, #28] /* 0x07fc8924 */\n" /* peripheral register +0x1c */
                     "ldrh r5, [r0, #6] /* 0x07fc8926 */\n"  /* profile.value_for_register_20 */
                     "strh r5, [r3, #32] /* 0x07fc8928 */\n" /* peripheral register +0x20 */
                     "ldrh r5, [r3, #0] /* 0x07fc892a */\n"
                     "movs r6, #6 /* 0x07fc892c */\n"
                     "bics r5, r6 /* 0x07fc892e */\n"
                     "ldrb r6, [r0, #9] /* 0x07fc8930 */\n" /* profile.option_at_09, shifted into control bits */
                     "lsls r6, r6, #1 /* 0x07fc8932 */\n"
                     "orrs r6, r5 /* 0x07fc8934 */\n"
                     "strh r6, [r3, #0] /* 0x07fc8936 */\n"
                     "movs r5, #31 /* 0x07fc8938 */\n"
                     "mvns r5, r5 /* 0x07fc893a */\n"
                     "ldrh r6, [r3, #60]	@ 0x3c /* 0x07fc893c */\n"
                     "ands r6, r5 /* 0x07fc893e */\n"
                     "ldrb r7, [r0, #14] /* 0x07fc8940 */\n" /* profile.value_minus_one_for_register_3c */
                     "subs r7, r7, #1 /* 0x07fc8942 */\n"
                     "orrs r7, r6 /* 0x07fc8944 */\n"
                     "strh r7, [r3, #60]	@ 0x3c /* 0x07fc8946 */\n"
                     "ldrh r6, [r3, #56]	@ 0x38 /* 0x07fc8948 */\n"
                     "ands r6, r5 /* 0x07fc894a */\n"
                     "ldrb r5, [r0, #15] /* 0x07fc894c */\n" /* profile.value_minus_one_for_register_38 */
                     "subs r5, r5, #1 /* 0x07fc894e */\n"
                     "orrs r5, r6 /* 0x07fc8950 */\n"
                     "strh r5, [r3, #56]	@ 0x38 /* 0x07fc8952 */\n"
                     "ldrh r5, [r0, #12] /* 0x07fc8954 */\n" /* profile.upper_bits_for_register_04 */
                     "ldrh r6, [r3, #0] /* 0x07fc8956 */\n"
                     "orrs r6, r1 /* 0x07fc8958 */\n"
                     "strh r6, [r3, #0] /* 0x07fc895a */\n"
                     "ldrh r6, [r3, #0] /* 0x07fc895c */\n"
                     "movs r7, #64	@ 0x40 /* 0x07fc895e */\n"
                     "orrs r7, r6 /* 0x07fc8960 */\n"
                     "strh r7, [r3, #0] /* 0x07fc8962 */\n"
                     "ldrh r6, [r3, #0] /* 0x07fc8964 */\n"
                     "bics r6, r4 /* 0x07fc8966 */\n"
                     "ldrb r4, [r0, #11] /* 0x07fc8968 */\n" /* profile.special_mode_at_0b */
                     "cmp r4, #1 /* 0x07fc896a */\n"
                     "bne.n .L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8972 /* branch: ne, "
                     "target at .+6 */ /* 0x07fc896c */\n"
                     "mov r0, r4 /* 0x07fc896e */\n"
                     "b.n .L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8974 /* branch: always, "
                     "target at .+4 */ /* 0x07fc8970 */\n"
                     ".L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8972:\n"
                     "ldrb r0, [r0, #8] /* 0x07fc8972 */\n" /* profile.selector_at_08 */
                     ".L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc8974:\n"
                     "uxtb r0, r0 /* 0x07fc8974 */\n"
                     "lsls r0, r0, #5 /* 0x07fc8976 */\n"
                     "orrs r6, r0 /* 0x07fc8978 */\n"
                     "strh r6, [r3, #0] /* 0x07fc897a */\n"
                     "ldrh r0, [r3, #0] /* 0x07fc897c */\n"
                     "movs r6, #16 /* 0x07fc897e */\n"
                     "bics r0, r6 /* 0x07fc8980 */\n"
                     "lsls r4, r4, #4 /* 0x07fc8982 */\n"
                     "orrs r4, r0 /* 0x07fc8984 */\n"
                     "strh r4, [r3, #0] /* 0x07fc8986 */\n"
                     "movs r0, #63	@ 0x3f /* 0x07fc8988 */\n"
                     "lsls r0, r0, #10 /* 0x07fc898a */\n"
                     "ldrh r4, [r3, #4] /* 0x07fc898c */\n"
                     "ands r4, r0 /* 0x07fc898e */\n"
                     "orrs r4, r5 /* 0x07fc8990 */\n"
                     "strh r4, [r3, #4] /* 0x07fc8992 */\n"
                     "ldrh r0, [r2, #0] /* 0x07fc8994 */\n"
                     "orrs r0, r1 /* 0x07fc8996 */\n"
                     "strh r0, [r2, #0] /* 0x07fc8998 */\n"
                     ".L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc899a:\n"
                     "ldrh r0, [r2, #0] /* 0x07fc899a */\n"
                     "lsls r0, r0, #31 /* 0x07fc899c */\n"
                     "beq.n .L_program_peripheral_registers_from_descriptor_block_at_88e0_at_07fc899a /* branch: eq, "
                     "target at .-4 */ /* 0x07fc899e */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fc89a0 */\n");
}
