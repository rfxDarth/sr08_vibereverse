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
#define _DAT_07fc30d4 (0x07fd5650u)
#define _DAT_07fc30f0 (0x00000d1bu)
#define _DAT_07fc30f4 ((uint8_t*)0x07fcfba8u)





undefined4 FUN_07fc302c(void)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 *puVar3;
  int iVar4;
  code *pcVar5;
  undefined1 *puVar6;
  
  iVar4 = _DAT_07fc30d4;
  if (*(char *)(_DAT_07fc30d4 + 5) == '\0') {
    *(undefined1 *)(_DAT_07fc30d4 + 5) = 1;
    FUN_07fc532c(0x7fc30d8);
    puVar3 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc30f0,9,4,0x18);
    *(undefined2 *)(puVar3 + 4) = 4;
    *(undefined2 *)(puVar3 + 2) = 0x26;
    *puVar3 = 0x1b;
    uVar2 = FUN_07fc7358();
    *(undefined2 *)(puVar3 + 10) = 0x204;
    puVar3[8] = 1;
    *(undefined2 *)(puVar3 + 6) = 0;
    puVar3[1] = uVar2;
    puVar6 = _DAT_07fc30f4;
    for (iVar4 = -2; iVar4 != 0; iVar4 = iVar4 + 1) {
      puVar3[iVar4 + 0x10] = *puVar6;
      puVar3[iVar4 + 0xe] = puVar6[1];
      puVar6 = puVar6 + 0xc;
    }
    *(undefined2 *)(puVar3 + 0x12) = 0x300;
    *(undefined2 *)(puVar3 + 0x10) = 0x100;
    func_0x07f1bbe2(puVar3);
  }
  else {
    if (*(char *)(_DAT_07fc30d4 + 6) == '\0') {
      *(undefined1 *)(_DAT_07fc30d4 + 6) = 1;
      pcVar5 = ((code *)(uintptr_t)0x07fc30fcu);
    }
    else {
      bVar1 = *(byte *)(_DAT_07fc30d4 + 7);
      if (bVar1 == 1) {
        *(undefined1 *)(_DAT_07fc30d4 + 5) = 0;
        *(undefined2 *)(iVar4 + 6) = 0;
        return 1;
      }
      *(byte *)(_DAT_07fc30d4 + 7) = bVar1 + 1;
      pcVar5 = *(code **)((uint)bVar1 * 0x1c + 0x7fc311c);
    }
    (*pcVar5)();
  }
  return 0;
}

