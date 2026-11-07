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
#define DAT_07fcc874 (0x07fd1ea4u)
#define DAT_07fcc878 (0x07fd1e28u)
#define DAT_07fcc87c (0x07fd1f1cu)
#define DAT_07fcc880 (0x07fd1f8cu)
#define DAT_07fcc994 (0x07fd5650u)
#define DAT_07fcc9a0 (0x07fd557cu)



void FUN_07fcc728(void)

{
  int iVar1;
  short sVar2;
  byte bVar3;
  undefined1 uVar4;
  byte bVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  short asStack_1c [2];
  short asStack_18 [2];
  
  FUN_07fc20f0();
  FUN_07fc4e98();
  *(int *)(DAT_07fcc874 + 0x18) = *(int *)(DAT_07fcc874 + 0x18) + 1;
  iVar6 = DAT_07fcc878;
  if (*(char *)(DAT_07fcc878 + 3) == '\x02') {
    bVar3 = *(char *)(DAT_07fcc878 + 5) + 1;
    *(byte *)(DAT_07fcc878 + 5) = bVar3;
LAB_07fcc756:
    if (*(char *)(iVar6 + 7) < '\0') {
      bVar5 = 3;
    }
    else {
      bVar5 = 1;
    }
    if (bVar5 < bVar3) {
      *(undefined1 *)(iVar6 + 3) = 0;
      *(undefined4 *)(iVar6 + 0x54) = 0;
      *(undefined2 *)(iVar6 + 4) = 0;
    }
  }
  else if (*(char *)(DAT_07fcc878 + 3) == '\x01') {
    bVar3 = *(char *)(DAT_07fcc878 + 4) + 1;
    *(byte *)(DAT_07fcc878 + 4) = bVar3;
    goto LAB_07fcc756;
  }
  asStack_18[0] = 0;
  asStack_1c[0] = 0;
  uVar7 = *(int *)(DAT_07fcc87c + 100) - 1U &
          *(int *)(DAT_07fcc87c + 0x5c) - *(int *)(DAT_07fcc87c + 0x60);
  if (0xe < uVar7) {
    iVar6 = DAT_07fcc87c + 0x5c;
    FUN_07fc2fa4(iVar6,0,asStack_18);
    sVar2 = asStack_18[0];
    uVar8 = 1;
    do {
      if (uVar7 == uVar8) {
        uVar4 = 0xff;
        goto LAB_07fcc7c6;
      }
      FUN_07fc2fa4(iVar6,uVar8,asStack_1c);
      uVar8 = uVar8 + 1;
    } while (sVar2 == asStack_1c[0]);
    uVar4 = 0;
LAB_07fcc7c6:
    iVar6 = DAT_07fcc878;
    *(undefined1 *)(DAT_07fcc878 + 7) = uVar4;
  }
  iVar1 = DAT_07fcc880;
  FUN_07fc2ed6(DAT_07fcc880 + 0x28,iVar6 + 0x37);
  if (*(char *)(iVar6 + 0x36) == '\x02') {
    uVar7 = FUN_07fc87f4();
    FUN_07fc532c(((const char *)(uintptr_t)0x07fcc884u),uVar7);
    if (uVar7 == 0) goto LAB_07fcc850;
    if ((uVar7 & 0xff) == 1) {
      *(undefined4 *)(iVar1 + 0x3c) = 1;
      *(undefined4 *)(iVar1 + 0x40) = *(undefined4 *)(iVar1 + 0x48);
      *(undefined4 *)(iVar1 + 0x44) = *(undefined4 *)(iVar1 + 0x4c);
      FUN_07fc3e90(0x61000,0x1000);
      iVar6 = DAT_07fcc878;
      FUN_07fc3ea0(iVar1 + 0x3c,0x61000,0x14,1);
      FUN_07fc8500();
    }
  }
  else {
    if (*(char *)(iVar6 + 0x36) != '\x01') goto LAB_07fcc850;
    uVar7 = FUN_07fc87f4();
    FUN_07fc532c(((const char *)(uintptr_t)0x07fcc898u),uVar7);
    if (uVar7 != 0xffffffff) {
      if ((uVar7 & 0xff) == 1) {
        FUN_07fc3a38(0x4000);
      }
      goto LAB_07fcc850;
    }
  }
  *(undefined1 *)(iVar6 + 0x36) = 0;
LAB_07fcc850:
  *(int *)(DAT_07fcc9a0 + 0x24) = *(int *)(DAT_07fcc9a0 + 0x24) + 1;
  if (*(char *)(DAT_07fcc994 + 0xc) == ' ') {
    FUN_07fc3a38(0x4000000);
    FUN_07fc3a38(0x800);
  }
  return;
}

