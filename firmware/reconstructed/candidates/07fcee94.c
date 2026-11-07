/* Return the signed-byte maximum from the first 100 entries. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fcee94")))
uint32_t FUN_07fcee94(const int8_t *bytes)
{
    register int32_t maximum __asm__("r1");
    __asm__ volatile ("movs r1, #0\n\tldrsb r1, [r0, r1]"
                      : "=r" (maximum));
    register int32_t index __asm__("r2");
    __asm__ volatile ("movs r2, #0" : "=r" (index));
    __asm__ volatile ("" : "+r" (index));

scan:
    {
        int32_t value = bytes[index];
        asm goto volatile ("cmp r3, r1\n\tble %l[keep]"
                           : : "r" (maximum), "r" (value)
                           : "cc" : keep);
        maximum = value;
    }
keep:
    ++index;
    __asm__ volatile ("" : "+r" (index));
    if (index < 100)
        goto scan;
    return (uint8_t)maximum;
}
