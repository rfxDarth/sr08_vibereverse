/* Initialize the display's image region and fixed event header fields. */
#include <stdint.h>

extern void FUN_07fc3e90(uint32_t, uint32_t);
extern void func_0x07f1e0de(uint8_t *, uint32_t);

__attribute__((used, section(".text.FUN_07fc54b4")))
void FUN_07fc54b4(void)
{
    register volatile uint8_t *state __asm__("r4");

    FUN_07fc3e90(0x2e000, 0x10000);
    FUN_07fc3e90(0x4c000, 0x15000);
    __asm__ volatile ("ldr r4, [pc, #408]" : "=r" (state));
    func_0x07f1e0de((uint8_t *)state, 0xd4);
    __asm__ volatile ("movs r0, #138\n\t"
                      "movs r1, #50\n\t"
                      "strb r1, [r4, r0]"
                      : : "r" (state) : "r0", "r1", "memory");
    state[0x89] = 0xaa;
    *(volatile uint16_t *)(state + 0x94) = 0x3200;
    *(volatile uint16_t *)(state + 0x36) = 0x3e;
}
