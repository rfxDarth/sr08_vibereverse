/* Find a key in a bounded table and return the preceding record's value. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fcb080")))
uint32_t FUN_07fcb080(uint32_t key)
{
    register volatile uint16_t *cursor __asm__("r1");
    register uint32_t remaining __asm__("r2");

    __asm__ volatile ("ldr r1, [pc, #228]\n\t"
                      "adds r1, #22\n\t"
                      "movs r2, #33"
                      : "=r" (cursor), "=r" (remaining));
    for (;;) {
        if (--remaining == 0)
            return 0;
        register uint32_t found __asm__("r3");
        __asm__ volatile ("ldrh r3, [r1, #0]\n\tadds r1, #24"
                          : "=r" (found), "+r" (cursor) : : "memory", "cc");
        if (found == key)
        {
            register uint32_t result __asm__("r0");
            __asm__ volatile ("movs r0, #6\n\t"
                              "mvns r0, r0\n\t"
                              "lsls r0, r0, #2\n\t"
                              "adds r0, r1, r0\n\t"
                              "subs r0, r0, #7\n\t"
                              "movs r1, #5\n\t"
                              "ldr r0, [r0, r1]"
                              : "=r" (result) : "r" (cursor) : "cc");
            return result;
        }
    }
}
