#include <stdint.h>

/* Initializes the ring's display and sensor configuration registers. */
__attribute__((used, naked, section(".text.FUN_07fcb8d8")))
void FUN_07fcb8d8(void)
{
    __asm__ volatile (
        "ldr r0, [pc, #44]\n"  /* pointer at 0x07fcb908 */
        "ldr r1, [pc, #48]\n"  /* value at 0x07fcb90c */
        "str r1, [r0, #0]\n"
        "ldr r0, [pc, #48]\n"  /* pointer at 0x07fcb910 */
        "ldr r1, [pc, #48]\n"  /* value at 0x07fcb914 */
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #48]\n"  /* pointer at 0x07fcb918 */
        "ldrh r1, [r0, #2]\n"
        "movs r2, #2\n"
        "orrs r2, r1\n"
        "movs r1, #4\n"
        "bics r2, r1\n"
        "strh r2, [r0, #2]\n"
        "ldr r1, [pc, #40]\n"  /* pointer at 0x07fcb91c */
        "movs r2, #99\n"
        "strh r2, [r1, #0]\n"
        "ldr r1, [pc, #704]\n" /* base at 0x07fcbbbc */
        "ldrh r2, [r1, #62]\n"
        "ldr r3, [pc, #32]\n"  /* pointer at 0x07fcb920 */
        "strh r2, [r3, #0]\n"
        "ldrh r1, [r1, #60]\n"
        "strh r1, [r0, #0]\n"
        "bx lr\n");
}
