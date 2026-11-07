#include <stdint.h>

/* Invokes the matching four-argument callback for marked records. */
__attribute__((used, naked, section(".text.FUN_07fcb014")))
void FUN_07fcb014(uint32_t object, uint32_t arg1, uint32_t arg2,
                  uint32_t arg3)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r4, r1\n"
        "mov r5, r0\n"
        "ldr r6, [pc, #332]\n" /* records pointer at 0x07fcb168 */
        "movs r7, #32\n"
        "1: cmp r7, #0\n"
        "beq 4f\n"
        "ldrb r0, [r6, #22]\n"
        "cmp r0, #38\n"
        "ldr r1, [pc, #324]\n" /* callback table at 0x07fcb16c */
        "beq 3f\n"
        "cmp r0, #253\n"
        "beq 2f\n"
        "cmp r0, #252\n"
        "bne 5f\n"
        "ldr r1, [pc, #320]\n" /* callback table at 0x07fcb174 */
        "b 3f\n"
        "2: ldr r1, [pc, #312]\n" /* callback table at 0x07fcb170 */
        "3: ldr r3, [r1, #12]\n"
        "mov r0, r6\n"
        "mov r1, r5\n"
        "mov r2, r4\n"
        "blx r3\n"
        "5: subs r7, r7, #1\n"
        "adds r6, #24\n"
        "b 1b\n"
        "4: pop {r3, r4, r5, r6, r7, pc}\n");
}
