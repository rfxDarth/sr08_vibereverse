/* Feature-state gate recovered from the V204 Thumb control flow. */
#include <stdint.h>

extern uint32_t FUN_07fc8584(uint32_t);
extern void FUN_07fc3a38(uint32_t);

__attribute__((used, section(".text.FUN_07fc2488")))
void FUN_07fc2488(int mode_arg)
{
    register uint32_t mode __asm__("r4") = (uint32_t)mode_arg;
    register uint32_t first __asm__("r5") = FUN_07fc8584(42);
    register uint32_t second __asm__("r0") = FUN_07fc8584(43);

    asm goto volatile ("cmp r4, #2\n\tbeq %l[mode_two]"
                       : : "r" (mode) : "cc" : mode_two);
    asm goto volatile ("cmp r4, #1\n\tbne %l[early_return]\n"
                       "lsls r1, r5, #31\n\tbne %l[early_return]\n"
                       "lsls r0, r0, #25\n\tbmi %l[activate]"
                       : : "r" (mode), "r" (first), "r" (second)
                       : "r1", "cc" : early_return, activate);
    goto early_return;

early_return:
    return;

mode_two:
    asm goto volatile ("lsls r1, r5, #31\n\tbeq %l[early_return]\n"
                       "movs r1, #64\n\tands r0, r1\n"
                       "bne %l[early_return]"
                       : : "r" (first), "r" (second)
                       : "r1", "cc" : early_return);

activate:
    FUN_07fc3a38(0x08000000);
    FUN_07fc3a38(0x04000000);
    __asm__ volatile (".inst.n 0xbdb0");
    __builtin_unreachable();
}
