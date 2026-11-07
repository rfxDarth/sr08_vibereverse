/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4394(void)

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
  int iVar12;
  int extraout_r1_01;
  int extraout_r1_02;
  int iVar13;
  uint uVar14;
  int iVar15;
  uint uVar16;
  uint uVar17;
  int iVar18;
  int iVar19;
  int local_64 [8];
  undefined4 local_44;
  int local_40;
  int local_3c;
  uint local_24;
  uint local_20;
  int local_1c;
  int local_18;
  
  piVar5 = DAT_07fc4748;
  *DAT_07fc4748 = 1;
  iVar9 = DAT_07fc4750;
  do {
  } while (*piVar5 != 0);
  uVar7 = *DAT_07fc474c;
  uVar16 = *(uint *)(DAT_07fc4750 + 0x38);
  if (uVar7 < uVar16) {
    uVar7 = uVar7 + 0x8000000;
  }
  uVar7 = uVar7 - uVar16;
  iVar8 = func_0x07f1dfb8(uVar7,0x640);
  uVar17 = *(uint *)(iVar9 + 0x28);
  uVar14 = *(int *)(iVar9 + 0x2c) + iVar8;
  *(uint *)(iVar9 + 0x28) = uVar14;
  iVar9 = DAT_07fc4750;
  if (DAT_07fc4754 <= uVar7) {
    *(undefined4 *)(DAT_07fc4750 + 0x3c) = 0;
    *(uint *)(iVar9 + 0x2c) = uVar14;
    func_0x07f1dfb8(uVar7 * 5,8000);
    iVar9 = func_0x07f1dfb8(uVar7 * 5 - extraout_r1,5);
    *(uint *)(DAT_07fc4750 + 0x38) = uVar16 + iVar9 & 0x7ffffff;
  }
  iVar9 = DAT_07fc4750;
  if (1 < uVar14 - uVar17) {
    *(uint *)(DAT_07fc4750 + 0x28) = uVar17;
    FUN_07fc8088(uVar14,local_64);
    if (local_64[0] < *(int *)(iVar9 + 0x40)) {
      FUN_07fc4798();
    }
    *(uint *)(iVar9 + 0x30) = uVar14;
    *(uint *)(iVar9 + 0x28) = uVar14;
  }
  iVar9 = DAT_07fc4750;
  if (uVar14 == uVar17) {
    return;
  }
  *(uint *)(DAT_07fc4750 + 0x30) = uVar14;
  if ((uVar14 & 3) == 0) {
    FUN_07fc42ec(uVar14,0);
    uVar14 = *(uint *)(iVar9 + 0x28);
  }
  FUN_07fc8088(uVar14,iVar9 + 0x40);
  uVar7 = *(uint *)(iVar9 + 0x40);
  *(uint *)(iVar9 + 0x34) = *(int *)(iVar9 + 0x44) * 0x3c + *(int *)(iVar9 + 0x48) * 0xe10 + uVar7;
  if (0x3a < (int)uVar7) {
    FUN_07fc4798();
    uVar7 = *(uint *)(iVar9 + 0x40);
  }
  iVar8 = DAT_07fc4758;
  if ((uVar7 & 1) == 0) {
    uVar10 = *(undefined4 *)(DAT_07fc4758 + 4);
    puVar1 = (undefined4 *)(DAT_07fc4758 + 0x38);
    *(undefined4 *)(DAT_07fc4758 + 4) = *puVar1;
    cVar3 = (char)*puVar1 - (char)uVar10;
    *(char *)(iVar8 + 3) = cVar3;
    local_44 = CONCAT31(local_44._1_3_,cVar3);
    FUN_07fc2f26(DAT_07fc475c + 0x14);
  }
  iVar8 = *(int *)(iVar9 + 0x28);
  if (0xef < (uint)(iVar8 - *(int *)(DAT_07fc4760 + 4))) {
    *(int *)(DAT_07fc4760 + 4) = iVar8;
    *(int *)(DAT_07fc4764 + 0x6c) = *(int *)(DAT_07fc4764 + 0x6c) << 1;
  }
  func_0x07f1dfe4(*(int *)(iVar9 + 0x44) + 1,0xf);
  iVar15 = DAT_07fc4764;
  iVar11 = DAT_07fc4760;
  if (((0x1d < *(int *)(iVar9 + 0x40)) && (extraout_r1_00 == 0)) &&
     (0x3f < (uint)(iVar8 - *(int *)(DAT_07fc4760 + 8)))) {
    iVar9 = DAT_07fc4750;
    if (*(char *)(DAT_07fc4764 + 0xf) == '\0') {
      iVar13 = *(int *)(DAT_07fc4758 + 0x50);
      iVar11 = *(int *)(DAT_07fc4758 + 0x38);
      uVar7 = 0;
      for (iVar12 = 0x52; iVar12 != 0x61; iVar12 = iVar12 + 1) {
        uVar7 = uVar7 + *(byte *)(DAT_07fc4760 + iVar12);
      }
      if (((DAT_07fc476c <= (uint)(*(int *)(DAT_07fc4750 + 0x34) + DAT_07fc4768)) &&
          (uVar16 = FUN_07fc4088(), iVar9 = DAT_07fc4750, iVar11 == iVar13)) &&
         ((uVar7 < uVar16 &&
          (((*(ushort *)(iVar15 + 0x6c) & 0x1ff) != 0 &&
           (*(char *)(iVar15 + 0x10) == '\0' && *(char *)(DAT_07fc4770 + 0x26) == '\0')))))) {
        *(undefined1 *)(DAT_07fc4758 + 10) = 0;
        FUN_07fc39f8(1);
        iVar8 = *(int *)(iVar9 + 0x28);
      }
    }
    iVar11 = DAT_07fc4760;
    *(int *)(DAT_07fc4760 + 8) = iVar8;
  }
  iVar15 = DAT_07fc4758;
  if (((*(char *)(DAT_07fc4758 + 0x7c) != '\0') &&
      (((bVar2 = *(byte *)(DAT_07fc4758 + 0x7d), bVar2 < 0xf ||
        (func_0x07f1dfe4(*(undefined4 *)(iVar9 + 0x44),0xf), iVar11 = DAT_07fc4760,
        iVar15 = DAT_07fc4758, extraout_r1_01 == 0)) &&
       (iVar15 = DAT_07fc4758, *(int *)(iVar9 + 0x40) < 10)))) &&
     ((uint)bVar2 * 0x3c - 10 <= (uint)(iVar8 - *(int *)(DAT_07fc4758 + 0x1c)))) {
    uVar7 = *(uint *)(DAT_07fc4758 + 0x84);
    uVar16 = *(uint *)(iVar9 + 0x34);
    if (uVar7 < *(uint *)(DAT_07fc4758 + 0x80)) {
      if (uVar7 < uVar16) {
LAB_07fc457c:
        if (uVar16 < *(uint *)(DAT_07fc4758 + 0x80)) goto LAB_07fc458c;
      }
      FUN_07fc39f8(0);
      iVar11 = DAT_07fc4760;
      iVar8 = *(int *)(iVar9 + 0x28);
      *(int *)(iVar15 + 0x1c) = iVar8;
    }
    else if (uVar16 <= uVar7) goto LAB_07fc457c;
  }
