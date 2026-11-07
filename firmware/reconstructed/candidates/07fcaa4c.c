/*
 * Address-exact C reconstruction of V204 FUN_07fcaa4c.
 *
 * V204's two literal words are shared pool entries at 0x07fcade8 and
 * 0x07fcad74. The first inline-assembly block pins the first PC-relative load
 * to the former; the second pins the other load to the latter. Clang emits
 * the remaining instructions from C. This function must stay at 0x07fcaa4c:
 * those PC-relative offsets intentionally target the original pool addresses.
 */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fcaa4c")))
void FUN_07fcaa4c(void)
{
    register uint32_t index asm("r0");
    register uint32_t config asm("r1");

    __asm__ volatile (
        "movs r0, #48\n\t"
        "ldr r1, [pc, #920]"
        : "=r" (index), "=r" (config));
    index = *(volatile uint8_t *)(config + index) & 3u;

    register uint32_t display_base asm("r0");
    __asm__ volatile ("ldr r0, [pc, #796]" : "=r" (display_base));
    display_base += index;
    volatile uint8_t *display = (volatile uint8_t *)display_base;
    display[0x40] = 0x53;
    display += 0x40;
    __asm__ volatile ("" : "+r" (display));
    display[1] = 0x65;
}
