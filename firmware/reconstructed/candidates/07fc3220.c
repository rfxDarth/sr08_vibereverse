/* Build and publish the compact sensor request record for one slot. */
#include <stdint.h>

extern uint8_t *func_0x07f1bbb0(uint32_t, uint32_t, uint32_t, uint32_t);
extern void func_0x07f1bbe2(void);

__attribute__((used, section(".text.FUN_07fc3220")))
void FUN_07fc3220(uint32_t index)
{
    register uint32_t saved_index __asm__("r4") = index;
    register uint32_t arg0 __asm__("r0");
    register uint32_t arg1 __asm__("r1");
    register uint32_t arg2 __asm__("r2");
    register uint32_t arg3 __asm__("r3");
    register volatile uint8_t *request __asm__("r0");
    register volatile uint8_t *slot __asm__("r1");

    __asm__ volatile ("lsls r1, r0, #8\n\t"
                      "adds r1, #10\n\t"
                      "ldr r0, [pc, #36]\n\t"
                      "movs r2, #4\n\t"
                      "movs r3, #2"
                      : "=r" (arg0), "=r" (arg1), "=r" (arg2), "=r" (arg3));
    request = func_0x07f1bbb0(arg0, arg1, arg2, arg3);
    __asm__ volatile ("movs r1, #14\n\t"
                      "muls r1, r4\n\t"
                      "ldr r2, [pc, #424]\n\t"
                      "adds r1, r2, r1"
                      : "=r" (slot) : "r" (saved_index)
                      : "r2", "cc", "memory");
    slot[0x5b] = 0;
    request[1] = 0x13;
    request[0] = 1;
    func_0x07f1bbe2();
}
