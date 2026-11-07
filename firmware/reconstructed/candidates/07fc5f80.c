/* Address-exact reconstruction of V204 FUN_07fc5f80. */
#include <stdint.h>

extern void FUN_07fc532c(uint32_t, const char *, uint32_t);
extern void FUN_07fc3b58(uint32_t);

__attribute__((used, section(".text.FUN_07fc5f80")))
void FUN_07fc5f80(void)
{
    register uint32_t status asm("r0");
    register const char *message asm("r1");
    __asm__ volatile ("ldr r0, [pc, #16]\n\t.inst 0xa104"
                      : "=r" (status), "=r" (message));
    FUN_07fc532c(status, message, 17);
    FUN_07fc3b58(1);
}
