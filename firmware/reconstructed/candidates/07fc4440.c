/* Address-exact C reconstruction of V204 FUN_07fc4440. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc4440")))
uint32_t FUN_07fc4440(void)
{
    register volatile uint32_t *ptr asm("r0");
    __asm__ volatile ("ldr r0, [pc, #92]" : "=r" (ptr));
    *ptr = 1;
    do {
    } while (*ptr != 0);
    __asm__ volatile ("ldr r0, [pc, #84]" : "=r" (ptr));
    uint32_t value = *ptr;
    return (value * 5) >> 3;
}
