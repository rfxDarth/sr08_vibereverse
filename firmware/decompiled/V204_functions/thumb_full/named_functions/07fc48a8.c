/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc48a8(void)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  int extraout_r1;
  int iVar7;
  int extraout_r1_00;
  uint uVar8;
  int extraout_r1_01;
  int iVar9;
  bool bVar10;
  int iVar11;
  char *pcVar12;
  int iVar13;
  uint uVar14;
  uint uVar15;
  bool bVar16;
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
  
  piVar3 = DAT_07fc4c9c;
  piVar2 = DAT_07fc4c98;
  local_74 = *DAT_07fc4c9c;
  if ((uint)(local_74 - *DAT_07fc4c98) < 0x33) {
    return;
  }
  *DAT_07fc4c98 = local_74;
  local_70 = piVar3[7];
  local_6c = 0xf;
  ROM___aeabi_idiv /* 0x07f1dfe4 */();
  iVar9 = DAT_07fc4ca0;
  iVar13 = 0x5a;
  *(undefined1 *)((int)piVar2 + extraout_r1 + 0x5a) = *(undefined1 *)(DAT_07fc4ca0 + 0x10);
  local_88 = (uint)*(byte *)(iVar9 + 0xf);
  iVar11 = 0x69;
  *(byte *)((int)piVar2 + extraout_r1 + 0x69) = *(byte *)(iVar9 + 0xf);
  iVar9 = DAT_07fc4ca4;
  iVar4 = DAT_07fc4ca4 + extraout_r1;
  uVar15 = 0;
  *(undefined1 *)(iVar4 + 0x6b) = 0;
  iVar7 = *(int *)(iVar9 + 0x4c);
  *(int *)(iVar9 + 0x4c) = *(int *)(iVar9 + 0x38);
  local_78 = *(int *)(iVar9 + 0x38) - iVar7;
  if (0xfe < local_78) {
    local_78 = 0xff;
  }
  local_7c = 0x5c;
  *(char *)(iVar4 + 0x5c) = (char)local_78;
  *(undefined1 *)(DAT_07fc4ca0 + 0x10) = 0;
  local_70 = local_70 + 1;
  ROM___aeabi_idiv /* 0x07f1dfe4 */(local_70,local_6c);
  if (extraout_r1_00 != 0) {
    return;
  }
  local_8c = DAT_07fc4c9c[3] + DAT_07fc4ca8;
  local_90 = DAT_07fc4c9c[3] + DAT_07fc4cac;
  local_6c = (uint)*(byte *)(DAT_07fc4ca0 + 0xe);
  uVar8 = *(uint *)(DAT_07fc4ca4 + 0x50);
  uVar5 = *(uint *)(DAT_07fc4ca4 + 0x38);
  do {
    if (iVar11 == 0x78) {
      bVar16 = *(char *)(DAT_07fc4d44 + 0x6c) == '\0';
      goto LAB_07fc4950;
    }
    pcVar12 = (char *)((int)piVar2 + iVar11);
    iVar11 = iVar11 + 1;
  } while (*pcVar12 != '\0');
  bVar16 = false;
