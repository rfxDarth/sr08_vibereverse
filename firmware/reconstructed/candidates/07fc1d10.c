/* Set one mode bit and its associated pair of 16-bit values. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc1d10")))
void FUN_07fc1d10(uint32_t group, uint32_t bit, uint16_t low,
                  uint16_t high, uint32_t alternate)
{
    register volatile uint8_t *table __asm__("r4");
    if (group == 3)
        group = 4;
    group <<= 5;
    __asm__ volatile ("ldr r4, [pc, #36]" : "=r" (table));
    if (alternate != 0)
        *(volatile uint16_t *)(table + group) = (uint16_t)(1U << bit);
    else
        *(volatile uint16_t *)(table + group + 2) = (uint16_t)(1U << bit);
    *(volatile uint16_t *)(table + group + 4 + bit * 2) = low | high;
}
