/* Address-exact C reconstruction of V204 FUN_07fc31d4. */
#include <stdint.h>

extern uint32_t FUN_07fc4440(void);

__attribute__((used, section(".text.FUN_07fc31d4")))
void FUN_07fc31d4(void)
{
    (void)FUN_07fc4440();
    __asm__ volatile (
        "movs r1, #48\n\t"
        "ldr r2, [pc, #352]\n\t"
        "movs r3, #0\n\t"
        "strb r3, [r2, r1]\n\t"
        "movs r1, #44\n\t"
        "movs r3, #255\n\t"
        "strb r3, [r2, r1]\n\t"
        "ldr r1, [pc, #500]\n\t"
        "str r0, [r1, #60]"
        ::: "r1", "r2", "r3", "memory");
}
