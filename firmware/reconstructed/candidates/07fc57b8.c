/* Address-exact reconstruction of V204 FUN_07fc57b8.
 * The helper walks a linked list, returns the matching record fields, and
 * writes the original error values before waiting forever on null outputs.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.FUN_07fc57b8")))
void FUN_07fc57b8(uint32_t, uint16_t *, int32_t *)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "mov r4, r2\n"
        "mov r5, r1\n"
        "mov r6, r0\n"
        "movs r0, #253\n"
        "bl FUN_07fcb080\n"
        "cmp r4, #0\n"
        "beq 1f\n"
        "cmp r5, #0\n"
        "beq 2f\n"
        "adds r0, #16\n"
        "3: ldr r0, [r0, #0]\n"
        "cmp r0, #0\n"
        "beq 4f\n"
        "ldrb r1, [r0, #4]\n"
        "cmp r1, r6\n"
        "bne 3b\n"
        "ldrb r1, [r0, #5]\n"
        "strh r1, [r5, #0]\n"
        "adds r0, r0, #6\n"
        "b 5f\n"
        "1: ldr r0, [pc, #628]\n"
        "movs r1, #200\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #628]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        "6: b 6b\n"
        "2: ldr r0, [pc, #616]\n"
        "movs r1, #200\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #612]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        "7: b 7b\n"
        "4: movs r0, #0\n"
        "strh r0, [r5, #0]\n"
        "5: str r0, [r4, #0]\n"
        "pop {r4, r5, r6, pc}\n"
    );
}
