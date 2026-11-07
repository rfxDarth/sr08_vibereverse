#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef void code();
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define DataSynchronizationBarrier(x) __asm__ volatile ("dsb sy" ::: "memory")
#define InstructionSynchronizationBarrier(x) __asm__ volatile ("isb sy" ::: "memory")
#define enableIRQinterrupts() __asm__ volatile ("cpsie i" ::: "memory")
#define _DAT_07fcc48c ((volatile uint16_t*)0x50003100u)
#define _DAT_07fcc490 ((volatile uint16_t*)0x50003302u)





undefined4 FUN_07fcc118(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = FUN_07fcb080(0xfc);
  iVar1 = func_0x07f1003a((uint16_t)(*(uint16_t *)(iVar1 + 6) + 6),4,0,param_2);
  if (iVar1 != 0) {
    register volatile uint16_t *mmio __asm__("r0");
    __asm__ volatile ("ldr r0, [pc, #852]" : "=r" (mmio) : : "memory");
    *mmio = 200;
    __asm__ volatile (
        "ldr r0, [pc, #848]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        : : : "r0", "r1", "memory");
    do {
                    
    } while( true );
  }
  return 0;
}

