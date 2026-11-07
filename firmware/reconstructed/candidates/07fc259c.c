/* Initialize and dispatch a three-byte request packet. */
#include <stdint.h>

extern void func_0x07f1e0de(void *, uint32_t);
extern void FUN_07fc2f2c(void *, uint32_t);

struct packet_07fc259c {
    uint8_t first;
    uint8_t second;
    uint8_t third;
    uint8_t bytes[17];
};

__attribute__((used, section(".text.FUN_07fc259c")))
void FUN_07fc259c(uint8_t first, uint8_t second, uint8_t third)
{
    register uint32_t saved_first __asm__("r6") = first;
    register uint32_t saved_second __asm__("r5") = second;
    register uint32_t saved_third __asm__("r4") = third;
    struct packet_07fc259c local;
    register struct packet_07fc259c *packet __asm__("r7") = &local;

    func_0x07f1e0de(local.bytes, 17);
    packet->first = (uint8_t)saved_first;
    packet->second = (uint8_t)saved_second;
    packet->third = (uint8_t)saved_third;
    FUN_07fc2f2c(packet, 3);
}