LAB_07fc458c:
  if (((((*(int *)(iVar9 + 0x48) == 0x17) && (*(int *)(iVar9 + 0x44) == 0x3b)) &&
       (0x3a < *(int *)(iVar9 + 0x40))) ||
      (*(int *)(iVar9 + 0x44) == 0 && *(int *)(iVar9 + 0x48) == 0)) &&
     (0x81 < (uint)(iVar8 - *(int *)(iVar11 + 0xc)))) {
    *(int *)(iVar11 + 0xc) = iVar8;
    FUN_07fc54f0(iVar8 + 0x1e);
    FUN_07fc4e90();
    iVar11 = DAT_07fc4760;
  }
  if (((uint)(*(int *)(iVar9 + 0x34) + DAT_07fc4774) < 0x3d) &&
     (iVar8 = *(int *)(iVar9 + 0x28), 0x77 < (uint)(iVar8 - *(int *)(iVar11 + 0x10)))) {
    *(undefined4 *)(iVar15 + 0x44) = 0;
    *(int *)(iVar11 + 0x10) = iVar8;
    *(undefined1 *)(DAT_07fc4764 + 0xf) = 0;
  }
  if (((((*(byte *)(iVar9 + 0x44) & 1) == 0) || (*(int *)(iVar9 + 0x40) < 0x3a)) ||
      ((uint)(*(int *)(iVar9 + 0x28) - *(int *)(iVar11 + 0x14)) < 0x33)) ||
     (*(char *)(iVar15 + 9) == '\0')) goto LAB_07fc471c;
  iVar15 = (*(int *)(iVar9 + 0x28) - *(int *)(iVar9 + 0x40)) + -0x3c;
  iVar8 = func_0x07f1dfb8(iVar15,DAT_07fc4778);
  local_18 = iVar8 * (DAT_07fc477c + 1);
  local_1c = -1;
  FUN_07fc8088(iVar15,&local_44);
  func_0x07f1dfb8(iVar8,7);
  iVar12 = extraout_r1_02 * 0x3000;
  iVar13 = iVar12 + DAT_07fc4780;
  iVar11 = local_3c * 4 + iVar13;
  FUN_07fc3df8(&local_24,iVar11,4,0);
  iVar9 = DAT_07fc4784;
  local_20 = local_24 & ~(1 << (local_40 >> 1 & 0xffU));
  FUN_07fc3df8(DAT_07fc4784,iVar13,0x60,0);
  iVar8 = iVar8 * DAT_07fc4788;
  for (iVar18 = 0; iVar18 != 0x60; iVar18 = iVar18 + 4) {
    *(uint *)(iVar9 + iVar18) = ~*(uint *)(iVar9 + iVar18);
  }
  iVar18 = iVar12 + DAT_07fc478c;
  iVar19 = 0;
  FUN_07fc3df8(&local_1c,iVar18,4,0);
  iVar8 = func_0x07f1dfb8(iVar8 + iVar15,10);
  if (local_1c == -1) {
LAB_07fc46c2:
    FUN_07fc3df8(&local_18,iVar18,4,1);
  }
  else if (DAT_07fc477c < (uint)(iVar15 - local_1c)) {
    FUN_07fc3de8(iVar12 + 0x4c000,0x3000);
    goto LAB_07fc46c2;
  }
  iVar15 = DAT_07fc4758;
  (*DAT_07fc4790)(DAT_07fc4758 + 0xa0,iVar12 + 0x4c000 + iVar8,0xc);
  pcVar6 = DAT_07fc4790;
  (*DAT_07fc4790)(&local_20,iVar11,4,1);
  (*pcVar6)(iVar9,iVar13,0x60,0);
  iVar8 = DAT_07fc4760;
  for (; iVar11 = DAT_07fc4758, iVar19 != 0x60; iVar19 = iVar19 + 4) {
    *(uint *)(iVar9 + iVar19) = ~*(uint *)(iVar9 + iVar19);
  }
  *(undefined4 *)(DAT_07fc4758 + 0xa0) = 0xffffffff;
  *(undefined1 *)(iVar11 + 9) = 0;
  *(undefined4 *)(iVar8 + 0x14) = *(undefined4 *)(DAT_07fc4750 + 0x28);
  *(undefined4 *)(iVar15 + 0xa4) = 0xffffffff;
  *(undefined4 *)(iVar15 + 0xa8) = 0xffffffff;
LAB_07fc471c:
  iVar9 = DAT_07fc4770;
  sVar4 = *(short *)(DAT_07fc4770 + 0x40) + -1;
  *(short *)(DAT_07fc4770 + 0x40) = sVar4;
  local_44 = 0x20;
  if (sVar4 < 1) {
    *(undefined2 *)(iVar9 + 0x40) = 6;
    FUN_07fc2ef8(DAT_07fc4794,&local_44);
  }
  return;
}

