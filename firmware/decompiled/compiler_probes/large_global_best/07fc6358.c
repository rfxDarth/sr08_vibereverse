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
#define _DAT_07fc642c (0x07fd5650u)
#define _DAT_07fc6430 (0x07fd0b58u)
#define _DAT_07fc6434 (0x07fd557cu)
#define _DAT_07fc6438 (0x0000aaaau)
#define _DAT_07fc643c (0x11111111u)
#define _DAT_07fc64a0 (0x07fd56d0u)
#define _DAT_07fc6774 ((uint8_t*)0x50003100u)
#define _DAT_07fc6778 ((uint8_t*)0x50003302u)





longlong FUN_07fc6358(undefined4 param_1,uint param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uStack_18;
  
  uStack_18 = param_4;
  iVar1 = func_0x07f1bf1a(param_3);
  iVar2 = _DAT_07fc64a0;
  if (iVar1 == 3) {
    *(undefined1 *)(_DAT_07fc64a0 + 100) = 0;
    *(undefined2 *)(iVar2 + (param_4 >> 8) * 0xe + 0x5a) = 0xff;
    iVar1 = _DAT_07fc642c;
    if (*(char *)(_DAT_07fc642c + 9) != '\0') {
      FUN_07fc3410();
      *(undefined1 *)(iVar1 + 9) = 0;
    }
    FUN_07fcc538();
    if (*(char *)(iVar1 + 0x18) == '\x01') {
      *(undefined1 *)(iVar1 + 0x18) = 0;
      if (*(char *)(iVar1 + 0x1c) == '\x01') {
        iVar2 = 0x18000;
        FUN_07fc3e90(0x18000,0x14000);
        iVar1 = 0x6c000;
        for (iVar3 = 0x50; iVar3 != 0; iVar3 = iVar3 + -1) {
          FUN_07fc3ea0(_DAT_07fc6430,iVar1,0x400,0);
          FUN_07fc3ea0(_DAT_07fc6430,iVar2,0x400,1);
          iVar1 = iVar1 + 0x400;
          iVar2 = iVar2 + 0x400;
        }
        uStack_18 = ((uStack_18 & 0xffffff00u) | (uint8_t)(0xaa));
        FUN_07fc3ea0(&uStack_18,0x18002,1,1);
        iVar2 = _DAT_07fc64a0;
      }
      iVar1 = _DAT_07fc6434;
      *(short *)(_DAT_07fc6434 + 0x98) = (short)_DAT_07fc6438;
      *(undefined4 *)(iVar1 + 0x9c) = *(undefined4 *)(iVar2 + 0x2c);
      FUN_07fc5200();
      func_0x07f027e4(_DAT_07fc643c);
    }
    FUN_07fc4fc8(0);
    return (ulonglong)param_2 << 0x20;
  }
  *_DAT_07fc6774 = 200;
  *_DAT_07fc6778 = 8;
  do {
                    
  } while( true );
}

