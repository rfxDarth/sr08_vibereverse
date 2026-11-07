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
#define DAT_07fc984c ((uint32_t*)0x07fd76acu)
#define DAT_07fc9850 (0x000004e2u)
#define DAT_07fc9854 ((uint32_t*)0x40000030u)



void FUN_07fc9830(void)

{
  *DAT_07fc984c = 0;
  func_0x07f1c4f4(DAT_07fc9850);
  *DAT_07fc9854 = *DAT_07fc9854 & 0x7fffffff;
  return;
}

