/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4798(void)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  int extraout_r1;
  int iVar6;
  int extraout_r1_00;
  uint uVar7;
  int extraout_r1_01;
  int iVar8;
  bool bVar9;
  int iVar10;
  char *pcVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  bool bVar15;
  char acStack_cd [15];
  undefined1 auStack_be [38];
  uint local_98;
  uint local_94;
  uint local_90;
  uint local_8c;
  uint local_88;
  uint local_84;
  uint local_80;
  int local_7c;
  uint local_78;
  int local_74;
  int local_70;
  uint local_6c;
  int local_68;
  char local_64;
  byte local_62 [30];
  undefined1 auStack_44 [32];
  uint local_24 [4];
  
  iVar8 = DAT_07fc4b8c;
  piVar2 = DAT_07fc4b88;
  local_74 = *(int *)(DAT_07fc4b8c + 0x28);
  if ((uint)(local_74 - *DAT_07fc4b88) < 0x33) {
    return;
  }
  *DAT_07fc4b88 = local_74;
  local_70 = *(int *)(iVar8 + 0x44);
  local_6c = 0xf;
  func_0x07f1dfe4();
  iVar8 = DAT_07fc4b90;
  iVar12 = 0x52;
  *(undefined1 *)((int)piVar2 + extraout_r1 + 0x52) = *(undefined1 *)(DAT_07fc4b90 + 0x11);
  local_88 = (uint)*(byte *)(iVar8 + 0x10);
  iVar10 = 0x61;
  *(byte *)((int)piVar2 + extraout_r1 + 0x61) = *(byte *)(iVar8 + 0x10);
  iVar8 = DAT_07fc4b94;
  iVar3 = DAT_07fc4b94 + extraout_r1;
  uVar14 = 0;
  *(undefined1 *)(iVar3 + 0x6b) = 0;
  iVar6 = *(int *)(iVar8 + 0x4c);
  *(int *)(iVar8 + 0x4c) = *(int *)(iVar8 + 0x38);
  local_78 = *(int *)(iVar8 + 0x38) - iVar6;
  if (0xfe < local_78) {
    local_78 = 0xff;
  }
  local_7c = 0x5c;
  *(char *)(iVar3 + 0x5c) = (char)local_78;
  *(undefined1 *)(DAT_07fc4b90 + 0x11) = 0;
  local_70 = local_70 + 1;
  func_0x07f1dfe4(local_70,local_6c);
  if (extraout_r1_00 != 0) {
    return;
  }
  local_8c = *(int *)(DAT_07fc4b8c + 0x34) + DAT_07fc4b98;
  local_90 = *(int *)(DAT_07fc4b8c + 0x34) + DAT_07fc4b9c;
  local_6c = (uint)*(byte *)(DAT_07fc4b90 + 0xf);
  uVar7 = *(uint *)(DAT_07fc4b94 + 0x50);
  uVar4 = *(uint *)(DAT_07fc4b94 + 0x38);
  do {
    if (iVar10 == 0x70) {
      bVar15 = *(char *)(DAT_07fc4c34 + 0x6c) == '\0';
      goto LAB_07fc4840;
    }
    pcVar11 = (char *)((int)piVar2 + iVar10);
    iVar10 = iVar10 + 1;
  } while (*pcVar11 != '\0');
  bVar15 = false;
