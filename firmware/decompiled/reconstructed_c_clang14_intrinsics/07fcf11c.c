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
#define DAT_07fcf154 ((uint16_t*)0x50003400u)
#define DAT_07fcf158 ((uint32_t*)0xe000e180u)
#define _DAT_50000000 (*((volatile uint16_t *)(uintptr_t)0x50000000u))





void FUN_07fcf11c(void)

{
  undefined4 *puVar1;
  
  *DAT_07fcf154 = 6;
  puVar1 = DAT_07fcf158;
  *DAT_07fcf158 = 0x8000;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *puVar1 = 2;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *puVar1 = 1;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  _DAT_50000000 = 0;
  enableIRQinterrupts();
  return;
}

