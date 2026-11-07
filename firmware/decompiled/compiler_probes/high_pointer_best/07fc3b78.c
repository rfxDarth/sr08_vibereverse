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
#define DAT_07fc3d1c (0x07fd5650u)
#define DAT_07fc3d20 (0x07fcfc54u)
#define DAT_07fc3d24 (0x07fcfab8u)
#define DAT_07fc3d28 (0x07fcfaacu)
#define DAT_07fc3d2c (0x07fd56d0u)
#define DAT_07fc3d30 ((uint32_t*)0xe000e100u)
#define _DAT_07fc3d34 ((volatile uint16_t*)0x50003400u)





void FUN_07fc3b78(uint param_1)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  code *pcVar6;
  int iVar7;
  int iVar8;
  code *local_18;
  
  iVar8 = DAT_07fc3d1c;
  if (param_1 < 0x24) {
    uVar4 = (uint)*(byte *)(DAT_07fc3d1c + 0xc);
    if (uVar4 != 0x1e) {
      pcVar6 = (code *)0x0;
      iVar7 = 0;
      do {
        if (iVar7 + 4 == 0x90) {
          local_18 = (code *)0x0;
          goto LAB_07fc3bb6;
        }
        puVar1 = (undefined4 *)(DAT_07fc3d20 + iVar7);
        iVar7 = iVar7 + 4;
      } while (*(ushort *)*puVar1 != param_1);
      local_18 = *(code **)((ushort *)*puVar1 + 2);
LAB_07fc3bb6:
      iVar7 = 0;
      do {
        if (iVar7 + 4 == 0x90) goto LAB_07fc3bca;
        puVar1 = (undefined4 *)(DAT_07fc3d20 + iVar7);
        iVar7 = iVar7 + 4;
      } while (*(ushort *)*puVar1 != uVar4);
      pcVar6 = *(code **)((ushort *)*puVar1 + 4);
LAB_07fc3bca:
      if (uVar4 != param_1) {
        *(undefined1 *)(DAT_07fc3d1c + 0x30) = 0;
      }
      if (param_1 < 0x16) {
        FUN_07fc31d4();
        if (*(char *)(iVar8 + 0x34) == '\0') {
          FUN_07fc3e60(0,8);
          *(undefined1 *)(iVar8 + 0x34) = 1;
        }
        FUN_07fc8c64();
        iVar8 = DAT_07fc3d2c;
        *(undefined2 *)(DAT_07fc3d2c + 0x44) = 0;
        *(undefined4 *)(iVar8 + 0x40) = 0;
        iVar8 = DAT_07fc3d24;
        for (iVar7 = 0; iVar3 = DAT_07fc3d28, iVar7 != 0xe; iVar7 = iVar7 + 2) {
          FUN_07fc1d10(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x300,0,0);
        }
        for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
          FUN_07fc1d10(*(undefined1 *)(iVar3 + iVar8),*(undefined1 *)(iVar3 + iVar8 + 1),0x300,0,1);
        }
        FUN_07fc31d4();
        iVar8 = DAT_07fc3d1c;
        *(undefined1 *)(DAT_07fc3d1c + 0x2c) = 0xff;
        *DAT_07fc3d30 = 0x8000;
        *_DAT_07fc3d34 = *_DAT_07fc3d34 | 1;
        FUN_07fc3e60(0,2);
      }
      else {
        if (*(char *)(iVar8 + 0x34) == '\x01') {
          FUN_07fc8c64();
          iVar8 = DAT_07fc3d24;
          for (iVar7 = 0; iVar3 = DAT_07fc3d28, iVar7 != 0xe; iVar7 = iVar7 + 2) {
            FUN_07fc1d10(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x200,0,0
                        );
          }
          for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
            FUN_07fc1d10(*(undefined1 *)(iVar3 + iVar8),*(undefined1 *)(iVar3 + iVar8 + 1),0x200,0,1
                        );
          }
          FUN_07fc3e60(1,8);
          iVar8 = DAT_07fc3d1c;
          *(undefined1 *)(DAT_07fc3d1c + 0x2c) = 0xff;
          *(undefined1 *)(iVar8 + 0x34) = 0;
        }
        *(undefined2 *)(iVar8 + 0x40) = 0xf;
        if (param_1 == 0x20) {
          *(undefined2 *)(iVar8 + 0x40) = 0xb4;
          FUN_07fc3a38(0x4000000);
          uVar5 = 0x800;
        }
        else {
          FUN_07fc3a38(0x4000000);
          uVar5 = 0x8000000;
        }
        FUN_07fc3a38(uVar5);
      }
      FUN_07fc532c(((const char *)(uintptr_t)0x07fc3d37u) + 1,*(undefined1 *)(iVar8 + 0xc),param_1);
      FUN_07fcc9a4(1,0);
      if (pcVar6 != (code *)0x0) {
        (*pcVar6)(param_1);
      }
      uVar2 = *(undefined1 *)(iVar8 + 0xc);
      *(char *)(iVar8 + 0xc) = (char)param_1;
      if (local_18 != (code *)0x0) {
        (*local_18)(uVar2);
      }
    }
  }
  else {
    FUN_07fc532c(((const char *)(uintptr_t)0x07fc3d54u),param_1,0x24);
  }
  return;
}

