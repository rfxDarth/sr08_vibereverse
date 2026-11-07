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
#define DAT_07fca77c (0x07fd1e28u)
#define DAT_07fca780 (0x07fca64du)
#define DAT_07fca784 (0x00007fffu)
#define DAT_07fca788 (0x07700603u)
#define DAT_07fca790 (0x07fd1ea4u)
#define DAT_07fca794 (0x07fcfb8eu)
#define DAT_07fca798 (0x07fcfb7au)
#define DAT_07fcaa44 ((uint8_t*)0x07fd557cu)



void FUN_07fca64c(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  byte *pbVar7;
  undefined1 local_1c [4];
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  iVar1 = FUN_07fcb080(0x26);
  iVar3 = DAT_07fca77c;
  if (*(char *)(DAT_07fca77c + 0x20) == '\x01') {
    FUN_07fc33e4(1,DAT_07fca780);
    iVar3 = DAT_07fca790;
    pbVar7 = (byte *)(iVar1 + 0x22);
    iVar6 = DAT_07fca77c;
    while ((*pbVar7 < 4 && (*(char *)(iVar6 + 0x20) != '\0'))) {
      iVar4 = *(int *)(iVar3 + 0x24);
      if (iVar4 < 4) {
        iVar6 = *(int *)(iVar3 + 0x28) + 1;
        *(int *)(iVar3 + 0x28) = iVar6;
        if ((int)(uint)*(byte *)(DAT_07fca798 + iVar4 * 5) <= iVar6) {
          *(int *)(iVar3 + 0x24) = iVar4 + 1;
          *(undefined4 *)(iVar3 + 0x28) = 0;
          if (2 < iVar4) {
            *(undefined1 *)(DAT_07fca77c + 0x20) = 0;
            *(undefined4 *)(iVar3 + 0x24) = 0;
            *(undefined4 *)(iVar3 + 0x28) = 0;
          }
        }
        iVar6 = DAT_07fca77c;
        if (*DAT_07fcaa44 != '\0') {
          FUN_07fc3ab0(0,DAT_07fca798 + iVar4 * 5 + 1,4);
          iVar6 = DAT_07fca77c;
        }
      }
      else {
        *(undefined1 *)(iVar6 + 0x20) = 0;
        *(undefined4 *)(iVar3 + 0x24) = 0;
        *(undefined4 *)(iVar3 + 0x28) = 0;
      }
    }
    iVar6 = func_0x07f1bf1a(DAT_07fca784 & *(ushort *)(iVar1 + 2));
    iVar3 = DAT_07fca77c;
    if ((iVar6 == 0) && (3 < *pbVar7)) {
      *pbVar7 = 0;
    }
  }
  if (*(char *)(iVar3 + 0x21) == '\x01') {
    FUN_07fc33e4(1,DAT_07fca780);
    iVar4 = DAT_07fca794;
    iVar6 = DAT_07fca790;
    pbVar7 = (byte *)(iVar1 + 0x22);
    iVar3 = DAT_07fca77c;
    while ((*pbVar7 < 4 && (*(char *)(iVar3 + 0x21) != '\0'))) {
      func_0x07f1e0ac(local_1c,((void *)(uintptr_t)0x07fca788u),7);
      iVar2 = *(int *)(iVar6 + 0x24);
      iVar5 = iVar2 + 1;
      *(int *)(iVar6 + 0x24) = iVar5;
      iVar3 = DAT_07fca77c;
      iVar2 = iVar2 * 2;
      local_18 = *(undefined1 *)(iVar4 + iVar2);
      local_17 = *(undefined1 *)(iVar4 + iVar2 + 1);
      if (iVar5 == 0xc) {
        *(undefined1 *)(DAT_07fca77c + 0x21) = 0;
        local_16 = 0;
        local_1c[0] = 0;
        *(undefined4 *)(iVar6 + 0x24) = 0;
      }
      if (*DAT_07fcaa44 != '\0') {
        FUN_07fc3ab0(1,local_1c,7);
        iVar3 = DAT_07fca77c;
      }
    }
    iVar3 = func_0x07f1bf1a(DAT_07fca784 & *(ushort *)(iVar1 + 2));
    if ((iVar3 == 0) && (3 < *pbVar7)) {
      *pbVar7 = 0;
    }
  }
  return;
}

