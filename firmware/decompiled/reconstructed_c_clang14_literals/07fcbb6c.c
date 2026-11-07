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
#define DAT_07fcbb8c ((volatile uint16_t*)0x50001200u)
#define DAT_07fcbb90 (0x0000fe7fu)



void FUN_07fcbb6c(short param_1)

{
  volatile ushort *puVar1;
  
  puVar1 = DAT_07fcbb8c;
  *DAT_07fcbb8c = *DAT_07fcbb8c & 0xfffe;
  *puVar1 = param_1 << 7 | (ushort)DAT_07fcbb90 & *puVar1;
  *puVar1 = *puVar1 | 1;
  return;
}

