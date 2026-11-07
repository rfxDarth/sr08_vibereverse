/* Address-exact reconstruction of V204 FUN_07fc9880. */
#include <stdint.h>

extern void func_0x07f1dfb8(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc9880")))
void FUN_07fc9880(uint32_t index)
{
    register volatile uint32_t *table asm("r1");
    __asm__ volatile ("ldr r1, [pc, #16]" : "=r" (table));
    register uint32_t stride asm("r1") = table[2];
    stride *= index;

    register uint32_t base asm("r0");
    __asm__ volatile ("ldr r0, [pc, #12]" : "=r" (base));
    __asm__ volatile ("adds r0, r1, r0" : "+r" (base) : "r" (stride) : "cc");

    register uint32_t argument asm("r1");
    __asm__ volatile ("ldr r1, [pc, #12]" : "=r" (argument));
    func_0x07f1dfb8(base, argument);
}
