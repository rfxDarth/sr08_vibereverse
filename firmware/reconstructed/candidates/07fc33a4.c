/* Address-exact reconstruction of V204 FUN_07fc33a4. */
#include <stdint.h>

extern void FUN_07fc5f38(void);
extern void func_0x07f1bbe2(void);

#define DAT_07fc33bc ((uint32_t)0x07fd53e0u)

__attribute__((used, section(".text.FUN_07fc33a4")))
void FUN_07fc33a4(uint32_t index)
{
    FUN_07fc5f38();
    func_0x07f1bbe2();

    register uint32_t offset asm("r0") = index << 2;
    register uint32_t base asm("r1") = DAT_07fc33bc;
    register uint32_t zero asm("r2") = 0;
    __asm__ volatile ("str r2, [r1, r0]"
                      : : "r" (offset), "r" (base), "r" (zero)
                      : "memory");
}
