/* Switch cases three through five for FUN_07fc7c88; omitted computed-switch block.
 * Fixed-address Thumb transcription: 0x07fc7cf6-0x07fc7d03. */
#include <stdint.h>
__attribute__((used, naked, section(".text.FUN_07fc7c88_case_tail")))
void FUN_07fc7c88_case_tail(void)
{
    __asm__ volatile (
        ".inst.n 0x2207 /* 07fc7cf6: movs	r2, #7 */\n"
        ".inst.n 0xe004 /* 07fc7cf8: b.n	0x7fc7d04 */\n"
        ".inst.n 0x220c /* 07fc7cfa: movs	r2, #12 */\n"
        ".inst.n 0xe002 /* 07fc7cfc: b.n	0x7fc7d04 */\n"
        ".inst.n 0x220f /* 07fc7cfe: movs	r2, #15 */\n"
        ".inst.n 0xe000 /* 07fc7d00: b.n	0x7fc7d04 */\n"
        ".inst.n 0x2211 /* 07fc7d02: movs	r2, #17 */\n");
}
