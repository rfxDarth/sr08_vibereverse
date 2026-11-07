#include <stdint.h>
extern void FUN_07fc3a38(uint32_t);
__attribute__((noinline,used,section(".text.FUN_07fc3a18"))) void FUN_07fc3a18(uint8_t input) {
 register volatile uint8_t *base __asm__("r0");
 register const uint32_t *source __asm__("r1");
 uint32_t value;
 FUN_07fc3a38(4);
 __asm__ volatile("ldr r0, [pc, #988]" : "=r"(base) :: "memory");
 base[15] = input;
 __asm__ volatile("ldr r1, [pc, #128]" : "=r"(source) :: "memory");
 value = *source;
 *(volatile uint32_t *)(base + 24) = value;
}