LAB_07fc4950:
  bVar10 = false;
  for (; iVar13 != 0x69; iVar13 = iVar13 + 1) {
    if (0x23 < *(byte *)((int)piVar2 + iVar13)) {
      bVar10 = true;
    }
    uVar15 = uVar15 + *(byte *)((int)piVar2 + iVar13);
  }
  uVar14 = 0;
  for (iVar9 = 0x5a; iVar9 != 0x69; iVar9 = iVar9 + 1) {
    uVar14 = uVar14 + *(byte *)((int)piVar2 + iVar9);
  }
  local_84 = uVar5;
  local_80 = uVar8;
  if (local_6c == 2) {
    if (((((DAT_07fc4d4c <= local_8c) && (uVar15 < 0x5b || !bVar10)) && (uVar5 - uVar8 < 0x24)) &&
        ((*(int *)(DAT_07fc4d44 + 0x6c) != 0 && (!bVar16)))) && (DAT_07fc4d48[10] != '\x02')) {
      if (10 < uVar14) goto LAB_07fc4a9a;
LAB_07fc4d2e:
      pcVar12 = DAT_07fc50ac;
      ROM___aeabi_memclr /* 0x07f1e0de */(DAT_07fc50ac + 0x6b,0xf);
LAB_07fc4a06:
      for (iVar9 = 0x6b; iVar9 != 0x7a; iVar9 = iVar9 + 1) {
        pcVar12[iVar9] = 'c';
      }
      goto LAB_07fc4ac0;
    }
LAB_07fc4a42:
    local_6c = 0;
    *(undefined1 *)(DAT_07fc4d44 + 0xe) = 0;
    pcVar12 = DAT_07fc4d48;
    ROM___aeabi_memclr /* 0x07f1e0de */(DAT_07fc4d48 + 0x6b,0xf);
LAB_07fc4a58:
    for (iVar9 = 0x5a; (iVar9 != 0x69 && (*(char *)((int)piVar2 + iVar9) == '\0'));
        iVar9 = iVar9 + 1) {
      pcVar12[iVar9 + 0x11] = '(';
    }
  }
  else {
    if (local_6c == 1) {
      if (((local_8c < DAT_07fc4d4c) || (bVar10 && 0x5a < uVar15)) ||
         (((0x23 < uVar5 - uVar8 || ((*(int *)(DAT_07fc4d44 + 0x6c) == 0 || (bVar16)))) ||
          (DAT_07fc4d48[10] == '\x02')))) goto LAB_07fc4a42;
      if ((uVar14 < 0xb) && (DAT_07fc4d50 < (uint)(local_74 - piVar2[0xc]))) {
        *(undefined1 *)(DAT_07fc4d44 + 0xe) = 2;
        goto LAB_07fc4d2e;
      }
LAB_07fc4aa4:
      pcVar12 = DAT_07fc4d48;
      ROM___aeabi_memclr /* 0x07f1e0de */(DAT_07fc4d48 + 0x6b,0xf);
    }
    else {
      if (((DAT_07fc4d54 <= local_90) && (uVar15 = FUN_07fc4164(), uVar5 == uVar8)) &&
         ((uVar14 < uVar15 &&
          (((DAT_07fc4d48[10] == '\x01' && ((DAT_07fc4d5c & *(uint *)(DAT_07fc4d44 + 0x6c)) != 0))
           && (local_88 == 0 && *(char *)(DAT_07fc4d58 + 0x26) == '\0')))))) {
LAB_07fc4a9a:
        piVar2[0xc] = local_74;
        *(undefined1 *)(DAT_07fc4d44 + 0xe) = 1;
        goto LAB_07fc4aa4;
      }
      pcVar12 = DAT_07fc4d48;
      ROM___aeabi_memclr /* 0x07f1e0de */(DAT_07fc4d48 + 0x6b,0xf);
      if (local_6c == 0) {
        local_6c = 0;
        goto LAB_07fc4acc;
      }
      if (local_6c != 1) {
        if (local_6c == 2) goto LAB_07fc4a06;
        goto LAB_07fc4a58;
      }
    }
    for (iVar9 = 0x6b; iVar9 != 0x7a; iVar9 = iVar9 + 1) {
      pcVar12[iVar9] = '(';
    }
LAB_07fc4ac0:
    local_6c = 2;
  }
