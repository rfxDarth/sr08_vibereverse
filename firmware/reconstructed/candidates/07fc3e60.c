/* Update one state bit and publish whether the resulting state is empty. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc3e60")))
void FUN_07fc3e60(uint32_t clear_mask, uint32_t bit_mask)
{
    register uint32_t mask __asm__("r1") = bit_mask;
    register uint32_t state __asm__("r0");

    if (clear_mask != 0) {
        __asm__ volatile (
            "ldr r0, [pc, #552]\n\t"
            "ldr r0, [r0, #120]\n\t"
            "bics r0, r1"
            : "=r" (state) : "r" (mask) : "cc", "memory");
    } else {
        __asm__ volatile (
            "ldr r0, [pc, #544]\n\t"
            "ldr r0, [r0, #120]\n\t"
            "orrs r0, r1"
            : "=r" (state) : "r" (mask) : "cc", "memory");
    }

    /* The state word is at offset 0x78 from the global state base. */
    __asm__ volatile (
        "ldr r1, [pc, #540]\n\t"
        "str r0, [r1, #120]"
        : : "r" (state) : "r1", "memory");

    uint32_t is_empty = (state == 0);
    register volatile uint8_t *status __asm__("r0");
    __asm__ volatile ("ldr r0, [pc, #12]" : "=r" (status));
    status[0] = (uint8_t)is_empty;
    __asm__ volatile ("ldr r0, [pc, #12]" : "=r" (status));
    status[3] = (uint8_t)is_empty;
}
