/* Address-exact C reconstruction of V204 FUN_07fca8ec. */
#include <stdint.h>

extern void FUN_07fc3148(int32_t, int32_t, uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fca8ec")))
void FUN_07fca8ec(void)
{
    register int32_t arg asm("r0");
    register uint32_t ptr1 asm("r1");
    __asm__ volatile ("movs r0, #149\n\tldr r1, [pc, #896]\n\tldrsb r0, [r1, r0]"
                      : "=r" (arg), "=r" (ptr1) : : "memory");

    register uint32_t ptr2 asm("r1");
    __asm__ volatile ("ldr r1, [pc, #896]\n\tadds r1, #66"
                      : "=r" (ptr2) : : "memory");
    FUN_07fc3148(arg, ptr2, 3, 1);
}
