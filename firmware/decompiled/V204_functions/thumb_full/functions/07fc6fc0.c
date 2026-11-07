/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc6fc0(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  byte bVar2;
  bool bVar3;
  undefined1 uVar4;
  uint uVar5;
  short *psVar6;
  int iVar7;
  short *psVar8;
  undefined1 *puVar9;
  short *psVar10;
  int iVar11;
  ushort uVar12;
  uint uVar13;
  undefined1 uVar14;
  sbyte asStack_20 [4];
  byte abStack_1c [4];
  uint uStack_18;
  
  uVar5 = func_0x07f1bf1a(param_3);
  if ((int)(uVar5 << 0x1e) < 0) {
    return 2;
  }
  psVar6 = (short *)FUN_07fcb080(0x26);
  iVar7 = FUN_07fc76a0(psVar6,*param_2,&uStack_18,abStack_1c,asStack_20);
  *(undefined1 *)((int)psVar6 + 0x1d) = 0;
  uVar13 = param_4 >> 8;
  uVar4 = (undefined1)(param_4 >> 8);
  *(undefined1 *)(psVar6 + 0xe) = uVar4;
  psVar6[0xf] = *param_2;
  if (iVar7 != 0) goto LAB_07fc7004;
  iVar7 = 0x80;
  switch(abStack_1c[0]) {
  case 5:
    puVar9 = (undefined1 *)
             func_0x07f1bbb0(iRam07fc727c + 5,
                             (uint)(int)*psVar6 >> 0xf & param_4 & 0xffffff00 |
                             uRam07fc7278 & (int)*psVar6,param_3,3);
    *puVar9 = uVar4;
    puVar9[1] = (undefined1)uStack_18;
    puVar9[2] = (char)param_2[3];
    func_0x07f1bbe2();
    iVar7 = 0;
    break;
  case 10:
    puVar9 = (undefined1 *)
             func_0x07f1bbb0(iRam07fc727c + 2,
                             param_4 & (uint)(int)*psVar6 >> 0xf & 0xffffff00 |
                             uRam07fc7278 & (int)*psVar6,param_3,4);
    uVar14 = 3;
    puVar9[1] = 3;
    *puVar9 = uVar4;
    puVar9[2] = (undefined1)uStack_18;
    uVar4 = (undefined1)param_2[3];
    goto code_r0x07fc7174;
  case 0xc:
  case 0xf:
  case 0x11:
  case 0x14:
    puVar9 = (undefined1 *)
             func_0x07f1bbb0(iRam07fc727c,
                             param_4 & (uint)(int)*psVar6 >> 0xf & 0xffffff00 |
                             uRam07fc7278 & (int)*psVar6,param_3,param_2[2] + 8);
    puVar9[1] = 2;
    *puVar9 = uVar4;
    uVar14 = 2;
    *(short *)(puVar9 + 4) = param_2[2];
    puVar9[6] = asStack_20[0];
    puVar9[2] = (undefined1)uStack_18;
    func_0x07f1e0ac(puVar9 + 7,param_2 + 3,param_2[2]);
    uVar4 = 2;
    switch(abStack_1c[0]) {
    case 0xc:
      break;
    default:
      *puRam07fc7518 = 200;
      *puRam07fc751c = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
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
    *(undefined1 *)((int)psVar6 + 0x1d) = uVar14;
    goto LAB_07fc7264;
  case 0xd:
  case 0x12:
  case 0x16:
    bVar1 = *(byte *)(param_2 + 3);
    bVar2 = *(byte *)((int)param_2 + 7);
    psVar8 = (short *)FUN_07fcb080(0x26);
    if (abStack_1c[0] == 0xd) {
      uVar12 = 1;
    }
    else if (abStack_1c[0] == 0x12) {
      uVar12 = 2;
    }
    else {
      if (abStack_1c[0] != 0x16) {
        *puRam07fc7518 = 200;
        *puRam07fc751c = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      uVar12 = (ushort)(0x40 << asStack_20[0]);
    }
    iVar7 = (uint)bVar2 * 0x100 + (uint)bVar1;
    if (iVar7 == 0) {
      psVar10 = psVar8 + (uStack_18 & 0xff) * 0xb + uVar13;
      uVar12 = psVar10[3] & ~uVar12;
code_r0x07fc71d0:
      psVar10[3] = uVar12;
      iVar7 = 0;
      bVar3 = true;
    }
    else {
      if (iVar7 == 1) {
        psVar10 = psVar8 + (uStack_18 & 0xff) * 0xb + uVar13;
        uVar12 = psVar10[3] | uVar12;
        goto code_r0x07fc71d0;
      }
      iVar7 = 0x80;
      bVar3 = false;
    }
    iVar11 = _DAT_07fc737c + uVar13 * 0xe;
    if ((*(char *)(iVar11 + 0x5b) == '\0') || (*(char *)(iVar11 + 99) != '\0')) {
      if (bVar3) {
code_r0x07fc7218:
        puVar9 = (undefined1 *)
                 func_0x07f1bbb0(iRam07fc727c + 4,
                                 (uint)(int)*psVar8 >> 0xf & param_4 & 0xffffff00 |
                                 uRam07fc7278 & (int)*psVar8,
                                 (int)psVar8[1] & uRam07fc7278 |
                                 (uint)(int)psVar8[1] >> 0xf & param_4 & 0xffffff00,4);
        *puVar9 = uVar4;
        *(short *)(puVar9 + 2) = psVar8[uVar13 + 3];
        func_0x07f1bbe2();
      }
    }
    else if (*(char *)(iVar11 + 100) == '\0') {
      iVar7 = 5;
    }
    else if (!(bool)(bVar3 ^ 1)) goto code_r0x07fc7218;
  }
  if (*(char *)((int)psVar6 + 0x1d) == '\0') {
LAB_07fc7004:
    psVar6 = (short *)func_0x07f1bbb0(_DAT_07fc7280,param_4,param_3,4);
    *(char *)(psVar6 + 1) = (char)iVar7;
    *psVar6 = *param_2;
    func_0x07f1bbe2();
  }
  else {
LAB_07fc7264:
    func_0x07f1beb6(param_3,uVar5 | 2);
  }
  return 0;
}

