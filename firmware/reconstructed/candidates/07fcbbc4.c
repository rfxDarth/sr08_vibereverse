/* Address-exact C reconstruction of V204 FUN_07fcbbc4. */
#include <stdint.h>

extern void FUN_07fc3b78(uint32_t);

__attribute__((used, section(".text.FUN_07fcbbc4")))
void FUN_07fcbbc4(void)
{
    __asm__ volatile (
        "movs r0, #148\n\t"
        "ldr r1, [pc, #36]\n\t"
        "ldrb r2, [r1, r0]\n\t"
        "cmp r2, #0\n\t"
        "beq 1f\n\t"
        "movs r2, #0\n\t"
        "strb r2, [r1, r0]\n"
        "1:"
        ::: "r0", "r1", "r2", "cc", "memory");
    FUN_07fc3b78(0);
}
