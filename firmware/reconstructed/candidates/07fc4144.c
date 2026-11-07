/* V204 dispatch adapter; see the matching sequence in FUN_07fc3564. */
#include <stdint.h>

extern void FUN_07fc40a0(void);

__attribute__((naked, used, section(".text.FUN_07fc4144")))
void FUN_07fc4144(uint32_t arg0, uint32_t arg1, uint32_t arg2,
                  uint32_t arg3, uint32_t arg4)
{
    __asm__ volatile (
        "push {r0-r4, lr}\n\t"
        "mov r4, r2\n\t"
        "movs r2, #4\n\t"
        "str r2, [sp, #8]\n\t"
        "ldr r2, [pc, #16]\n\t"
        "str r2, [sp, #4]\n\t"
        "ldr r2, [sp, #24]\n\t"
        "str r2, [sp, #0]\n\t"
        "mov r2, r3\n\t"
        "mov r3, r4\n\t"
        "bl FUN_07fc40a0\n\t"
        "add sp, #16\n\t"
        "pop {r4, pc}"
        : : : "memory");
}
