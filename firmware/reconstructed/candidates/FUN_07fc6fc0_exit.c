/* Shared continuation and epilogue for FUN_07fc6fc0.
 * Fixed-address Thumb transcription: 0x07fc725a-0x07fc7275. */
#include <stdint.h>
__attribute__((used, naked, section(".text.FUN_07fc6fc0_exit")))
void FUN_07fc6fc0_exit(void)
{
    __asm__ volatile (
        ".inst.n 0x7f50 /* 07fc725a: ldrb	r0, [r2, #29] */\n"
        ".inst.n 0x2800 /* 07fc725c: cmp	r0, #0 */\n"
        ".inst.n 0x9f07 /* 07fc725e: ldr	r7, [sp, #28] */\n"
        ".inst.n 0xd100 /* 07fc7260: bne.n	0x7fc7264 */\n"
        ".inst.n 0xe6cf /* 07fc7262: b.n	0x7fc7004 */\n"
        ".inst.n 0x2002 /* 07fc7264: movs	r0, #2 */\n"
        ".inst.n 0x9908 /* 07fc7266: ldr	r1, [sp, #32] */\n"
        ".inst.n 0x4301 /* 07fc7268: orrs	r1, r0 */\n"
        ".inst.n 0x4638 /* 07fc726a: mov	r0, r7 */\n"
        ".inst.n 0xf754 /* 07fc726c: fe23 	bl	0x7f1beb6 */\n"
        ".inst.n 0xfe23 /* 07fc726e */\n"
        ".inst.n 0x9809 /* 07fc7270: ldr	r0, [sp, #36]	@ 0x24 */\n"
        ".inst.n 0xb00d /* 07fc7272: add	sp, #52	@ 0x34 */\n"
        ".inst.n 0xbdf0 /* 07fc7274: pop	{r4, r5, r6, r7, pc} */\n");
}
