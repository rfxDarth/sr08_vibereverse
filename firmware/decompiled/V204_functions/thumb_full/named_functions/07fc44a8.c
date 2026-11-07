/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc44a8(void)

{
  undefined4 *puVar1;
  byte bVar2;
  char cVar3;
  short sVar4;
  int *piVar5;
  code *pcVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int extraout_r1;
  undefined4 uVar10;
  int extraout_r1_00;
  int iVar11;
  int extraout_r1_01;
  int extraout_r1_02;
  int iVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  int iVar16;
  uint uVar17;
  uint *puVar18;
  int iVar19;
  int iVar20;
  int local_64 [8];
  undefined4 local_44;
  int local_40;
  int local_3c;
  uint local_24;
  uint local_20;
  int local_1c;
  int local_18;
  
  piVar5 = DAT_07fc4858;
  *DAT_07fc4858 = 1;
  puVar18 = DAT_07fc4860;
  do {
  } while (*piVar5 != 0);
  uVar7 = *DAT_07fc485c;
  uVar15 = DAT_07fc4860[4];
  if (uVar7 < uVar15) {
    uVar7 = uVar7 + 0x8000000;
  }
  uVar7 = uVar7 - uVar15;
  iVar8 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar7,0x640);
  uVar17 = *puVar18;
  uVar13 = puVar18[1] + iVar8;
  *puVar18 = uVar13;
  puVar18 = DAT_07fc4860;
  if (DAT_07fc4864 <= uVar7) {
    DAT_07fc4860[5] = 0;
    puVar18[1] = uVar13;
    ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar7 * 5,8000);
    iVar8 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar7 * 5 - extraout_r1,5);
    DAT_07fc4860[4] = uVar15 + iVar8 & 0x7ffffff;
  }
  puVar18 = DAT_07fc4860;
  if (1 < uVar13 - uVar17) {
    *DAT_07fc4860 = uVar17;
    FUN_07fc9004(uVar13,local_64);
    if (local_64[0] < (int)puVar18[6]) {
      FUN_07fc48a8();
    }
    puVar18[2] = uVar13;
    *puVar18 = uVar13;
  }
  puVar18 = DAT_07fc4860;
  if (uVar13 == uVar17) {
    return;
  }
  DAT_07fc4860[2] = uVar13;
  if ((uVar13 & 3) == 0) {
    FUN_07fc4400(uVar13,0);
    uVar13 = *puVar18;
  }
  FUN_07fc9004(uVar13,puVar18 + 6);
  uVar7 = puVar18[6];
  puVar18[3] = puVar18[7] * 0x3c + puVar18[8] * 0xe10 + uVar7;
  if (0x3a < (int)uVar7) {
    FUN_07fc48a8();
    uVar7 = puVar18[6];
  }
  iVar8 = DAT_07fc4868;
  if ((uVar7 & 1) == 0) {
    uVar10 = *(undefined4 *)(DAT_07fc4868 + 4);
    puVar1 = (undefined4 *)(DAT_07fc4868 + 0x38);
    *(undefined4 *)(DAT_07fc4868 + 4) = *puVar1;
    cVar3 = (char)*puVar1 - (char)uVar10;
    *(char *)(iVar8 + 3) = cVar3;
    local_44 = CONCAT31(local_44._1_3_,cVar3);
    FUN_07fc2ed6(DAT_07fc486c);
  }
  uVar7 = *puVar18;
  if (0xef < uVar7 - *(int *)(DAT_07fc4870 + 4)) {
    *(uint *)(DAT_07fc4870 + 4) = uVar7;
    *(int *)(DAT_07fc4874 + 0x6c) = *(int *)(DAT_07fc4874 + 0x6c) << 1;
  }
  ROM___aeabi_idiv /* 0x07f1dfe4 */(puVar18[7] + 1,0xf);
  iVar9 = DAT_07fc4874;
  iVar8 = DAT_07fc4870;
  if (((0x1d < (int)puVar18[6]) && (extraout_r1_00 == 0)) &&
     (0x3f < uVar7 - *(int *)(DAT_07fc4870 + 8))) {
    puVar18 = DAT_07fc4860;
    if (*(char *)(DAT_07fc4874 + 0xe) == '\0') {
      iVar12 = *(int *)(DAT_07fc4868 + 0x50);
      iVar8 = *(int *)(DAT_07fc4868 + 0x38);
      uVar15 = 0;
      for (iVar11 = 0x5a; iVar11 != 0x69; iVar11 = iVar11 + 1) {
        uVar15 = uVar15 + *(byte *)(DAT_07fc4870 + iVar11);
      }
      if (((DAT_07fc487c <= DAT_07fc4860[3] + DAT_07fc4878) &&
          (uVar13 = FUN_07fc4164(), puVar18 = DAT_07fc4860, iVar8 == iVar12)) &&
         ((uVar15 < uVar13 &&
          (((*(ushort *)(iVar9 + 0x6c) & 0x1ff) != 0 &&
           (*(char *)(iVar9 + 0xf) == '\0' && *(char *)(DAT_07fc4880 + 0x26) == '\0')))))) {
        *(undefined1 *)(DAT_07fc4868 + 10) = 0;
        FUN_07fc3a18(1);
        uVar7 = *puVar18;
      }
    }
    iVar8 = DAT_07fc4870;
    *(uint *)(DAT_07fc4870 + 8) = uVar7;
  }
  iVar9 = DAT_07fc4868;
  if (((*(char *)(DAT_07fc4868 + 0x7c) != '\0') &&
      (((bVar2 = *(byte *)(DAT_07fc4868 + 0x7d), bVar2 < 0xf ||
        (ROM___aeabi_idiv /* 0x07f1dfe4 */(puVar18[7],0xf), iVar8 = DAT_07fc4870, iVar9 = DAT_07fc4868,
        extraout_r1_01 == 0)) && (iVar9 = DAT_07fc4868, (int)puVar18[6] < 10)))) &&
     ((uint)bVar2 * 0x3c - 10 <= uVar7 - *(int *)(DAT_07fc4868 + 0x1c))) {
    uVar15 = *(uint *)(DAT_07fc4868 + 0x84);
    uVar13 = puVar18[3];
    if (uVar15 < *(uint *)(DAT_07fc4868 + 0x80)) {
      if (uVar15 < uVar13) {
LAB_07fc468e:
        if (uVar13 < *(uint *)(DAT_07fc4868 + 0x80)) goto LAB_07fc469e;
      }
      FUN_07fc3a18(0);
      iVar8 = DAT_07fc4870;
      uVar7 = *puVar18;
      *(uint *)(iVar9 + 0x1c) = uVar7;
    }
    else if (uVar13 <= uVar15) goto LAB_07fc468e;
  }
