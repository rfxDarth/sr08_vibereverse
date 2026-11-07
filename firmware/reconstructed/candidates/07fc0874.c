/*
 * Exact Thumb transcription of the recovered ke_msg_alloc / crypto response
 * routine. Ghidra's three apparent extra allocator arguments are saved input
 * registers, not arguments. This preserves bytes but is not C-level recovery.
 */
#include <stdint.h>

extern void func_0x07f1bbb0(uint32_t, uint32_t, uint32_t, uint32_t);
extern uint8_t func_0x07f029a8(uint32_t, uint8_t *, uint32_t);
extern uint8_t func_0x07f02908(uint32_t, uint32_t, uint8_t *);
extern void func_0x07f1bbe2(void *);

__attribute__((naked, used, section(".text.FUN_07fc0874")))
uint64_t FUN_07fc0874(uint32_t kind, uint32_t argument, uint32_t context)
{
    __asm__ volatile (
        "push {r0, r1, r2, r4, r5, r6, r7, lr}\n\t"
        "movs r5, #0\n\t"
        "mov r7, r2\n\t"
        "mov r6, r0\n\t"
        "movs r3, #65\n\t"
        "mov r2, r5\n\t"
        "mov r1, r5\n\t"
        "movs r0, #10\n\t"
        "bl func_0x07f1bbb0\n\t"
        "mov r4, r0\n\t"
        "cmp r6, #0\n\t"
        "beq 4f\n\t"
        "cmp r6, #1\n\t"
        "beq 1f\n\t"
        "cmp r6, #2\n\t"
        "bne 4f\n\t"
        "b 2f\n\t"
        "1: movs r2, #32\n\t"
        "adds r1, r4, #1\n\t"
        "movs r0, #0\n\t"
        "bl func_0x07f029a8\n\t"
        "b 3f\n\t"
        "2: adds r2, r4, #1\n\t"
        "mov r1, r7\n\t"
        "ldr r0, [sp, #4]\n\t"
        "bl func_0x07f02908\n\t"
        "3: strb r0, [r4, #0]\n\t"
        "4: mov r0, r4\n\t"
        "bl func_0x07f1bbe2\n\t"
        "mov r0, r5\n\t"
        "pop {r1, r2, r3, r4, r5, r6, r7, pc}\n\t"
    );
}
