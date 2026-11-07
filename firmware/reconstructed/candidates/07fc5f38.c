/* Return a cached value or allocate and cache the table entry on first use. */
#include <stdint.h>

extern uint32_t func_0x07f1bbb0(uint32_t, uint32_t, uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc5f38")))
uint32_t FUN_07fc5f38(uint32_t index)
{
    register uint32_t offset __asm__("r2");
    register volatile uint32_t *table __asm__("r3");
    register uint32_t value __asm__("r1");

    __asm__ volatile ("lsls r2, r0, #2\n\t"
                      "ldr r3, [pc, #28]\n\t"
                      "ldr r1, [r3, r2]"
                      : "=r" (offset), "=r" (table), "=r" (value)
                      : "r" (index) : "cc", "memory");
    if (value == 0) {
        register volatile uint32_t *slot __asm__("r4");
        register uint32_t arg0 __asm__("r0");
        register uint32_t arg1 __asm__("r1");
        register uint32_t arg2 __asm__("r2");
        register uint32_t arg3 __asm__("r3");

        __asm__ volatile ("adds r4, r3, r2" : "=r" (slot)
                          : "r" (table), "r" (offset) : "cc");
        __asm__ volatile ("lsls r1, r0, #8\n\t"
                          "adds r1, #10\n\t"
                          "ldr r0, [pc, #20]\n\t"
                          "movs r2, #4\n\t"
                          "movs r3, #18"
                          : "=r" (arg0), "=r" (arg1),
                            "=r" (arg2), "=r" (arg3)
                          : "r" (index) : "cc");
        value = func_0x07f1bbb0(arg0, arg1, arg2, arg3);
        *slot = value;
    }
    return value;
}
