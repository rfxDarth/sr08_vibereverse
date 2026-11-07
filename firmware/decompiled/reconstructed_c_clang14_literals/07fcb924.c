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
#define DAT_07fcb95c ((volatile uint16_t*)0x50000008u)
#define _DAT_40000000 (*((volatile uint32_t *)(uintptr_t)0x40000000u))
#define _DAT_40000074 (*((volatile uint32_t *)(uintptr_t)0x40000074u))





void FUN_07fcb924(void)

{
  volatile ushort *puVar1;
  
  puVar1 = DAT_07fcb95c;
  _DAT_40000074 = (_DAT_40000074 & 0xffe0ffff) + 0x20000;
  _DAT_40000000 = _DAT_40000000 & 0xfffffff8;
  *DAT_07fcb95c = *DAT_07fcb95c & 0xfffd | 1;
  *puVar1 = *puVar1 | 8;
  FUN_07fcb8d8();
  return;
}

