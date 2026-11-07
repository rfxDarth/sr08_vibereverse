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
#define DAT_07fc1f9c ((uint32_t*)0x50000200u)
#define DAT_07fc1fa0 ((uint16_t*)0x50000100u)
#define DAT_07fc20ec (0x07fd5650u)
#define _DAT_50000000 (*((volatile uint16_t *)(uintptr_t)0x50000000u))
#define _DAT_50000004 (*((volatile uint32_t *)(uintptr_t)0x50000004u))





void FUN_07fc1f34(void)

{
  ushort *puVar1;
  ushort *puVar2;
  
  puVar2 = DAT_07fc1fa0;
  puVar1 = DAT_07fc1f9c;
  _DAT_50000000 = _DAT_50000000 & 0xffcc;
  if ((((short)_DAT_50000004 < 0) && ((int)((uint)*DAT_07fc1f9c << 0x1d) < 0)) &&
     ((*DAT_07fc1f9c & 1) != 0)) {
    *DAT_07fc1f9c = *DAT_07fc1f9c | 2;
    *puVar1 = *puVar1 & 0xfffe;
    return;
  }
  if (((int)((uint)_DAT_50000004 << 0x1b) < 0) && ((int)((uint)*DAT_07fc1fa0 << 0x18) < 0)) {
    DAT_07fc1fa0[2] = 1;
    *puVar2 = *puVar2 & 0xff7f;
    if (*(int *)(DAT_07fc20ec + 0x48) != 0) {
      FUN_07fc2e80();
    }
  }
  return;
}

