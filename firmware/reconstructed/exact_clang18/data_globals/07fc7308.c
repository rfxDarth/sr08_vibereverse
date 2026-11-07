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
#define DAT_07fc7350 ((volatile uint16_t*)0x50000022u)
#define DAT_07fc7354 ((volatile uint16_t*)0x50001600u)



ushort FUN_07fc7308(void)

{
  ushort uVar1;
  ushort uVar2;
  volatile ushort *puVar3;
  volatile ushort *puVar4;
  
  puVar3 = DAT_07fc7350;
  uVar1 = *DAT_07fc7350;
  *DAT_07fc7350 = *DAT_07fc7350 | 1;
  *puVar3 = *puVar3 & 0xffe1;
  puVar4 = DAT_07fc7354;
  DAT_07fc7354[1] = 0x400;
  *puVar4 = 5;
  do {
  } while ((int)((uint)*puVar4 << 0x1d) < 0);
  uVar2 = puVar4[2];
  *puVar3 = *puVar3 & 0xfff5 | 0x14;
  *puVar3 = *puVar3 & 0xfffe;
  *puVar3 = (*puVar3 & 0xffe1) + (uVar1 & 0x1e);
  return uVar2;
}

