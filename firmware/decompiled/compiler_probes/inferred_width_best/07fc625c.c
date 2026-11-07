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
#define _DAT_07fc6330 ((uint16_t*)0x50003100u)
#define _DAT_07fc6334 ((uint32_t*)0x50003302u)
#define _DAT_07fc6338 (0x07fd56d0u)
#define _DAT_07fc633c (0x07fd53e4u)
#define _DAT_07fc6340 (0x07fd5650u)
#define _DAT_07fc6354 (0x07fcad79u)





undefined4 FUN_07fc625c(undefined4 param_1,undefined2 *param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined1 uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  
  uVar5 = param_4;
  iVar3 = func_0x07f1bf1a(param_3);
  if (iVar3 != 2) {
    *_DAT_07fc6330 = 200;
    *_DAT_07fc6334 = 8;
    do {
                    
    } while( true );
  }
  uVar4 = param_4 >> 8;
  iVar3 = _DAT_07fc6338 + uVar4 * 0xe;
  uVar2 = (undefined1)(param_4 >> 8);
  *(undefined1 *)(iVar3 + 0x5a) = uVar2;
  if (uVar4 != 0xff) {
    *(undefined1 *)(iVar3 + 0x5b) = 1;
    func_0x07f1beb6(4,3);
    *(undefined2 *)(iVar3 + 0x58) = *param_2;
    *(undefined1 *)(iVar3 + 0x5c) = *(undefined1 *)((int)param_2 + 9);
    func_0x07f1e0ac(iVar3 + 0x5d,param_2 + 5,6);
    FUN_07fc31f8(uVar4,*(undefined1 *)(_DAT_07fc633c + uVar4 * 0x7a + 0x7a));
    iVar1 = _DAT_07fc6340;
    if (*(char *)(iVar3 + 0x5a) != -1) {
      *(undefined1 *)(_DAT_07fc6340 + 8) = uVar2;
      FUN_07fc532c(0x7fc6344,param_2[1],param_2[2],param_2[3],uVar5);
      FUN_07fc2e1c(param_2[1],param_2[2],param_2[3]);
      FUN_07fc3410(*(undefined1 *)(iVar1 + 0xb));
      if (((param_2[1] != 0x50) || (param_2[2] != 0)) || (param_2[3] != 600)) {
        uVar2 = FUN_07fc33e4(600,_DAT_07fc6354);
        *(undefined1 *)(iVar1 + 9) = uVar2;
      }
      goto LAB_07fc631a;
    }
  }
  FUN_07fcc538();
LAB_07fc631a:
  if (*(char *)(iVar3 + 0x5a) == -1) {
    FUN_07fcc538();
  }
  FUN_07fc4fc8(1);
  return 0;
}

