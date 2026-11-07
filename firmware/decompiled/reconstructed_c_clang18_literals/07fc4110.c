#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define DataSynchronizationBarrier(x) __asm__ volatile ("dsb sy" ::: "memory")
#define InstructionSynchronizationBarrier(x) __asm__ volatile ("isb sy" ::: "memory")
#define enableIRQinterrupts() __asm__ volatile ("cpsie i" ::: "memory")
#define _DAT_07fc4140 ((uint8_t*)0x00000d1bu)





void FUN_07fc4110(void)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  
  puVar2 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc4140,9,4,9);
  *puVar2 = 0x1b;
  uVar1 = FUN_07fc7358(0xfc);
  puVar2[8] = 0;
  *(undefined4 *)(puVar2 + 4) = 4;
  *(undefined2 *)(puVar2 + 2) = 0xfc;
  puVar2[1] = uVar1;
  func_0x07f1bbe2(puVar2);
  return;
}