LAB_07fc4840:
  bVar9 = false;
  for (; iVar12 != 0x61; iVar12 = iVar12 + 1) {
    if (0x23 < *(byte *)((int)piVar2 + iVar12)) {
      bVar9 = true;
    }
    uVar14 = uVar14 + *(byte *)((int)piVar2 + iVar12);
  }
  uVar13 = 0;
  for (iVar8 = 0x52; iVar8 != 0x61; iVar8 = iVar8 + 1) {
    uVar13 = uVar13 + *(byte *)((int)piVar2 + iVar8);
  }
  local_84 = uVar4;
  local_80 = uVar7;
  if (local_6c == 2) {
    if (((((DAT_07fc4c3c <= local_8c) && (uVar14 < 0x5b || !bVar9)) && (uVar4 - uVar7 < 0x24)) &&
        ((*(int *)(DAT_07fc4c34 + 0x6c) != 0 && (!bVar15)))) && (DAT_07fc4c38[10] != '\x02')) {
      if (10 < uVar13) goto LAB_07fc498a;
LAB_07fc4c1e:
      pcVar11 = DAT_07fc4f9c;
      func_0x07f1e0de(DAT_07fc4f9c + 0x6b,0xf);
LAB_07fc48f6:
      for (iVar8 = 0x6b; iVar8 != 0x7a; iVar8 = iVar8 + 1) {
        pcVar11[iVar8] = 'c';
      }
      goto LAB_07fc49b0;
    }
LAB_07fc4932:
    local_6c = 0;
    *(undefined1 *)(DAT_07fc4c34 + 0xf) = 0;
    pcVar11 = DAT_07fc4c38;
    func_0x07f1e0de(DAT_07fc4c38 + 0x6b,0xf);
LAB_07fc4948:
    for (iVar8 = 0x52; (iVar8 != 0x61 && (*(char *)((int)piVar2 + iVar8) == '\0'));
        iVar8 = iVar8 + 1) {
      pcVar11[iVar8 + 0x19] = '(';
    }
  }
  else {
    if (local_6c == 1) {
      if (((local_8c < DAT_07fc4c3c) || (bVar9 && 0x5a < uVar14)) ||
         (((0x23 < uVar4 - uVar7 || ((*(int *)(DAT_07fc4c34 + 0x6c) == 0 || (bVar15)))) ||
          (DAT_07fc4c38[10] == '\x02')))) goto LAB_07fc4932;
      if ((uVar13 < 0xb) && (DAT_07fc4c40 < (uint)(local_74 - piVar2[10]))) {
        *(undefined1 *)(DAT_07fc4c34 + 0xf) = 2;
        goto LAB_07fc4c1e;
      }
LAB_07fc4994:
      pcVar11 = DAT_07fc4c38;
      func_0x07f1e0de(DAT_07fc4c38 + 0x6b,0xf);
    }
    else {
      if (((DAT_07fc4c44 <= local_90) && (uVar14 = FUN_07fc4088(), uVar4 == uVar7)) &&
         ((uVar13 < uVar14 &&
          (((DAT_07fc4c38[10] == '\x01' && ((DAT_07fc4c4c & *(uint *)(DAT_07fc4c34 + 0x6c)) != 0))
           && (local_88 == 0 && *(char *)(DAT_07fc4c48 + 0x26) == '\0')))))) {
LAB_07fc498a:
        piVar2[10] = local_74;
        *(undefined1 *)(DAT_07fc4c34 + 0xf) = 1;
        goto LAB_07fc4994;
      }
      pcVar11 = DAT_07fc4c38;
      func_0x07f1e0de(DAT_07fc4c38 + 0x6b,0xf);
      if (local_6c == 0) {
        local_6c = 0;
        goto LAB_07fc49bc;
      }
      if (local_6c != 1) {
        if (local_6c == 2) goto LAB_07fc48f6;
        goto LAB_07fc4948;
      }
    }
    for (iVar8 = 0x6b; iVar8 != 0x7a; iVar8 = iVar8 + 1) {
      pcVar11[iVar8] = '(';
    }
LAB_07fc49b0:
    local_6c = 2;
  }
