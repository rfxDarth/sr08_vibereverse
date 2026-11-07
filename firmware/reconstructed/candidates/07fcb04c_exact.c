#include <stdint.h>

/* Dispatches 32 fixed-size records to callbacks selected by marker byte. */
__attribute__((used, naked, section(".text.FUN_07fcb04c")))
void FUN_07fcb04c(uint32_t argument)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r4, r0\n"
        "ldr r5, [pc, #276]\n" /* pointer at 0x07fcb168 */
        "movs r6, #32\n"
        "ldr r7, [pc, #276]\n" /* callback at 0x07fcb16c */
        "1: cmp r6, #0\n"
        "beq 4f\n"
        "ldrb r0, [r5, #22]\n"
        "cmp r0, #38\n"
        "mov r1, r7\n"
        "beq 3f\n"
        "cmp r0, #253\n"
        "beq 2f\n"
        "cmp r0, #252\n"
        "bne 5f\n"
        "ldr r1, [pc, #264]\n" /* callback at 0x07fcb174 */
        "b 3f\n"
        "2: ldr r1, [pc, #256]\n" /* callback at 0x07fcb170 */
        "3: ldr r2, [r1, #8]\n"
        "mov r0, r5\n"
        "mov r1, r4\n"
        "blx r2\n"
        "5:"
        "subs r6, r6, #1\n"
        "adds r5, #24\n"
        "b 1b\n"
        "4: pop {r3, r4, r5, r6, r7, pc}\n");
}
