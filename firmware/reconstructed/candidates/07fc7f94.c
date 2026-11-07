/* Address-exact reconstruction of V204 FUN_07fc7f94.
 * It retries the requested operation, records the returned byte, and stops
 * on status 0x27 or after the retry limit. Keep its Thumb layout explicit.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.FUN_07fc7f94")))
uint32_t FUN_07fc7f94(void)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "movs r1, #0\n"
        "ldr r5, [pc, #912]\n"
        "1: mov r6, r1\n"
        "cmp r1, #9\n"
        "bhi 2f\n"
        "movs r0, #1\n"
        "movs r4, #0\n"
        "mov r1, r4\n"
        "bl FUN_07fc8850\n"
        "movs r0, #5\n"
        "bl FUN_07fc4458\n"
        "mov r0, r4\n"
        "bl FUN_07fc8584\n"
        "strb r0, [r5, #19]\n"
        "adds r1, r6, #1\n"
        "cmp r0, #39\n"
        "bne 1b\n"
        "2: cmp r6, #10\n"
        "bcc 3f\n"
        "movs r0, #0\n"
        "pop {r4, r5, r6, pc}\n"
        "3: movs r0, #1\n"
        "pop {r4, r5, r6, pc}\n"
    );
}
