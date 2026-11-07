#include <stdint.h>
__attribute__((noinline,used,section(".text.FUN_07fc5654"))) void FUN_07fc5654(void) {
 register uint32_t offset __asm__("r0") = 0x95;
 register volatile int8_t *base __asm__("r1");
 __asm__ volatile("ldr r1, [pc, #16]" : "=r"(base) : "r"(offset) : "memory");
 int8_t value = base[offset] + 10;
 if (value > 'd') value = 10;
 base[offset] = value;
}
