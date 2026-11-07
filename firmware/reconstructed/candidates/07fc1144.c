/*
 * Exact Thumb transcription of the L2CAP/SMP receive dispatch. This records
 * the V204 bytes; the decompiler-level C behavior is documented separately.
 */
#include <stdint.h>

extern uint32_t func_0x07f1bf1a(uint32_t);
extern int func_0x07f156aa(uint32_t, void *, uint32_t, uint32_t);
extern void func_0x07f026ca(uint32_t, void *);

__attribute__((naked, used, section(".text.FUN_07fc1144")))
uint32_t FUN_07fc1144(uint32_t message, void *pdu,
                      uint32_t destination, uint32_t source)
{
    __asm__ volatile (
        "push {r0, r1, r2, r3, r4, r5, r6, r7, lr}\n\t"
        "sub sp, #4\n\t"
        "mov r7, r3\n\t"
        "mov r6, r2\n\t"
        "mov r4, r1\n\t"
        "mov r0, r2\n\t"
        "bl func_0x07f1bf1a\n\t"
        "movs r5, #0\n\t"
        "cmp r0, #63\n\t"
        "beq 1f\n\t"
        "ldrh r1, [r4, #8]\n\t"
        "cmp r1, #6\n\t"
        "beq 2f\n\t"
        "1: mov r3, r7\n\t"
        "mov r2, r6\n\t"
        "mov r1, r4\n\t"
        "ldr r0, [sp, #4]\n\t"
        "bl func_0x07f156aa\n\t"
        "mov r5, r0\n\t"
        ".Lreturn: mov r0, r5\n\t"
        ".hword 0xe4b4\n\t"
        "2: lsls r0, r0, #28\n\t"
        "bpl 3f\n\t"
        "movs r5, #2\n\t"
        "b .Lreturn\n\t"
        "3: ldrb r0, [r4, #0]\n\t"
        "cmp r0, #0\n\t"
        "bne .Lreturn\n\t"
        "lsrs r0, r6, #8\n\t"
        "adds r1, r4, #6\n\t"
        "bl func_0x07f026ca\n\t"
        "b .Lreturn\n\t"
    );
}
