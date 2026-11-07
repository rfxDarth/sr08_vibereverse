/* Resolve a record base, add its 16-bit offset, and dispatch the record. */
#include <stdint.h>

extern uint8_t *FUN_07fcb080(uint32_t);
extern void func_0x07f1003a(uint32_t, uint16_t, uint32_t, const void *);

__attribute__((used, section(".text.FUN_07fc5db4")))
uint32_t FUN_07fc5db4(uint32_t unused, uint8_t *record)
{
    uint8_t *base = FUN_07fcb080(0xfd);
    register uint8_t *record_reg __asm__("r4") = record;
    register uint32_t offset __asm__("r0");

    __asm__ volatile (
        "ldrh r0, [r0, #4]\n\t"
        "ldrh r1, [r4, #2]\n\t"
        "adds r0, r1, r0\n\t"
        "uxth r0, r0"
        : "=r" (offset)
        : "r" (record_reg)
        : "r1", "cc", "memory");

    func_0x07f1003a(offset, *(uint16_t *)(record_reg + 4), 0,
                    record_reg + 6);
    return 0;
}
