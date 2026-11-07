/* Drain a linked record list, clear the record head, then release its state. */
#include <stdint.h>

extern void func_0x07f02b24(int *);
extern void func_0x07f1ba8a();

__attribute__((used, section(".text.FUN_07fc5940")))
void FUN_07fc5940(int *argument)
{
    register int *record __asm__("r5") = argument;
    register uint32_t context __asm__("r4") =
        *(uint32_t *)((uint8_t *)record + 0x10);
    register int *cursor __asm__("r6") = (int *)(context + 0x10);

again:
    asm goto volatile ("ldr r0, [%0]\n\tcmp r0, #0\n\tbeq %l[done]"
                       : : "r" (cursor) : "r0", "cc" : done);
    func_0x07f02b24(cursor);
    func_0x07f1ba8a();
    goto again;

done:
    *(uint32_t *)((uint8_t *)record + 0x10) = 0;
    func_0x07f1ba8a(context);
}
