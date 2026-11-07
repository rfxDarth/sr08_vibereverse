/* Reconstructed V204 bounds check and scaled callback. */
#include <stdint.h>

extern void func_0x07f1e0ac(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc2fcc")))
uint32_t FUN_07fc2fcc(const uint32_t *record, uint32_t argument)
{
    register const uint32_t *cursor __asm__("r0") = record;
    register uint32_t difference __asm__("r2");
    register uint32_t scale __asm__("r3");
    register uint32_t limit __asm__("r5");
    register uint32_t result __asm__("r4");

    /* Keep the target's post-increment load and arithmetic register mapping. */
    __asm__ volatile (
        "ldmia r0!, {r2, r3, r5}\n\t"
        "subs r2, r2, r3\n\t"
        "movs r4, #0\n\t"
        ".inst.n 0x1e6d\n\t"
        "subs r0, #12"
        : "+r" (cursor), "=r" (difference), "=r" (scale),
          "=r" (limit), "=r" (result)
        :
        : "memory", "cc");

    if ((limit & difference) == 0) {
        result = ~result;
    } else {
        uint32_t stride = cursor[3];
        uint32_t base = cursor[4];
        __asm__ volatile (
            "muls r3, r2\n\t"
            ".inst.n 0x18c3"
            : "+r" (scale)
            : "r" (stride), "r" (base)
            : "cc");
        func_0x07f1e0ac(argument, scale);
    }
    return result;
}
