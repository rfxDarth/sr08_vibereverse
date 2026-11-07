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
#define DAT_07fc8c34 (0x07fd1ea4u)
#define DAT_07fc8e38 (0x07fd557cu)
#define _DAT_07fc8c28 ((uint32_t*)0x07fd0858u)
#define _DAT_07fc8c2c (0xfffeae80u)
#define _DAT_07fc8c30 (0x000004ecu)
#define _DAT_07fc8c38 (0x00002328u)





void FUN_07fc8bdc(void)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  piVar1 = _DAT_07fc8c28;
  uVar3 = FUN_07fc552c(*_DAT_07fc8c28 + _DAT_07fc8c2c,_DAT_07fc8c30,_DAT_07fc8c30 + 0xb4);
  iVar2 = DAT_07fc8c34;
  *(undefined4 *)(DAT_07fc8c34 + 0x2c) = uVar3;
  iVar4 = FUN_07fc552c(*piVar1,0,0x294);
  uVar5 = *(int *)(iVar2 + 0x2c) + iVar4;
  *(uint *)(iVar2 + 0x2c) = uVar5;
  uVar6 = *(uint *)(DAT_07fc8e38 + 0x44);
  if (uVar5 != uVar6) {
    if (((uVar5 < _DAT_07fc8c38 + 1) && (_DAT_07fc8c38 < uVar6)) ||
       ((_DAT_07fc8c38 < uVar5 && (uVar6 < _DAT_07fc8c38 + 1)))) {
      *(uint *)(DAT_07fc8e38 + 0x44) = uVar5;
    }
  }
  return;
}

