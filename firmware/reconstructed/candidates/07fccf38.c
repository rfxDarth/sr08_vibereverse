/* Address-exact reconstruction of V204 FUN_07fccf38. */
#include <stdint.h>

extern uint32_t FUN_07fc4440(void);

#define DAT_07fccf58 ((uint32_t)0x07fd5464u)

__attribute__((used, section(".text.FUN_07fccf38")))
int FUN_07fccf38(int index, uint32_t argument, uint32_t value)
{
    register uint32_t offset asm("r0") = (uint32_t)index * 0x10u;
    register uint32_t base asm("r5") = DAT_07fccf58;
    register uint32_t tag asm("r3") = 0x101u;
    __asm__ volatile ("strh r3, [r5, r0]\n\tadds r5, r5, r0"
                      : "+r" (base)
                      : "r" (offset), "r" (tag)
                      : "memory", "cc");

    *(uint32_t *)(base + 0x0c) = value;
    *(uint32_t *)(base + 0x04) = argument;
    *(uint32_t *)(base + 0x08) = FUN_07fc4440();
    return index;
}