LAB_07fc49bc:
  uVar14 = local_84;
  local_90 = 0;
  *(undefined4 *)(DAT_07fc4c34 + 0x70) = 0;
  local_88 = 0xf;
  func_0x07f1e0de((int)piVar2 + 0x52);
  *(uint *)(pcVar11 + 0x50) = uVar14;
  uVar4 = *(uint *)(pcVar11 + 0x54);
  uVar7 = *(uint *)(pcVar11 + 0x3c);
  *(uint *)(pcVar11 + 0x54) = uVar7;
  local_8c = *(int *)(DAT_07fc4c30 + 0x48);
  local_84 = 0x24;
  func_0x07f1e0de(&local_68);
  local_64 = (char)local_90;
  local_68 = local_74;
  local_98 = local_90;
  if (uVar4 <= uVar7) {
    local_98 = uVar4;
  }
  uVar4 = local_90;
  if (local_80 <= uVar14) {
    uVar4 = local_80;
  }
  uVar14 = uVar14 - uVar4;
  local_94 = uVar7;
  local_70 = func_0x07f1dfe4(local_70 + local_8c * 0x3c,local_88);
  iVar3 = local_74;
  iVar8 = DAT_07fc4e18;
  iVar6 = local_7c;
  if (local_6c == 0) {
    for (; iVar6 != 0x6b; iVar6 = iVar6 + 1) {
      auStack_be[iVar6] = *(undefined1 *)(DAT_07fc4e18 + iVar6);
    }
    if (uVar14 == 0) goto LAB_07fc4bb8;
  }
  else {
    local_64 = '\0';
    bVar15 = false;
    for (iVar6 = 0x6b; iVar6 != 0x7a; iVar6 = iVar6 + 1) {
      cVar1 = *(char *)(DAT_07fc4e18 + iVar6);
      acStack_cd[iVar6] = cVar1;
      if (cVar1 != '\0') {
        bVar15 = true;
        local_64 = '\x01';
      }
    }
    if (uVar14 != 0) {
      *(uint *)(DAT_07fc4e18 + 0x50) = uVar4;
      *(uint *)(iVar8 + 0x38) = uVar4;
    }
    iVar8 = DAT_07fc4e18;
    if (local_94 != local_98) {
      *(uint *)(DAT_07fc4e18 + 0x54) = local_98;
      *(uint *)(iVar8 + 0x3c) = local_98;
    }
    iVar8 = DAT_07fc4e18;
    local_6c = uVar14;
    if (!bVar15) goto LAB_07fc4bb8;
  }
  local_24[3] = 0;
  local_24[2] = 0;
  local_24[1] = 0;
  local_24[0] = 0;
  FUN_07fc8088(iVar3,auStack_44);
  uVar5 = func_0x07f1dfb8(iVar3,DAT_07fc4c50);
  func_0x07f1dfb8(uVar5,7);
  iVar8 = extraout_r1_01 * 0x2000 + DAT_07fc4c54;
  FUN_07fc3df8(local_24,iVar8,0x10,0);
  uVar14 = local_70 - 1;
  local_84 = uVar14 * local_84;
  for (iVar3 = 0; iVar3 != 0x10; iVar3 = iVar3 + 4) {
    *(uint *)((int)local_24 + iVar3) = ~*(uint *)((int)local_24 + iVar3);
  }
  uVar4 = 1 << (uVar14 & 0x1f);
  uVar7 = uVar14 >> 3 & 0x3fc;
  uVar13 = *(uint *)((int)local_24 + uVar7);
  if ((uVar13 & uVar4) == 0) {
    iVar6 = extraout_r1_01 * 0x2000 + local_84;
    *(uint *)((int)local_24 + uVar7) = uVar13 | uVar4;
    for (iVar3 = 0; iVar3 != 0x10; iVar3 = iVar3 + 4) {
      *(uint *)((int)local_24 + iVar3) = ~*(uint *)((int)local_24 + iVar3);
    }
    FUN_07fc3df8(local_24,iVar8,0x10,1);
    FUN_07fc3df8(&local_68,iVar6 + 0x2e000,0x24,1);
  }
  FUN_07fc55f8(*(undefined4 *)(DAT_07fc4c30 + 0x28),uVar14 & 0xff,&local_68);
  iVar8 = DAT_07fc4f10;
  if (local_64 == '\x01') {
    *(int *)(DAT_07fc4f10 + 0x44) = *(int *)(DAT_07fc4f10 + 0x44) + 900;
  }
  else {
    uVar14 = 0;
    for (iVar3 = 0; iVar3 != 0xf; iVar3 = iVar3 + 1) {
      uVar4 = (uint)local_62[iVar3];
      if (uVar4 != 0) {
        *(int *)(iVar8 + 0x48) = *(int *)(iVar8 + 0x48) + 0x3c;
        if (0x32 < uVar4) {
          *(int *)(iVar8 + 0x40) = *(int *)(iVar8 + 0x40) + 0x3c;
        }
        uVar14 = uVar14 + uVar4;
      }
    }
    if (((*(int *)(DAT_07fc4c30 + 0x48) == 0) && (*(int *)(DAT_07fc4c30 + 0x44) == 0xe)) &&
       (uVar14 < *(uint *)(iVar8 + 0x38))) {
      *(uint *)(iVar8 + 0x38) = uVar14;
    }
  }
LAB_07fc4bb8:
  FUN_07fc50f0();
  func_0x07f1e0de(iVar8 + 0x5c,0x1e);
  if ((((local_78 == 0) && (*(int *)(DAT_07fc4fa0 + 0x48) != 0)) &&
      ((*(int *)(DAT_07fc4fa0 + 0x48) != 0x17 &&
       ((*(char *)(DAT_07fc4eb4 + 0xf) == '\0' && (*(char *)(DAT_07fc4eb4 + 3) != '\x02')))))) &&
     ((*(char *)(DAT_07fc4f18 + 0xb) != '\x1e' &&
      ((*DAT_07fc4f9c == '\0' && (DAT_07fc4c58 <= *(uint *)(DAT_07fc4f9c + 0x24))))))) {
    FUN_07fc42ec(*(undefined4 *)(DAT_07fc4fa0 + 0x28),0);
    FUN_07fc4258(0);
  }
  return;
}

