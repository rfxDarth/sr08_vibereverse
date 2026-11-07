/* Emit an event packet only when the active mode byte changes. */
#include <stdint.h>

extern void func_0x07f1e0de(uint8_t *, uint32_t);
extern void FUN_07fc24d0(void *);

struct mode_packet {
    uint8_t header;
    uint8_t low;
    uint8_t middle;
    uint8_t upper;
    uint8_t high;
    uint8_t mode;
    uint8_t scratch[14];
};

__attribute__((used, section(".text.FUN_07fc5070")))
void FUN_07fc5070(uint32_t mode)
{
    volatile struct mode_packet packet;
    register uint32_t saved_mode __asm__("r5") = mode;
    register volatile uint8_t *state __asm__("r0");

    __asm__ volatile ("" : : "r" (saved_mode));
    __asm__ volatile ("ldr r0, [pc, #436]" : "=r" (state));
    if (state[2] == saved_mode)
        return;
    state[2] = (uint8_t)saved_mode;
    func_0x07f1e0de((uint8_t *)packet.scratch, 14);
    packet.header = 0x14;
    packet.mode = (uint8_t)saved_mode;
    register uint32_t word __asm__("r0");
    __asm__ volatile ("ldr r0, [pc, #404]" : "=r" (word));
    word = *(volatile uint32_t *)word;
    packet.low = (uint8_t)word;
    packet.high = (uint8_t)(word >> 24);
    packet.upper = (uint8_t)(word >> 16);
    packet.middle = (uint8_t)(word >> 8);
    FUN_07fc24d0((void *)&packet);
}
