/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc20f0(void)

{
  undefined1 uVar1;
  ushort *puVar2;
  short sVar3;
  short sVar4;
  ushort uVar5;
  ushort uVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  byte bVar14;
  int iVar15;
  char cVar16;
  uint uVar17;
  uint uVar18;
  int iVar19;
  undefined4 local_34;
  ushort local_18 [2];
  
  iVar7 = FUN_07fcba7c();
  puVar2 = DAT_07fc2440;
  local_34 = 0x800;
  *DAT_07fc2440 = *DAT_07fc2440 | 0x800;
  *puVar2 = *puVar2 | 0x4000;
  *puVar2 = *puVar2 | 1;
  FUN_07fc20b4(0x14);
  puVar2[2] = 0x200;
  puVar2[3] = 0x200;
  *puVar2 = *puVar2 | (short)DAT_07fc2444 + 0xe2U;
  *puVar2 = *puVar2 & (ushort)DAT_07fc2448;
  sVar3 = FUN_07fc1fd0();
  *puVar2 = *puVar2 | 0x400;
  uVar5 = (short)DAT_07fc244c + 1;
  sVar4 = FUN_07fc1fd0();
  puVar2[2] = puVar2[2] & uVar5 | sVar3 * -2 + 0x600U;
  puVar2[3] = puVar2[3] & uVar5 | sVar4 * -2 + 0x600U;
  *puVar2 = *puVar2 & (ushort)DAT_07fc2448;
  *puVar2 = (ushort)DAT_07fc2450 & *puVar2;
  uVar5 = FUN_07fc1ff4();
  uVar6 = ROM___aeabi_uidiv /* 0x07f1dfb8 */((uint)uVar5 * DAT_07fc2454,0x1300);
  *(ushort *)(DAT_07fc2458 + 6) = uVar6;
  uVar5 = *DAT_07fc245c;
  *(byte *)(DAT_07fc2460 + 0xc5) =
       (*(byte *)(DAT_07fc2460 + 0xc5) & 0xfd) + (char)((uVar5 & 0x80) >> 6) ^ 2;
  iVar15 = DAT_07fc2590;
  iVar8 = DAT_07fc2590 + 0x20;
  FUN_07fc2ed6();
  uVar9 = (uVar5 & 0x80) >> 7;
  iVar10 = *(int *)(iVar15 + 0x20);
  iVar12 = *(int *)(iVar15 + 0x24);
  iVar15 = *(int *)(iVar15 + 0x28);
  for (cVar16 = '\0'; (int)cVar16 < (int)(iVar15 - 1U & iVar10 - iVar12 & 0xff);
      cVar16 = cVar16 + '\x01') {
    FUN_07fc2fa4(iVar8,(int)cVar16,local_18);
    uVar5 = local_18[0];
    if (local_18[0] <= uVar6) {
      uVar5 = uVar6;
    }
    uVar6 = uVar5;
  }
  *(ushort *)(DAT_07fc2458 + 8) = uVar6;
  iVar15 = DAT_07fc2464;
  uVar13 = uVar9 ^ 1;
  if ((((*(char *)(DAT_07fc2464 + 0xe) == '\x01') || (uVar13 != 0)) || (DAT_07fc2468 <= uVar6)) ||
     (*(uint *)(DAT_07fc2460 + 0x24) < 10)) {
    uVar17 = (uint)uVar6;
    if (DAT_07fc2444 < uVar17) {
      iVar8 = ROM___aeabi_idiv /* 0x07f1dfe4 */(uVar17 * 0x32 + DAT_07fc2470,0xe6);
      iVar8 = iVar8 + 0x32;
    }
    else {
      if (uVar17 <= DAT_07fc2468 + 0x62) goto LAB_07fc226c;
      iVar8 = ROM___aeabi_idiv /* 0x07f1dfe4 */(uVar17 * 0x32 + DAT_07fc246c,0x172);
    }
    if (iVar8 < 1) goto LAB_07fc226c;
    if (99 < iVar8) {
      iVar8 = 100;
    }
  }
  else {
    FUN_07fc5200();
    FUN_07fc43a4(1);
LAB_07fc226c:
    iVar8 = 0;
  }
  if (*(char *)(iVar15 + 0x20) == '\0') {
    bVar14 = *(char *)(iVar15 + 0x24) + 1;
    *(byte *)(iVar15 + 0x24) = bVar14;
    iVar15 = DAT_07fc2464;
    uVar18 = 0;
    uVar17 = 0;
    if (bVar14 < 3) goto LAB_07fc240e;
    *(undefined1 *)(DAT_07fc2464 + 0x20) = 1;
    *(int *)(DAT_07fc2474 + 0x2c) = iVar8;
  }
  iVar10 = DAT_07fc2478;
  uVar1 = (undefined1)uVar13;
  if (*(byte *)(iVar15 + 0x26) == uVar13) {
    *(undefined1 *)(iVar15 + 0x26) = uVar1;
    if (uVar9 != 0) goto LAB_07fc22f0;
LAB_07fc235c:
    if (((*(char *)(iVar15 + 0xe) == '\x01') || (bVar14 = *(byte *)(iVar15 + 0xc), bVar14 == 0x1e))
       || ((*(char *)(iVar15 + 0xe) == '\x02' || (bVar14 == 0x20)))) {
      FUN_07fc43a4(0);
      bVar14 = *(byte *)(iVar15 + 0xc);
    }
    if ((bVar14 | 0x10) != 0x1b) {
      FUN_07fc3b78(0xb);
    }
    iVar15 = DAT_07fc2474;
    uVar9 = *(uint *)(DAT_07fc2474 + 0x34);
    if (DAT_07fc2468 + 99 < (uint)*(ushort *)(DAT_07fc2458 + 6)) {
      uVar9 = uVar9 + 1;
      *(uint *)(DAT_07fc2474 + 0x34) = uVar9;
    }
    if (uVar9 < 0x1e) {
      iVar8 = *(int *)(iVar15 + 0x2c);
    }
    else {
      *(undefined4 *)(iVar15 + 0x34) = 0;
      if (*(int *)(iVar15 + 0x28) < 100) {
        iVar8 = *(int *)(iVar15 + 0x28) + 1;
      }
      else {
        iVar8 = 100;
      }
      *(int *)(iVar15 + 0x28) = iVar8;
      *(int *)(iVar15 + 0x2c) = iVar8;
    }
    if ((iVar8 < 100) || ((uint)*(ushort *)(DAT_07fc2458 + 8) <= DAT_07fc2444 + 0xe5)) {
      if (iVar8 == 100) {
        *(undefined4 *)(iVar15 + 0x2c) = 99;
      }
      FUN_07fc3a38(0x8000000);
      FUN_07fc3a38(0x400);
      uVar11 = 2;
    }
    else {
      *(undefined4 *)(iVar15 + 0x2c) = 100;
      FUN_07fc3a38(0x4000000);
      if (*(byte *)(DAT_07fc2478 + 8) < 6) {
        *(byte *)(DAT_07fc2478 + 8) = *(byte *)(DAT_07fc2478 + 8) + 1;
      }
      else {
        local_34 = 0x8000000;
      }
      FUN_07fc3a38(local_34);
      uVar11 = 1;
    }
    FUN_07fc2488(uVar11);
  }
  else {
    if (*(byte *)(DAT_07fc2478 + 0x37) != uVar13) {
      *(undefined1 *)(DAT_07fc2478 + 0x36) = uVar1;
      iVar12 = DAT_07fc247c;
      iVar19 = DAT_07fc2480 + 0x44;
      *(undefined4 *)(DAT_07fc247c + 0x28) = 0;
      *(undefined4 *)(iVar12 + 0x2c) = 0;
      iVar15 = DAT_07fc2464;
      *(undefined4 *)(iVar12 + 0x30) = 8;
      *(undefined4 *)(iVar12 + 0x34) = 1;
      *(int *)(iVar12 + 0x38) = iVar19;
    }
    *(undefined1 *)(iVar10 + 0x37) = uVar1;
    if (uVar9 == 0) {
      FUN_07fc3b78(0xb);
      FUN_07fc3a38(0x400000);
      *(undefined1 *)(iVar15 + 0x26) = 1;
      iVar8 = DAT_07fc2474;
      *(undefined4 *)(DAT_07fc2474 + 0x34) = 0;
      *(undefined4 *)(iVar8 + 0x28) = *(undefined4 *)(iVar8 + 0x2c);
      goto LAB_07fc235c;
    }
    FUN_07fc3b78(0);
    *(undefined4 *)(DAT_07fc2474 + 0x38) = 0;
    FUN_07fc3a38(0x40);
    *(undefined1 *)(DAT_07fc2464 + 0x26) = uVar1;
LAB_07fc22f0:
    *(undefined1 *)(DAT_07fc2478 + 8) = 0;
    iVar10 = DAT_07fc2474;
    uVar18 = *(int *)(DAT_07fc2474 + 0x38) + 1;
    *(uint *)(DAT_07fc2474 + 0x38) = uVar18;
    iVar15 = DAT_07fc2460;
    uVar17 = *(uint *)(iVar10 + 0x2c);
    uVar9 = DAT_07fc2484;
    if (iVar8 < (int)uVar17) {
      uVar9 = 0x19;
    }
    if (uVar9 <= uVar18) {
      *(undefined4 *)(iVar10 + 0x38) = 0;
      uVar17 = uVar17 - 1;
    }
    iVar8 = DAT_07fc2464;
    *(uint *)(iVar10 + 0x2c) = uVar17 & ~((int)uVar17 >> 0x1f);
    if (*(char *)(iVar8 + 0xc) != ' ') {
      iVar8 = *(int *)(iVar15 + 0x14);
      if (iVar8 << 0x14 < 0) {
        FUN_07fc3a38(0x8000000);
        iVar8 = *(int *)(iVar15 + 0x14);
      }
      if (iVar8 << 0x15 < 0) {
        FUN_07fc3a38(0x4000000);
      }
    }
  }
  uVar18 = (uint)*(byte *)(DAT_07fc2474 + 0x2c);
  uVar17 = uVar13;
LAB_07fc240e:
  if ((iVar7 == 1) &&
     ((*(uint *)(DAT_07fc2474 + 0x30) != uVar18 || (uVar17 != *(byte *)(DAT_07fc2464 + 0x28))))) {
    FUN_07fc259c(0xb,*(undefined1 *)(DAT_07fc2474 + 0x2c),uVar17);
  }
  *(char *)(DAT_07fc2464 + 0x28) = (char)uVar17;
  *(uint *)(DAT_07fc2474 + 0x30) = uVar18;
  return;
}

