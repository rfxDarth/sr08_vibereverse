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
#define DAT_07fc8e38 (*((const uint32_t *)(uintptr_t)0x07fc8e38u))
#define DAT_07fc8e3c (*((const uint32_t *)(uintptr_t)0x07fc8e3cu))
#define DAT_07fc8e40 (*((const uint32_t *)(uintptr_t)0x07fc8e40u))
#define DAT_07fc8e44 (*((volatile uint16_t * const *)(uintptr_t)0x07fc8e44u))
#define DAT_07fc8e48 (*((const uint32_t *)(uintptr_t)0x07fc8e48u))
#define DAT_07fc8e4c (*((uint8_t * const *)(uintptr_t)0x07fc8e4cu))
#define DAT_07fc8e50 (*((const uint32_t *)(uintptr_t)0x07fc8e50u))
#define DAT_07fc8e54 (*((const uint32_t *)(uintptr_t)0x07fc8e54u))
#define DAT_07fc8fa0 (*((const uint32_t *)(uintptr_t)0x07fc8fa0u))



void FUN_07fc8c90(void)

{
  undefined4 *puVar1;
  char cVar2;
  byte bVar3;
  volatile undefined2 *puVar4;
  undefined2 uVar5;
  uint uVar6;
  register uint extraout_r1 __asm__("r1");
  int iVar7;
  int iVar8;
  code *pcVar9;
  char cVar10;
  int iVar11;
  byte *pbVar12;
  uint uVar13;
  undefined2 local_18 [2];
  
  cVar2 = *(char *)(DAT_07fc8e38 + 0x95);
  local_18[0] = 500;
  uVar6 = FUN_07fc4440();
  if (*(char *)(DAT_07fc8e3c + 0x34) == '\x01') {
    bVar3 = *(byte *)(DAT_07fc8e3c + 0x2c);
    if (-1 < (char)bVar3) {
      DAT_07fc8e44[3] = DAT_07fc8e44[3] & 0xfffe;
      iVar8 = DAT_07fc8e40;
      uVar13 = (uint)*(byte *)(DAT_07fc8e48 + (uint)bVar3 * 2 + 1);
      iVar7 = (uint)*(byte *)(DAT_07fc8e48 + (uint)bVar3 * 2) * 0x20;
      *(short *)(iVar7 + DAT_07fc8e40) = (short)(1 << uVar13);
      *(undefined2 *)(iVar8 + uVar13 * 2 + iVar7 + 4) = 0x300;
      pbVar12 = DAT_07fc8e4c;
      for (iVar8 = 0; iVar8 != 0xe; iVar8 = iVar8 + 2) {
        *(short *)(DAT_07fc8e40 + (uint)pbVar12[iVar8] * 0x20 + 2) =
             (short)(1 << pbVar12[iVar8 + 1]);
      }
    }
    func_0x07f1dfe4((int)(char)(bVar3 + 1),6);
  __asm__ volatile ("" : "=r"(extraout_r1));
    iVar8 = DAT_07fc8e3c;
    *(char *)(DAT_07fc8e3c + 0x2c) = (char)extraout_r1;
    iVar7 = DAT_07fc8e50;
    uVar13 = extraout_r1;
    if ((extraout_r1 & 0xff) == 0) {
      uVar13 = uVar6;
      if (uVar6 < *(uint *)(DAT_07fc8e50 + 0x3c)) {
        uVar13 = uVar6 + 0x5000000;
      }
      if (0x7c < uVar13 - *(uint *)(DAT_07fc8e50 + 0x3c) >> 2) {
        *(char *)(iVar8 + 0x30) = *(char *)(iVar8 + 0x30) + '\x01';
        *(uint *)(iVar7 + 0x3c) = uVar6;
      }
      uVar13 = 0;
      *(undefined2 *)(iVar7 + 0x44) = 0;
      *(undefined4 *)(iVar7 + 0x40) = 0;
      iVar7 = DAT_07fc8e3c;
      iVar11 = 0;
      do {
        if (iVar11 + 4 == 0x90) goto LAB_07fc8d28;
        puVar1 = (undefined4 *)(DAT_07fc8e54 + iVar11);
        iVar11 = iVar11 + 4;
      } while (*(ushort *)*puVar1 != (ushort)*(byte *)(iVar8 + 0xc));
      pcVar9 = *(code **)((ushort *)*puVar1 + 6);
      if (pcVar9 != (code *)0x0) {
        (*pcVar9)(local_18);
        uVar13 = (uint)*(byte *)(iVar7 + 0x2c);
      }
    }
LAB_07fc8d28:
    iVar8 = DAT_07fc8e40;
    bVar3 = *(byte *)(DAT_07fc8e50 + (char)uVar13 + 0x40);
    cVar10 = *(char *)(DAT_07fc8e38 + 0x95);
    pbVar12 = DAT_07fc8e4c;
    for (uVar6 = 0; uVar6 != 7; uVar6 = uVar6 + 1) {
      uVar5 = (undefined2)(1 << pbVar12[1]);
      if ((bVar3 >> (uVar6 & 0xff) & 1) == 0) {
        *(undefined2 *)(iVar8 + (uint)*pbVar12 * 0x20 + 2) = uVar5;
      }
      else {
        *(undefined2 *)((uint)*pbVar12 * 0x20 + iVar8) = uVar5;
      }
      pbVar12 = pbVar12 + 2;
    }
    iVar7 = (char)uVar13 * 2;
    uVar6 = (uint)*(byte *)(DAT_07fc8e48 + iVar7 + 1);
    iVar7 = (uint)*(byte *)(DAT_07fc8e48 + iVar7) * 0x20;
    *(short *)(iVar7 + iVar8) = (short)(1 << uVar6);
    *(undefined2 *)(iVar8 + uVar6 * 2 + iVar7 + 4) = 0x318;
    puVar4 = DAT_07fc8e44;
    DAT_07fc8e44[3] = DAT_07fc8e44[3] & 0xfffb;
    puVar4[2] = 0x31;
    puVar4[3] = puVar4[3] | 1;
    iVar8 = DAT_07fc8fa0;
    *(undefined1 *)(DAT_07fc8fa0 + 0x22) = 1;
    cVar10 = cVar10 << 1;
    if ((uVar13 & 0xff) != 5) {
      cVar10 = cVar2;
    }
    if (cVar10 < '\v') {
      cVar10 = '\n';
    }
    if ('a' < cVar10) {
      cVar10 = 'b';
    }
    *(byte *)(iVar8 + 0x23) = 100U - cVar10;
    uVar5 = func_0x07f1dfb8((uint)(byte)(100U - cVar10) * ((ushort)puVar4[2] + 1));
    *puVar4 = uVar5;
    puVar4[3] = puVar4[3] & 0xfffd;
  }
  return;
}

