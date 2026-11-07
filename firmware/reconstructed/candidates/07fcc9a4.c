/* Address-exact C reconstruction of V204 FUN_07fcc9a4. */
#include <stdint.h>

extern uint32_t FUN_07fc4440(void);

__attribute__((used, section(".text.FUN_07fcc9a4")))
uint32_t FUN_07fcc9a4(uint32_t p1, uint32_t p2)
{
    register uint32_t saved asm("r4") = p1;
    register volatile uint32_t *row asm("r5");
    __asm__ volatile (
        "lsls r0, r0, #4\n\t"
        "ldr r2, [pc, #24]\n\t"
        "adds r5, r2, r0"
        : "=r" (row) : "r" (p1) : "r0", "r2", "memory");

    if (row[1] != p2) {
        __asm__ volatile ("adds r0, r5, #4\n\tstr r1, [r0]"
                          ::: "r0", "memory");
        row[2] = FUN_07fc4440();
    }
    return saved;
}
