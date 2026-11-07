/* Function continuation and epilogue for FUN_07fc6dbc.
 * Address-pinned Thumb transcription: 0x07fc6fa0-0x07fc6fab.
 * The 12-byte dispatch-offset table at 0x07fc6e18 remains data. */
#include <stdint.h>
__attribute__((used, naked, section(".text.FUN_07fc6dbc_exit")))
void FUN_07fc6dbc_exit(void)
{
    __asm__ volatile (
        ".inst.n 0x4638 /* 07fc6fa0: mov	r0, r7 */\n"
        ".inst.n 0xf754 /* 07fc6fa2: fe1e 	bl	0x7f1bbe2 */\n"
        ".inst.n 0xfe1e /* 07fc6fa4 */\n"
        ".inst.n 0x2000 /* 07fc6fa6: movs	r0, #0 */\n"
        ".inst.n 0xb005 /* 07fc6fa8: add	sp, #20 */\n"
        ".inst.n 0xbdf0 /* 07fc6faa: pop	{r4, r5, r6, r7, pc} */\n");
}
