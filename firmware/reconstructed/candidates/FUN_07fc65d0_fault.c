/* Nonzero-field fault handler for FUN_07fc65d0.
 * Fixed-address Thumb transcription preserves the hardware fault loop. */
#include <stdint.h>
__attribute__((used, naked, section(".text.FUN_07fc65d0_fault")))
void FUN_07fc65d0_fault(void)
{
    __asm__ volatile (
        ".inst.n 0x7848 /* 07fc6600: ldrb	r0, [r1, #1] */\n"
        ".inst.n 0x2800 /* 07fc6602: cmp	r0, #0 */\n"
        ".inst.n 0xd017 /* 07fc6604: beq.n	0x7fc6636 */\n"
        ".inst.n 0x48e1 /* 07fc6606: ldr	r0, [pc, #900]	@ (0x7fc698c) */\n"
        ".inst.n 0x21c8 /* 07fc6608: movs	r1, #200	@ 0xc8 */\n"
        ".inst.n 0x8001 /* 07fc660a: strh	r1, [r0, #0] */\n"
        ".inst.n 0x48e0 /* 07fc660c: ldr	r0, [pc, #896]	@ (0x7fc6990) */\n"
        ".inst.n 0x2108 /* 07fc660e: movs	r1, #8 */\n"
        ".inst.n 0x8001 /* 07fc6610: strh	r1, [r0, #0] */\n"
        ".inst.n 0xe7fe /* 07fc6612: b.n	0x7fc6612 */\n");
}
