/* Switch case zero for FUN_07fc7c88; omitted computed-switch block.
 * Fixed-address Thumb transcription: 0x07fc7cea-0x07fc7ced. */
#include <stdint.h>
__attribute__((used, naked, section(".text.FUN_07fc7c88_case_zero")))
void FUN_07fc7c88_case_zero(void)
{
    __asm__ volatile (
        ".inst.n 0x2214 /* 07fc7cea: movs	r2, #20 */\n"
        ".inst.n 0xe00a /* 07fc7cec: b.n	0x7fc7d04 */\n");
}
