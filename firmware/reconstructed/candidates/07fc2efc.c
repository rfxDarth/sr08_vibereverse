/* Advance the ring's queue head and submit the selected queue entry. */
#include <stdint.h>

extern void func_0x07f1e0ac(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc2efc")))
void FUN_07fc2efc(uint32_t value)
{
    register uint32_t argument __asm__("r1") = value;
    register volatile uint32_t *queue __asm__("r4");
    register uint32_t inverse_mask __asm__("r2");
    register uint32_t head __asm__("r0");
    register uint32_t count __asm__("r3");
    register uint32_t pending __asm__("r2");
    register uint32_t next __asm__("r5");

    __asm__ volatile ("" : : : "r7");
    __asm__ volatile ("ldr r4, [pc, #132]" : "=r" (queue) : "r" (argument));
    __asm__ volatile ("ldr r2, [r4, #52]\n\t"
                      "ldr r0, [r4, #56]\n\t"
                      "ldr r3, [r4, #60]\n\t"
                      "mvns r2, r2"
                      : "=r" (inverse_mask), "=r" (head), "=r" (count)
                      : "r" (queue) : "cc", "memory");
    __asm__ volatile ("adds r2, r0, r2\n\tsubs r5, r3, #1"
                      : "=r" (pending), "=r" (next)
                      : "r" (head), "r" (inverse_mask), "r" (count) : "cc");
    if (next & pending) {
        next &= head - 1;
        register uint32_t call_address __asm__("r0");
        __asm__ volatile ("ldr r2, [r4, #64]\n\t"
                          "ldr r0, [r4, #68]\n\t"
                          "mov r3, r5\n\t"
                          "muls r3, r2\n\t"
                          "adds r0, r0, r3"
                          : "=r" (call_address)
                          : "r" (queue), "r" (next)
                          : "r2", "r3", "cc", "memory");
        func_0x07f1e0ac(call_address, argument);
        queue[14] = next;
    }
}
