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
#define _DAT_07fc61dc (0x00000e14u)
#define _DAT_07fc61e0 (0x07fcf9f4u)
#define _DAT_07fc6420 ((uint32_t*)0x50003100u)
#define _DAT_07fc6424 ((uint16_t*)0x50003302u)
#define _DAT_07fc642c (0x07fd5650u)
#define _DAT_07fc64a0 (0x07fd56d0u)
#define _DAT_07fc64a4 (0x07fd53e4u)





undefined4 FUN_07fc60ec(undefined4 param_1,byte *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  undefined1 *puVar8;
  int iVar9;
  int iVar10;
  undefined4 *puVar11;
  
  uVar5 = (uint)*param_2;
  if (2 < uVar5 - 4) {
    uVar7 = param_4 >> 8;
    if (uVar5 == 7) {
      iVar9 = _DAT_07fc64a4 + uVar7 * 0x7a;
      bVar1 = param_2[1];
      *(byte *)(iVar9 + 0x1e) = bVar1;
      FUN_07fc34a8(iVar9 + 0x16,8,8,param_4,param_4);
      iVar10 = iVar9 + 4;
      FUN_07fc34a8(iVar10,bVar1,0x10);
      uVar4 = func_0x07f02976();
      *(undefined2 *)(iVar9 + 0x14) = uVar4;
      *(byte *)(iVar9 + 2) = *(byte *)(iVar9 + 2) | 1;
      iVar6 = FUN_07fc98a0(uVar7);
      *(undefined1 *)(iVar6 + 0x1c) = *(undefined1 *)(iVar9 + 0x1e);
      *(undefined2 *)(iVar6 + 0x12) = *(undefined2 *)(iVar9 + 0x14);
      uVar4 = *(undefined2 *)(iVar9 + 0x18);
      uVar2 = *(undefined2 *)(iVar9 + 0x16);
      uVar3 = *(undefined2 *)(iVar9 + 0x1c);
      *(undefined2 *)(iVar6 + 0x18) = *(undefined2 *)(iVar9 + 0x1a);
      *(undefined2 *)(iVar6 + 0x1a) = uVar3;
      *(undefined2 *)(iVar6 + 0x14) = uVar2;
      *(undefined2 *)(iVar6 + 0x16) = uVar4;
      func_0x07f1e0ac(iVar6 + 2,iVar10,0x10);
      FUN_07fc98a0(uVar7);
      func_0x07f1bbe2();
      *(undefined4 *)(_DAT_07fc642c + uVar7 * 4 + 0x60) = 0;
    }
    else {
      if (uVar5 != 0) {
        *_DAT_07fc6420 = 200;
        *_DAT_07fc6424 = 8;
        do {
                    
        } while( true );
      }
      *(undefined1 *)(_DAT_07fc64a0 + uVar7 * 0xe + 99) = 1;
      *(undefined1 *)(_DAT_07fc64a4 + uVar7 * 0x7a + 2) = 0;
      iVar10 = _DAT_07fc642c + uVar7 * 4;
      puVar8 = *(undefined1 **)(iVar10 + 0x5c);
      puVar11 = (undefined4 *)(iVar10 + 0x5c);
      if (puVar8 == (undefined1 *)0x0) {
        puVar8 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc61dc,param_4 & 0xffffff0a | 10,4,0x1e);
        *puVar8 = 1;
        *puVar11 = (undefined4)(uintptr_t)puVar8;
        func_0x07f1e0ac(puVar8 + 2,_DAT_07fc61e0,7);
        puVar8[1] = 1;
      }
      func_0x07f1bbe2(puVar8);
      *puVar11 = 0;
    }
  }
  return 0;
}