LAB_07fc469e:
  if (((((puVar18[8] == 0x17) && (puVar18[7] == 0x3b)) && (0x3a < (int)puVar18[6])) ||
      (puVar18[7] == 0 && puVar18[8] == 0)) && (0x81 < uVar7 - *(int *)(iVar8 + 0xc))) {
    *(uint *)(iVar8 + 0xc) = uVar7;
    FUN_07fc54f8(uVar7 + 0x1e);
    FUN_07fc4fa0();
    iVar8 = DAT_07fc4870;
  }
  if ((puVar18[3] + DAT_07fc4884 < 0x3d) &&
     (uVar7 = *puVar18, 0x77 < uVar7 - *(int *)(iVar8 + 0x10))) {
    *(undefined4 *)(iVar9 + 0x44) = 0;
    *(uint *)(iVar8 + 0x10) = uVar7;
    *(undefined1 *)(DAT_07fc4874 + 0xe) = 0;
  }
  if (((((puVar18[7] & 1) == 0) || ((int)puVar18[6] < 0x3a)) ||
      (*puVar18 - *(int *)(iVar8 + 0x14) < 0x33)) || (*(char *)(iVar9 + 9) == '\0'))
  goto LAB_07fc482c;
  iVar12 = (*puVar18 - puVar18[6]) + -0x3c;
  iVar9 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar12,DAT_07fc4888);
  local_18 = iVar9 * (DAT_07fc488c + 1);
  local_1c = -1;
  FUN_07fc9004(iVar12,&local_44);
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar9,7);
  iVar14 = extraout_r1_02 * 0x3000;
  iVar16 = iVar14 + DAT_07fc4890;
  iVar11 = local_3c * 4 + iVar16;
  FUN_07fc3ea0(&local_24,iVar11,4,0);
  iVar8 = DAT_07fc4894;
  local_20 = local_24 & ~(1 << (local_40 >> 1 & 0xffU));
  FUN_07fc3ea0(DAT_07fc4894,iVar16,0x60,0);
  iVar9 = iVar9 * DAT_07fc4898;
  for (iVar19 = 0; iVar19 != 0x60; iVar19 = iVar19 + 4) {
    *(uint *)(iVar8 + iVar19) = ~*(uint *)(iVar8 + iVar19);
  }
  iVar19 = iVar14 + DAT_07fc489c;
  iVar20 = 0;
  FUN_07fc3ea0(&local_1c,iVar19,4,0);
  iVar9 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar9 + iVar12,10);
  if (local_1c == -1) {
LAB_07fc47d2:
    FUN_07fc3ea0(&local_18,iVar19,4,1);
  }
  else if (DAT_07fc488c < (uint)(iVar12 - local_1c)) {
    FUN_07fc3e90(iVar14 + 0x4c000,0x3000);
    goto LAB_07fc47d2;
  }
  iVar12 = DAT_07fc4868;
  (*DAT_07fc48a0)(DAT_07fc4868 + 0xa0,iVar14 + 0x4c000 + iVar9,0xc);
  pcVar6 = DAT_07fc48a0;
  (*DAT_07fc48a0)(&local_20,iVar11,4,1);
  (*pcVar6)(iVar8,iVar16,0x60,0);
  iVar9 = DAT_07fc4870;
  for (; iVar11 = DAT_07fc4868, iVar20 != 0x60; iVar20 = iVar20 + 4) {
    *(uint *)(iVar8 + iVar20) = ~*(uint *)(iVar8 + iVar20);
  }
  *(undefined4 *)(DAT_07fc4868 + 0xa0) = 0xffffffff;
  *(undefined1 *)(iVar11 + 9) = 0;
  *(uint *)(iVar9 + 0x14) = *DAT_07fc4860;
  *(undefined4 *)(iVar12 + 0xa4) = 0xffffffff;
  *(undefined4 *)(iVar12 + 0xa8) = 0xffffffff;
LAB_07fc482c:
  iVar8 = DAT_07fc4880;
  sVar4 = *(short *)(DAT_07fc4880 + 0x40) + -1;
  *(short *)(DAT_07fc4880 + 0x40) = sVar4;
  local_44 = 0x20;
  if (sVar4 < 1) {
    *(undefined2 *)(iVar8 + 0x40) = 6;
    FUN_07fc2ea8(DAT_07fc48a4,&local_44);
  }
  return;
}

