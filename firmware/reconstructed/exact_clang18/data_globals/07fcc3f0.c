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
#define _DAT_07fcc410 (0x0000fc05u)





void FUN_07fcc3f0(undefined1 param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = func_0x07f0283e(0xfc);
  iVar2 = func_0x07f1bbb0(_DAT_07fcc410,uVar1,4,4);
  *(undefined1 *)(iVar2 + 2) = param_1;
  func_0x07f1bbe2();
  return;
}

