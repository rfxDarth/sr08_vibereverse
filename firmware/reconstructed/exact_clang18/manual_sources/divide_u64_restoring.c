/* Recovered behavior:
 * Unsigned 64-bit restoring division; returns quotient in r0:r1 and remainder in r2:r3.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
extern uint64_t shift_unsigned_64_right(uint32_t, uint32_t, int32_t);

/*
 * Unsigned 64-bit restoring division, performed from quotient bit 63 down to
 * bit 0. The inputs are dividend_low, dividend_high, divisor_low, divisor_high
 * in r0-r3. The 64-bit quotient is returned in r0:r1; the 64-bit remainder is
 * also exposed in r2:r3, matching this firmware's private register ABI.
 *
 * For each quotient bit, compare dividend >> bit_index with the divisor. If it
 * is large enough, subtract divisor << bit_index from the running dividend and
 * set that quotient bit. The final running dividend is the remainder. Keep the
 * recovered Thumb loop because equivalent C emits different carry handling
 * and stack code, changing the fixed-size firmware section.
 */
__attribute__((used, naked, section(".text.divide_u64_restoring"))) uint64_t
divide_u64_restoring(uint32_t dividend_low, uint32_t dividend_high, uint32_t divisor_low, uint32_t divisor_high) {
    __asm__ volatile("push {r4, r5, r6, r7, lr}\n"
                     "push {r0, r1, r2, r3, r4}\n"
                     "mov r6, r0\n"
                     "movs r0, #0\n"
                     "sub sp, #8\n"
                     "mov r5, r0\n"
                     "movs r4, #64\n"
                     "str r1, [sp, #4]\n"
                     "str r0, [sp, #0]\n"
                     "b .Ldiv_next_quotient_bit\n"
                     ".Ldiv_try_current_quotient_bit:\n"
                     "ldr r1, [sp, #4]\n"
                     "mov r2, r4\n"
                     "mov r7, r1\n"
                     "mov r0, r6\n"
                     "bl shift_unsigned_64_right\n"
                     "ldr r2, [sp, #16]\n"
                     "ldr r3, [sp, #20]\n"
                     "subs r0, r0, r2\n"
                     "sbcs r1, r3\n"
                     "bcc .Ldiv_next_quotient_bit\n"
                     "mov r0, r2\n"
                     "mov r1, r3\n"
                     "mov r2, r4\n"
                     "bl __aeabi_llsl\n"
                     "subs r6, r6, r0\n"
                     "sbcs r7, r1\n"
                     "str r7, [sp, #4]\n"
                     "mov r2, r4\n"
                     "movs r0, #1\n"
                     "movs r1, #0\n"
                     "ldr r7, [sp, #0]\n"
                     "bl __aeabi_llsl\n"
                     "adds r0, r7, r0\n"
                     "adcs r5, r1\n"
                     "str r0, [sp, #0]\n"
                     ".Ldiv_next_quotient_bit:\n"
                     "mov r0, r4\n"
                     "subs r4, r4, #1\n"
                     "cmp r0, #0\n"
                     "bgt .Ldiv_try_current_quotient_bit\n"
                     "ldr r3, [sp, #4]\n"
                     "ldr r0, [sp, #0]\n"
                     "mov r1, r5\n"
                     "mov r2, r6\n"
                     "add sp, #28\n"
                     "pop {r4, r5, r6, r7, pc}\n");
}
