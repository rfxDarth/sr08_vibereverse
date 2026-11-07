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
#define DAT_07fc1e40 ((volatile uint16_t*)0x50000010u)
#define DAT_07fc1e44 ((uint32_t*)0xe000e280u)
#define DAT_07fc1e48 (0x00007ffcu)



void FUN_07fc1df8(undefined4 param_1)

{
  volatile ushort *puVar1;
  
  puVar1 = DAT_07fc1e40;
  *DAT_07fc1e40 = *DAT_07fc1e40 | 4;
  *puVar1 = *puVar1 | 2;
  puVar1[-4] = puVar1[-4] | 0x40;
  *DAT_07fc1e44 = 1;
  *puVar1 = *puVar1 & 0xfffd;
  do {
  } while (-1 < (int)((uint)puVar1[2] << 0x1c));
  FUN_07fc5e54(0,param_1);
  puVar1[1] = (puVar1[1] & (ushort)DAT_07fc1e48) + (ushort)DAT_07fc1e48 + 4;
  return;
}

