/* Prepare the stack record consumed by the sensor configuration helper. */
#include <stdint.h>

extern void func_0x07f1e0de(uint8_t *, uint32_t);
extern void FUN_07fc24dc(void *);

struct request_record {
    uint32_t first;
    uint32_t second;
    uint16_t marker;
    uint8_t scratch[10];
};

__attribute__((used, section(".text.FUN_07fc5230")))
void FUN_07fc5230(void)
{
    struct request_record record;
    register uint32_t word __asm__("r0");

    func_0x07f1e0de((uint8_t *)&record.first + 10, 10);
    record.marker = 0xbb;
    __asm__ volatile ("ldr r0, [pc, #16]" : "=r" (word));
    record.second = word;
    __asm__ volatile ("ldr r0, [pc, #16]" : "=r" (word));
    record.first = word;
    FUN_07fc24dc(&record.first);
}
