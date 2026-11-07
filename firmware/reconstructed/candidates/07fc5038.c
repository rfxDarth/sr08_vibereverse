/* Build the six-byte event header and its fourteen-byte scratch area. */
#include <stdint.h>

extern void func_0x07f1e0de(uint8_t *, uint32_t);
extern void FUN_07fc24d0(void *);

struct event_packet {
    uint8_t header;
    uint8_t first;
    uint8_t second;
    uint8_t third;
    uint8_t fourth;
    uint8_t fifth;
    uint8_t scratch[14];
};

__attribute__((used, section(".text.FUN_07fc5038")))
void FUN_07fc5038(uint32_t first, uint32_t second, uint32_t third,
                  uint32_t fourth, uint32_t fifth)
{
    volatile struct event_packet packet;
    register uint32_t p1 __asm__("r7");
    register uint32_t p2 __asm__("r6");
    register uint32_t p3 __asm__("r5");
    register uint32_t arg0 __asm__("r0") = first;
    register uint32_t arg1 __asm__("r1") = second;
    register uint32_t arg2 __asm__("r2") = third;
    register uint32_t state __asm__("r0");

    __asm__ volatile ("mov r5, r2\n\t"
                      "mov r6, r1\n\t"
                      "mov r7, r0"
                      : "=r" (p1), "=r" (p2), "=r" (p3)
                      : "r" (arg0), "r" (arg1), "r" (arg2)
                      : "memory");
    __asm__ volatile ("ldr r0, [pc, #484]" : "=r" (state));
    *(volatile uint8_t *)(state + 2) = (uint8_t)p1;
    func_0x07f1e0de((uint8_t *)packet.scratch, 14);
    packet.fifth = (uint8_t)fifth;
    packet.fourth = (uint8_t)fourth;
    packet.third = (uint8_t)p3;
    packet.second = (uint8_t)p2;
    packet.first = (uint8_t)p1;
    packet.header = 0x24;
    FUN_07fc24d0((void *)&packet);
}
