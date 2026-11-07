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
#define DAT_07fcb908 (*((volatile uint32_t * const *)(uintptr_t)0x07fcb908u))
#define DAT_07fcb90c (*((const uint32_t *)(uintptr_t)0x07fcb90cu))
#define DAT_07fcb910 (*((volatile uint16_t * const *)(uintptr_t)0x07fcb910u))
#define DAT_07fcb914 (*((const uint32_t *)(uintptr_t)0x07fcb914u))
#define DAT_07fcb918 (*((volatile uint16_t * const *)(uintptr_t)0x07fcb918u))
#define DAT_07fcb91c (*((volatile uint16_t * const *)(uintptr_t)0x07fcb91cu))
#define DAT_07fcb920 (*((volatile uint16_t * const *)(uintptr_t)0x07fcb920u))
#define DAT_07fcbbbc (*((const uint32_t *)(uintptr_t)0x07fcbbbcu))



void FUN_07fcb8d8(void)

{
  volatile undefined2 *puVar1;
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

