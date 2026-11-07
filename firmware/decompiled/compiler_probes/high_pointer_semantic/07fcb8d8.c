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
#define DAT_07fcb908 ((uint32_t*)0x40000080u)
#define DAT_07fcb90c (0x0754054cu)
#define DAT_07fcb910 ((uint16_t*)0x5000286au)
#define DAT_07fcb914 (0x0000e6ebu)
#define DAT_07fcb918 ((uint16_t*)0x50002600u)
#define DAT_07fcb91c ((uint16_t*)0x50002c06u)
#define DAT_07fcb920 ((uint16_t*)0x50002810u)
#define DAT_07fcbbbc (0x07fd5650u)



void FUN_07fcb8d8(void)

{
  undefined2 *puVar1;
  int iVar2;
  
  *DAT_07fcb908 = DAT_07fcb90c;
  *DAT_07fcb910 = (short)DAT_07fcb914;
  puVar1 = DAT_07fcb918;
  DAT_07fcb918[1] = DAT_07fcb918[1] & 0xfffb | 2;
  *DAT_07fcb91c = 99;
  iVar2 = DAT_07fcbbbc;
  *DAT_07fcb920 = *(undefined2 *)(DAT_07fcbbbc + 0x3e);
  *puVar1 = *(undefined2 *)(iVar2 + 0x3c);
  return;
}

