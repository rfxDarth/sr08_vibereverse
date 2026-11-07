/* Scan ten registration slots, store the item in the first free slot, and
 * notify the consumer with the one-based slot number. The emitted sequence is
 * kept explicit because C register allocation changes the loop's control flow.
 */
#include <stdint.h>

__attribute__((used, naked, section(".text.FUN_07fc33e4")))
uint32_t FUN_07fc33e4(uint32_t value, uint32_t item)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n\t"
        "mov r2, r0\n\t"
        "movs r4, #0\n\t"
        "ldr r0, [pc, #104]\n\t"
        "mov r3, r4\n"
        "1:\n\t"
        "cmp r3, #10\n\t"
        "beq 3f\n\t"
        "ldr r5, [r0, #0]\n\t"
        "cmp r5, #0\n\t"
        "beq 2f\n\t"
        "adds r0, r0, #4\n\t"
        "adds r3, r3, #1\n\t"
        "b 1b\n"
        "2:\n\t"
        "str r1, [r0, #0]\n\t"
        "adds r4, r3, #1\n\t"
        "uxtb r0, r4\n\t"
        "mov r1, r2\n\t"
        "bl FUN_07fc575c\n"
        "3:\n\t"
        "uxtb r0, r4\n\t"
        "pop {r4, r5, r7, pc}\n\t");
}
