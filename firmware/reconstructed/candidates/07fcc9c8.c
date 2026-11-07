#include <stdint.h>
extern void FUN_07fc532c(uint32_t,const char *,uint32_t);
extern uint32_t func_0x07f0283e(uint32_t);
extern void func_0x07f1bbe2(void);
extern void FUN_07fcc9a4(uint32_t,uint32_t);
extern uint32_t func_0x07f1bbb0(uint32_t,uint32_t,uint32_t,uint32_t);
__attribute__((noinline,used,section(".text.FUN_07fcc9c8"))) void FUN_07fcc9c8(void) {
 register uint32_t arg0 __asm__("r0");
 register const char *arg1 __asm__("r1");
 __asm__ volatile("ldr r0, [pc, #52]\n .inst.n 0xa10d" : "=r"(arg0), "=r"(arg1) :: "memory");
 FUN_07fc532c(arg0,arg1,0x77);
 uint32_t timer = func_0x07f0283e(0x26);
 uint8_t *p = (uint8_t *)func_0x07f1bbb0(0x2600,timer,4,4);
 register uint16_t marker __asm__("r1");
 __asm__ volatile("ldr r1, [pc, #56]" : "=r"(marker) :: "memory");
 *(uint16_t *)(p+2) = marker;
 *p=0;
 func_0x07f1bbe2();
 register uint32_t delay __asm__("r1");
 register uint32_t index __asm__("r0") = 0xb;
 __asm__ volatile("ldr r1, [pc, #48]" : "=r"(delay) : "r"(index) : "memory");
 FUN_07fcc9a4(index,delay);
}

