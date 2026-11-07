#include <stdint.h>

extern void FUN_07fc50b4(void);

/* Clears the shared capture state before starting a new capture. */
__attribute__((used, naked, section(".text.FUN_07fc4fa0")))
void FUN_07fc4fa0(void)
{
    __asm__ volatile (
        "push {r7, lr}\n"
        "ldr r0, [pc, #648]\n" /* state pointer at 0x07fc522c */
        "movs r1, #0\n"
        "str r1, [r0, #56]\n"
        "str r1, [r0, #60]\n"
        "str r1, [r0, #64]\n"
        "str r1, [r0, #72]\n"
        "str r1, [r0, #76]\n"
        "str r1, [r0, #80]\n"
        "str r1, [r0, #84]\n"
        "ldr r0, [pc, #112]\n" /* state pointer at 0x07fc5028 */
        "str r1, [r0, #104]\n"
        "ldr r0, [pc, #8]\n"   /* pointer at 0x07fc4fc4 */
        "strb r1, [r0, #6]\n"
        "bl FUN_07fc50b4\n"
        "pop {r7, pc}\n");
}
