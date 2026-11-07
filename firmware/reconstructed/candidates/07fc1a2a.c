/* C XOR veneer with the target's register-pinned high-bit mask. */
#include <stdint.h>

extern void FUN_07fc1988(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc1a2a")))
void FUN_07fc1a2a(uint32_t first, uint32_t second)
{
    register uint32_t mask __asm__("r2") = 1;
    __asm__ volatile ("lsls r2, r2, #31" : "+r" (mask));
    __asm__ volatile ("eors r1, r2\n\tb FUN_07fc1988" : : : "r1");
    __builtin_unreachable();
}
