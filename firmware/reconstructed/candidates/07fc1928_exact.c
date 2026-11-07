#include <stdint.h>

extern uint64_t FUN_07fc1b66(uint32_t, int32_t, uint32_t);
extern uint64_t func_0x07f1e134(uint32_t, uint32_t, uint32_t);

/*
 * Restoring 64-bit quotient/bit selection routine recovered from V204.
 * Preserve its ABI-visible 64-bit result and helper references; the loop is
 * written in Thumb because Clang's generated save/restore and carry flow do
 * not match this firmware's encoding.
 */
__attribute__((used, naked, section(".text.FUN_07fc1928")))
uint64_t FUN_07fc1928(uint32_t dividend_low, int32_t dividend_high,
                      uint32_t divisor_low, uint32_t divisor_high)
{
    __asm__ volatile (
        "push {r4, r5, r6, r7, lr}\n"
        "push {r0, r1, r2, r3, r4}\n"
        "mov r6, r0\n"
        "movs r0, #0\n"
        "sub sp, #8\n"
        "mov r5, r0\n"
        "movs r4, #64\n"
        "str r1, [sp, #4]\n"
        "str r0, [sp, #0]\n"
        "b 2f\n"
        "1:\n"
        "ldr r1, [sp, #4]\n"
        "mov r2, r4\n"
        "mov r7, r1\n"
        "mov r0, r6\n"
        "bl FUN_07fc1b66\n"
        "ldr r2, [sp, #16]\n"
        "ldr r3, [sp, #20]\n"
        "subs r0, r0, r2\n"
        "sbcs r1, r3\n"
        "bcc 2f\n"
        "mov r0, r2\n"
        "mov r1, r3\n"
        "mov r2, r4\n"
        "bl func_0x07f1e134\n"
        "subs r6, r6, r0\n"
        "sbcs r7, r1\n"
        "str r7, [sp, #4]\n"
        "mov r2, r4\n"
        "movs r0, #1\n"
        "movs r1, #0\n"
        "ldr r7, [sp, #0]\n"
        "bl func_0x07f1e134\n"
        "adds r0, r7, r0\n"
        "adcs r5, r1\n"
        "str r0, [sp, #0]\n"
        "2:\n"
        "mov r0, r4\n"
        "subs r4, r4, #1\n"
        "cmp r0, #0\n"
        "bgt 1b\n"
        "ldr r3, [sp, #4]\n"
        "ldr r0, [sp, #0]\n"
        "mov r1, r5\n"
        "mov r2, r6\n"
        "add sp, #28\n"
        "pop {r4, r5, r6, r7, pc}\n");
}
