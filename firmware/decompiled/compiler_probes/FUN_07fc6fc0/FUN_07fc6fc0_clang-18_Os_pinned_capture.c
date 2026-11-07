#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef signed char sbyte;
typedef unsigned long ulong;
typedef long long longlong;
typedef unsigned long long ulonglong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define uRam07fc7278 0x7fffu
#define iRam07fc727c 0x2604u
#define _DAT_07fc7280 0x0c16u
#define _DAT_07fc737c 0x07fd56d0u
#define puRam07fc7518 ((uint32_t *)0x50003100u)
#define puRam07fc751c ((uint32_t *)0x50003302u)





undefined4 FUN_07fc6fc0(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
    register short *after_ptr __asm__("r2");
    register int after_status __asm__("r4");

    register short *p2_r6 __asm__("r6");
    register undefined4 p3_r7 __asm__("r7");
    register uint p4_r5 __asm__("r5");
    __asm__ volatile (
        "mov %0, %3\n mov %1, %4\n mov %2, %5"
        : "=r"(p4_r5), "=r"(p3_r7), "=r"(p2_r6)
        : "r"(param_4), "r"(param_3), "r"(param_2) : "r0");

  struct { volatile uint status; uint reserved; sbyte as[4]; byte ab[4]; uint u; } stack_local;

  byte bVar1;
  byte bVar2;
  bool bVar3;
  undefined1 uVar4;
  
  short *psVar6;
  int iVar7;
  short *psVar8;
  undefined1 *puVar9;
  short *psVar10;
  int iVar11;
  ushort uVar12;
  uint uVar13;
  undefined1 uVar14;
  
  
  stack_local.status = func_0x07f1bf1a(param_3);
  if ((int)(stack_local.status << 0x1e) < 0) {
    return 2;
  }
  psVar6 = (short *)FUN_07fcb080(0x26);
  iVar7 = FUN_07fc76a0(psVar6,*p2_r6,&stack_local.u,stack_local.ab,stack_local.as);
    __asm__ volatile ("mov r2, r4\n mov r4, r0"
                      : "=r"(after_ptr), "=r"(after_status) : : "r0");

  *(undefined1 *)((int)after_ptr + 0x1d) = 0;
  uVar13 = p4_r5 >> 8;
  uVar4 = (undefined1)(p4_r5 >> 8);
  *(undefined1 *)(after_ptr + 0xe) = uVar4;
  after_ptr[0xf] = *p2_r6;
  if (after_status != 0) goto LAB_07fc7004;
  after_status = 0x80;
  switch(stack_local.ab[0]) {
  case 5:
    puVar9 = (undefined1 *)
             func_0x07f1bbb0(iRam07fc727c + 5,
                             (uint)(int)*after_ptr >> 0xf & p4_r5 & 0xffffff00 |
                             uRam07fc7278 & (int)*after_ptr,p3_r7,3);
    *puVar9 = uVar4;
    puVar9[1] = (undefined1)stack_local.u;
    puVar9[2] = (char)p2_r6[3];
    func_0x07f1bbe2();
    after_status = 0;
    break;
  case 10:
    puVar9 = (undefined1 *)
             func_0x07f1bbb0(iRam07fc727c + 2,
                             p4_r5 & (uint)(int)*after_ptr >> 0xf & 0xffffff00 |
                             uRam07fc7278 & (int)*after_ptr,p3_r7,4);
    uVar14 = 3;
    puVar9[1] = 3;
    *puVar9 = uVar4;
    puVar9[2] = (undefined1)stack_local.u;
    uVar4 = (undefined1)p2_r6[3];
    goto code_r0x07fc7174;
  case 0xc:
  case 0xf:
  case 0x11:
  case 0x14:
    puVar9 = (undefined1 *)
             func_0x07f1bbb0(iRam07fc727c,
                             p4_r5 & (uint)(int)*after_ptr >> 0xf & 0xffffff00 |
                             uRam07fc7278 & (int)*after_ptr,p3_r7,p2_r6[2] + 8);
    puVar9[1] = 2;
    *puVar9 = uVar4;
    uVar14 = 2;
    *(short *)(puVar9 + 4) = p2_r6[2];
    puVar9[6] = stack_local.as[0];
    puVar9[2] = (undefined1)stack_local.u;
    func_0x07f1e0ac(puVar9 + 7,p2_r6 + 3,p2_r6[2]);
    uVar4 = 2;
    switch(stack_local.ab[0]) {
    case 0xc:
      break;
    default:
      *puRam07fc7518 = 200;
      *puRam07fc751c = 8;
      do {
                    
      } while( true );
    case 0xf:
      uVar4 = 3;
      break;
    case 0x11:
      uVar4 = 4;
      break;
    case 0x14:
      uVar4 = 0;
    }
code_r0x07fc7174:
    puVar9[3] = uVar4;
    func_0x07f1bbe2(puVar9);
    *(undefined1 *)((int)after_ptr + 0x1d) = uVar14;
    goto LAB_07fc7264;
  case 0xd:
  case 0x12:
  case 0x16:
    bVar1 = *(byte *)(p2_r6 + 3);
    bVar2 = *(byte *)((int)p2_r6 + 7);
    psVar8 = (short *)FUN_07fcb080(0x26);
    if (stack_local.ab[0] == 0xd) {
      uVar12 = 1;
    }
    else if (stack_local.ab[0] == 0x12) {
      uVar12 = 2;
    }
    else {
      if (stack_local.ab[0] != 0x16) {
        *puRam07fc7518 = 200;
        *puRam07fc751c = 8;
        do {
                    
        } while( true );
      }
      uVar12 = (ushort)(0x40 << stack_local.as[0]);
    }
    after_status = (uint)bVar2 * 0x100 + (uint)bVar1;
    if (after_status == 0) {
      psVar10 = psVar8 + (stack_local.u & 0xff) * 0xb + uVar13;
      uVar12 = psVar10[3] & ~uVar12;
code_r0x07fc71d0:
      psVar10[3] = uVar12;
      after_status = 0;
      bVar3 = true;
    }
    else {
      if (after_status == 1) {
        psVar10 = psVar8 + (stack_local.u & 0xff) * 0xb + uVar13;
        uVar12 = psVar10[3] | uVar12;
        goto code_r0x07fc71d0;
      }
      after_status = 0x80;
      bVar3 = false;
    }
    iVar11 = _DAT_07fc737c + uVar13 * 0xe;
    if ((*(char *)(iVar11 + 0x5b) == '\0') || (*(char *)(iVar11 + 99) != '\0')) {
      if (bVar3) {
code_r0x07fc7218:
        puVar9 = (undefined1 *)
                 func_0x07f1bbb0(iRam07fc727c + 4,
                                 (uint)(int)*psVar8 >> 0xf & p4_r5 & 0xffffff00 |
                                 uRam07fc7278 & (int)*psVar8,
                                 (int)psVar8[1] & uRam07fc7278 |
                                 (uint)(int)psVar8[1] >> 0xf & p4_r5 & 0xffffff00,4);
        *puVar9 = uVar4;
        *(short *)(puVar9 + 2) = psVar8[uVar13 + 3];
        func_0x07f1bbe2();
      }
    }
    else if (*(char *)(iVar11 + 100) == '\0') {
      after_status = 5;
    }
    else if (!(bool)(bVar3 ^ 1)) goto code_r0x07fc7218;
  }
  if (*(char *)((int)after_ptr + 0x1d) == '\0') {
LAB_07fc7004:
    after_ptr = (short *)func_0x07f1bbb0(_DAT_07fc7280,p4_r5,p3_r7,4);
    *(char *)(after_ptr + 1) = (char)after_status;
    *after_ptr = *p2_r6;
    func_0x07f1bbe2();
  }
  else {
LAB_07fc7264:
    func_0x07f1beb6(p3_r7,stack_local.status | 2);
  }
  return 0;
}

