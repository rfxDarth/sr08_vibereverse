#include <stdint.h>

/* Conditional mode updates using the two display-state helpers. */
extern void FUN_07fc5070(uint32_t);
extern void FUN_07fc5038(void);

__attribute__((used, naked, section(".text.FUN_07fc74a8")))
void FUN_07fc74a8(void)
{
    __asm__ volatile (
        "push {r2, r3, r4, lr}\n"
        "mov r4, r0\n"
        "movs r0, #29\n"
        "tst r4, r0\n"
        "beq 1f\n"
        "movs r0, #42\n"
        "ldr r1, [pc, #104]\n"
        "ldrb r0, [r1, r0]\n"
        "bl FUN_07fc5070\n"
        "1: lsls r0, r4, #30\n"
        "bpl 2f\n"
        "movs r0, #42\n"
        "ldr r1, [pc, #92]\n"
        "ldrb r0, [r1, r0]\n"
        "movs r1, #0\n"
        "str r1, [sp, #0]\n"
        "mov r2, r1\n"
        "mov r3, r1\n"
        "bl FUN_07fc5038\n"
        "2: pop {r2, r3, r4, pc}\n");
}
