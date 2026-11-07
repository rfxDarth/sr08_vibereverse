/* Address-exact reconstruction of V204 FUN_07fc66c0.
 * It checks a ROM condition, writes the timeout/error MMIO values on failure,
 * and otherwise creates a small record and dispatches it.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.FUN_07fc66c0")))
uint32_t FUN_07fc66c0(uint32_t, uint32_t, uint32_t)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "mov r0, r2\n"
        "bl func_0x07f1bf1a\n"
        "cmp r0, #0\n"
        "beq 1f\n"
        "ldr r0, [pc, #700]\n"
        "movs r1, #200\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #700]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        "2: b 2b\n"
        "1: ldr r0, [pc, #24]\n"
        "movs r1, #9\n"
        "movs r2, #4\n"
        "movs r4, #1\n"
        "mov r3, r4\n"
        "bl func_0x07f1bbb0\n"
        "strb r4, [r0, #0]\n"
        "bl func_0x07f1bbe2\n"
        "movs r0, #0\n"
        "pop {r4, pc}\n"
    );
}
