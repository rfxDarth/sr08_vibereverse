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
#define DAT_07fc2ea0 ((uint16_t*)0x50000014u)
#define DAT_07fc2ea4 (0x00000413u)



void FUN_07fc2e80(void)

{
  if ((int)((uint)*DAT_07fc2ea0 << 0x1d) < 0) {
    FUN_07fcadf8();
  }
  FUN_07fc5260();
  func_0x07f1bc0e(DAT_07fc2ea4,4,0);
  return;
}

