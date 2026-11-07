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
#define DAT_07fc1cc8 ((volatile uint16_t*)0x50001600u)
#define DAT_07fc1ccc (0x000003e9u)
#define DAT_07fc1cd0 ((volatile uint16_t*)0x50003308u)
#define DAT_07fc1cd4 ((volatile uint16_t*)0x40000208u)
#define DAT_07fc1cd8 ((volatile uint32_t*)0x40000010u)
#define DAT_07fc1fa4 ((uint16_t*)0x07fd5650u)
#define _DAT_50000000 (*((volatile uint16_t *)(uintptr_t)0x50000000u))
#define _DAT_50000002 (*((volatile uint16_t *)(uintptr_t)0x50000002u))
#define _DAT_50000008 (*((volatile uint16_t *)(uintptr_t)0x50000008u))
#define _DAT_5000000a (*((volatile uint16_t *)(uintptr_t)0x5000000au))
#define _DAT_50000010 (*((volatile uint16_t *)(uintptr_t)0x50000010u))
#define _DAT_50000014 (*((volatile uint16_t *)(uintptr_t)0x50000014u))
#define _DAT_50000020 (*((volatile uint16_t *)(uintptr_t)0x50000020u))
#define _DAT_50000022 (*((volatile uint16_t *)(uintptr_t)0x50000022u))





void FUN_07fc1c18(void)

{
  volatile undefined2 *puVar1;
  
  if ((_DAT_5000000a & 3) != 0) {
    if ((int)((uint)_DAT_50000014 << 0x1d) < 0) {
      FUN_07fcadf8();
    }
    puVar1 = DAT_07fc1cc8;
    DAT_07fc1cc8[1] = 0xff;
    *puVar1 = 4;
    do {
    } while ((uint)(ushort)puVar1[3] * 0x10000 + (uint)(ushort)puVar1[2] < DAT_07fc1ccc);
    *puVar1 = 5;
    _DAT_50000002 = *(undefined2 *)(DAT_07fc1fa4 + 0x3a);
    _DAT_50000020 = _DAT_50000020 & 0xff7f;
  }
  do {
  } while ((int)((uint)*DAT_07fc1cd0 << 0x1d) < 0);
  _DAT_50000000 = _DAT_50000000 & 0xffcc;
  if ((_DAT_5000000a & 3) != 0) {
    _DAT_5000000a = _DAT_5000000a & 0xfffc;
    _DAT_50000022 = _DAT_50000022 & 0xfffe;
  }
  _DAT_50000008 = _DAT_50000008 | 0x80;
  _DAT_50000010 = _DAT_50000010 & 0xfffb;
  do {
  } while (-1 < (int)((uint)_DAT_50000014 << 0x1e));
  func_0x07f0237e();
  *DAT_07fc1cd4 = *(undefined4 *)(DAT_07fc1fa4 + 0x54);
  do {
  } while (-1 < *DAT_07fc1cd8 << 0x1d);
  return;
}

