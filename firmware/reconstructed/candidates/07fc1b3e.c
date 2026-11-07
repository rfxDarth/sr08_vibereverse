/* Address-exact C reconstruction of V204 FUN_07fc1b3e. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc1b3e")))
uint32_t FUN_07fc1b3e(uint32_t bits)
{
    register uint32_t mantissa asm("r0");
    register int32_t exponent asm("r1");
    __asm__ volatile (
        "lsls r1, r0, #1\n\t"
        "lsls r0, r0, #9\n\t"
        "movs r2, #1\n\t"
        "lsrs r0, r0, #9\n\t"
        "lsls r2, r2, #23\n\t"
        "lsrs r1, r1, #24\n\t"
        "adds r0, r2"
        : "=r" (mantissa), "=r" (exponent) : : "r2", "cc");

    if (exponent < 0x7f)
        return 0;
    asm goto volatile ("cmp r1, #150\n\tbgt %l[large]"
                       : : : "cc" : large);
    return mantissa >> (0x96 - exponent);
large:
    return mantissa << (exponent - 0x96);
}
