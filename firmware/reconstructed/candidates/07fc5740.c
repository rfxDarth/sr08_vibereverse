/* Eight-round CRC-32 table step; the final state is returned in r0. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc5740")))
uint32_t FUN_07fc5740(uint32_t input)
{
    register uint32_t value __asm__("r0") = input;
    register uint32_t count __asm__("r1");
    __asm__ volatile ("movs r1, #8" : "=r" (count));
    register uint32_t polynomial __asm__("r2");
    __asm__ volatile ("ldr r2, [pc, #20]"
                      : "=r" (polynomial) : "r" (count));

again:
    if (count == 0)
        return value;
    __asm__ volatile ("lsrs r3, r0, #1\n\tlsls r0, r0, #31\n\t"
                      "beq 1f\n\teors r3, r2\n\t1: mov r0, r3"
                      : "+r" (value) : "r" (polynomial) : "r3", "cc");
    --count;
    __asm__ volatile ("" : "+r" (count));
    goto again;
}