LAB_07fc4acc:
  uVar15 = local_84;
  local_90 = 0;
  *(undefined4 *)(DAT_07fc4d44 + 0x70) = 0;
  local_88 = 0xf;
  ROM___aeabi_memclr /* 0x07f1e0de */((int)piVar2 + 0x5a);
  *(uint *)(pcVar12 + 0x50) = uVar15;
  uVar5 = *(uint *)(pcVar12 + 0x54);
  uVar8 = *(uint *)(pcVar12 + 0x3c);
  *(uint *)(pcVar12 + 0x54) = uVar8;
  local_8c = DAT_07fc4d40[8];
  local_84 = 0x24;
  ROM___aeabi_memclr /* 0x07f1e0de */(&local_68);
  local_64 = (char)local_90;
  local_68 = local_74;
  local_98 = local_90;
  if (uVar5 <= uVar8) {
    local_98 = uVar5;
  }
  uVar5 = local_90;
  if (local_80 <= uVar15) {
    uVar5 = local_80;
  }
  uVar15 = uVar15 - uVar5;
  local_94 = uVar8;
  local_70 = ROM___aeabi_idiv /* 0x07f1dfe4 */(local_70 + local_8c * 0x3c,local_88);
  iVar4 = local_74;
  iVar9 = DAT_07fc4f28;
  iVar7 = local_7c;
  if (local_6c == 0) {
    for (; iVar7 != 0x6b; iVar7 = iVar7 + 1) {
      auStack_be[iVar7] = *(undefined1 *)(DAT_07fc4f28 + iVar7);
    }
    if (uVar15 == 0) goto LAB_07fc4cc8;
  }
  else {
    local_64 = '\0';
    bVar16 = false;
    for (iVar7 = 0x6b; iVar7 != 0x7a; iVar7 = iVar7 + 1) {
      cVar1 = *(char *)(DAT_07fc4f28 + iVar7);
      acStack_cd[iVar7] = cVar1;
      if (cVar1 != '\0') {
        bVar16 = true;
        local_64 = '\x01';
      }
    }
    if (uVar15 != 0) {
      *(uint *)(DAT_07fc4f28 + 0x50) = uVar5;
      *(uint *)(iVar9 + 0x38) = uVar5;
    }
    iVar9 = DAT_07fc4f28;
    if (local_94 != local_98) {
      *(uint *)(DAT_07fc4f28 + 0x54) = local_98;
      *(uint *)(iVar9 + 0x3c) = local_98;
    }
    iVar9 = DAT_07fc4f28;
    local_6c = uVar15;
    if (!bVar16) goto LAB_07fc4cc8;
  }
  local_24[3] = 0;
  local_24[2] = 0;
  local_24[1] = 0;
  local_24[0] = 0;
  FUN_07fc9004(iVar4,auStack_44);
  uVar6 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar4,DAT_07fc4d60);
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar6,7);
  iVar9 = extraout_r1_01 * 0x2000 + DAT_07fc4d64;
  FUN_07fc3ea0(local_24,iVar9,0x10,0);
  uVar15 = local_70 - 1;
  local_84 = uVar15 * local_84;
  for (iVar4 = 0; iVar4 != 0x10; iVar4 = iVar4 + 4) {
    *(uint *)((int)local_24 + iVar4) = ~*(uint *)((int)local_24 + iVar4);
  }
  uVar5 = 1 << (uVar15 & 0x1f);
  uVar8 = uVar15 >> 3 & 0x3fc;
  uVar14 = *(uint *)((int)local_24 + uVar8);
  if ((uVar14 & uVar5) == 0) {
    iVar7 = extraout_r1_01 * 0x2000 + local_84;
    *(uint *)((int)local_24 + uVar8) = uVar14 | uVar5;
    for (iVar4 = 0; iVar4 != 0x10; iVar4 = iVar4 + 4) {
      *(uint *)((int)local_24 + iVar4) = ~*(uint *)((int)local_24 + iVar4);
    }
    FUN_07fc3ea0(local_24,iVar9,0x10,1);
    FUN_07fc3ea0(&local_68,iVar7 + 0x2e000,0x24,1);
  }
  FUN_07fc5600(*DAT_07fc4d40,uVar15 & 0xff,&local_68);
  iVar9 = DAT_07fc5020;
  if (local_64 == '\x01') {
    *(int *)(DAT_07fc5020 + 0x44) = *(int *)(DAT_07fc5020 + 0x44) + 900;
  }
  else {
    uVar15 = 0;
    for (iVar4 = 0; iVar4 != 0xf; iVar4 = iVar4 + 1) {
      uVar5 = (uint)local_62[iVar4];
      if (uVar5 != 0) {
        *(int *)(iVar9 + 0x48) = *(int *)(iVar9 + 0x48) + 0x3c;
        if (0x32 < uVar5) {
          *(int *)(iVar9 + 0x40) = *(int *)(iVar9 + 0x40) + 0x3c;
        }
        uVar15 = uVar15 + uVar5;
      }
    }
    if (((DAT_07fc4d40[8] == 0) && (DAT_07fc4d40[7] == 0xe)) && (uVar15 < *(uint *)(iVar9 + 0x38)))
    {
      *(uint *)(iVar9 + 0x38) = uVar15;
    }
  }
LAB_07fc4cc8:
  FUN_07fc5200();
  ROM___aeabi_memclr /* 0x07f1e0de */(iVar9 + 0x5c,0x1e);
  if ((((local_78 == 0) && (DAT_07fc50b0[8] != 0)) &&
      ((DAT_07fc50b0[8] != 0x17 &&
       ((*(char *)(DAT_07fc4fc4 + 0xe) == '\0' && (*(char *)(DAT_07fc4fc4 + 3) != '\x02')))))) &&
     ((*(char *)(DAT_07fc5028 + 0xc) != '\x1e' &&
      ((*DAT_07fc50ac == '\0' && (DAT_07fc4d68 <= *(uint *)(DAT_07fc50ac + 0x24))))))) {
    FUN_07fc4400(*DAT_07fc50b0,0);
    FUN_07fc43a4(0);
  }
  return;
}

