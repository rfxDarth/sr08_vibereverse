/* Send a byte buffer through the memory-mapped UART data register. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fccf5c")))
void FUN_07fccf5c(uint8_t *data, int count)
{
    register uint8_t *cursor __asm__("r0") = data;
    register int remaining __asm__("r1") = count;
    register volatile uint16_t *uart __asm__("r2");
    __asm__ volatile ("ldr r2, [pc, #28]" : "=r" (uart));

    while (remaining != 0) {
        uint8_t value = *cursor;
        register uint16_t status __asm__("r4");
        do {
            status = uart[10];
        } while ((int32_t)((uint32_t)status << 26) >= 0);
        uart[0] = value;
        do {
            status = uart[10];
        } while ((int32_t)((uint32_t)status << 25) >= 0);
        __asm__ volatile (
            ".inst.n 0x1c40\n\t"
            ".inst.n 0x1e49"
            : "+r" (cursor), "+r" (remaining) : : "cc");
    }
}
