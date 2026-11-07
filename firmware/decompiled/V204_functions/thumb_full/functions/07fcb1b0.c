/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb1b0(void)

{
  char *pcVar1;
  ushort *puVar2;
  int *piVar3;
  char cVar4;
  short sVar5;
  short sVar6;
  char cVar7;
  short sVar8;
  int iVar9;
  undefined4 uVar10;
  undefined1 *puVar11;
  int iVar12;
  byte bVar13;
  ushort uVar14;
  int extraout_r1;
  int extraout_r1_00;
  uint uVar15;
  int extraout_r1_01;
  ushort uVar16;
  uint uVar17;
  ushort uVar18;
  uint uVar19;
  int iVar20;
  uint uVar21;
  uint uVar22;
  uint *puVar23;
  int iVar24;
  int iStack_9c;
  undefined1 uStack_90;
  undefined1 auStack_8f [19];
  uint auStack_7c [4];
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined1 uStack_4c;
  undefined1 uStack_4b;
  undefined1 uStack_4a;
  undefined1 uStack_49;
  char cStack_48;
  undefined1 uStack_47;
  undefined2 uStack_46;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_28;
  undefined1 uStack_24;
  undefined1 auStack_23 [15];
  
  iVar9 = FUN_07fcba7c();
  if (iVar9 == 0) {
    FUN_07fc2568();
    return;
  }
  iVar9 = FUN_07fcb080(0xfd);
  iVar9 = func_0x07f1bf1a(DAT_07fcb598 & *(ushort *)(iVar9 + 2));
  if (iVar9 == 1) {
    return;
  }
  func_0x07f1e0de(&uStack_90,0x14);
  iVar9 = DAT_07fcb5b0;
  if ((*(int *)(DAT_07fcb59c + 0x3c) - 1U &
      *(int *)(DAT_07fcb59c + 0x34) - *(int *)(DAT_07fcb59c + 0x38)) != 0) {
    iVar9 = DAT_07fcb59c + 0x34;
    FUN_07fc2fcc(iVar9,&uStack_90);
    FUN_07fc2f8c(iVar9);
    func_0x07f1e0ac(&uStack_4b,auStack_8f,0x13);
    FUN_07fc532c(&DAT_07fcb5a0);
    FUN_07fcb178(&uStack_4c,0x14);
    uVar10 = FUN_07fc4440();
    FUN_07fc532c(DAT_07fcb5a4,uVar10);
    FUN_07fc2e6c();
    uVar10 = func_0x07f0283e(0xfd);
    puVar11 = (undefined1 *)func_0x07f1bbb0(DAT_07fcb5a8,uVar10,4,0x1a);
    *(undefined2 *)(puVar11 + 4) = 0x14;
    *(undefined2 *)(puVar11 + 2) = 4;
    puVar11[1] = 1;
    *puVar11 = *(undefined1 *)(DAT_07fcb5ac + 0x5a);
    func_0x07f1e0ac(puVar11 + 6,&uStack_4c,0x14);
    FUN_07fc2e50();
    func_0x07f1bbe2(puVar11);
    return;
  }
  if (*(char *)(DAT_07fcb5b0 + 0xb) == '\0') {
    if (*(char *)(DAT_07fcb5b0 + 0xac) == '\0') {
      return;
    }
    FUN_07fc4440();
    FUN_07fc2dc4();
    func_0x07f1c054(DAT_07fcb748,4);
    func_0x07f1e0de(&uStack_4b,0x13);
    iVar9 = DAT_07fcb744;
    cVar7 = *(char *)(DAT_07fcb744 + 0xac);
    if (cVar7 == '\x02') {
      uVar16 = *(ushort *)(DAT_07fcb744 + 0xba);
      if ((uint)*(ushort *)(DAT_07fcb744 + 0xbc) <= (uint)uVar16) goto LAB_07fcb6d0;
      iVar9 = 0;
      uStack_6c = 0xffffffff;
      uStack_68 = 0xffffffff;
      uStack_64 = 0xffffffff;
      iVar24 = *(int *)(DAT_07fcb744 + 0xc0);
      uStack_28 = -1;
      uVar10 = func_0x07f1dfb8(iVar24,DAT_07fcb74c);
      func_0x07f1dfb8(uVar10,7);
      FUN_07fc3ea0(&uStack_28,extraout_r1_01 * 0x3000 + DAT_07fcb760,4,0);
      if ((uint)(iVar24 - uStack_28) <= DAT_07fcb764) {
        FUN_07fc3ea0(&uStack_6c,(uint)uVar16 + extraout_r1_01 * 0x3000 + 0x4c000,0xc,0);
        cVar7 = -1;
        for (; iVar9 != 0xc; iVar9 = iVar9 + 1) {
          cVar4 = *(char *)((int)&uStack_6c + iVar9);
          if ((cVar4 != '\0') && (cVar4 != -1)) {
            cVar7 = cVar4;
          }
        }
        if ((cVar7 != '\0') && (cVar7 != -1)) {
          for (iVar9 = 0; iVar9 != 0xc; iVar9 = iVar9 + 1) {
            if ((*(char *)((int)&uStack_6c + iVar9) == -1) ||
               (*(char *)((int)&uStack_6c + iVar9) == '\0')) {
              *(char *)((int)&uStack_6c + iVar9) = cVar7;
            }
          }
        }
      }
      iVar9 = DAT_07fcb744;
      uStack_4b = 0xa0;
      uStack_46 = *(short *)(DAT_07fcb744 + 0xb0);
      puVar2 = (ushort *)(DAT_07fcb744 + 0xba);
      iVar24 = (uint)*puVar2 * 10 + *(int *)(DAT_07fcb744 + 0xc0);
      uStack_4a = (undefined1)iVar24;
      uStack_47 = (undefined1)((uint)iVar24 >> 0x18);
      uStack_49 = (undefined1)((uint)iVar24 >> 8);
      uStack_44 = uStack_6c;
      uStack_40 = uStack_68;
      uStack_3c = uStack_64;
      *(short *)(DAT_07fcb744 + 0xb0) = uStack_46 + 1;
      uVar16 = *puVar2 + 0xc;
      *(ushort *)(iVar9 + 0xba) = uVar16;
      if (*(ushort *)(iVar9 + 0xbc) <= uVar16) {
        *(undefined1 *)(iVar9 + 0xac) = 1;
        goto LAB_07fcb6d0;
      }
      cVar7 = *(char *)(iVar9 + 0xac);
    }
    else if (cVar7 == '\x01') {
      uVar16 = *(ushort *)(DAT_07fcb744 + 0xae);
      if (*(byte *)(DAT_07fcb744 + 0xad) <= uVar16) {
        *(undefined1 *)(DAT_07fcb744 + 0xac) = 0;
        return;
      }
      sVar8 = 0;
      *(undefined2 *)(DAT_07fcb744 + 0xba) = 0;
      *(undefined4 *)(iVar9 + 0xbc) = 0;
      *(undefined2 *)(iVar9 + 0xb4) = 0;
      *(undefined2 *)(iVar9 + 0xb2) = 0;
      bVar13 = *(byte *)(iVar9 + 0xb8);
      uVar22 = (uint)*(byte *)(iVar9 + 0xb6);
      iStack_9c = uVar22 * 0x1e;
      uVar19 = 0;
      uVar17 = 0;
      while( true ) {
        iVar24 = DAT_07fcb744;
        uVar18 = (ushort)uVar19;
        uVar21 = uVar22 & 0xff;
        sVar5 = (short)uVar21;
        if (0x17 < uVar21) break;
        puVar23 = (uint *)(DAT_07fcb768 + uVar21 * 4);
        for (uVar21 = (uint)bVar13; iVar24 = DAT_07fcb744, uVar18 = (ushort)uVar19, uVar21 < 0x1e;
            uVar21 = uVar21 + 1) {
          uVar15 = *puVar23 & 1 << (uVar21 & 0xff);
          sVar6 = (short)uVar21;
          if (uVar15 == 0) {
            if (uVar17 != 0) {
              *(short *)(DAT_07fcb744 + 0xb8) = sVar6;
              *(short *)(iVar24 + 0xb6) = sVar5;
              uVar14 = ((short)iStack_9c + sVar6) * 0xc;
              goto LAB_07fcb5e2;
            }
          }
          else {
            if (uVar17 == 0) {
              *(short *)(DAT_07fcb744 + 0xb4) = sVar6;
              *(short *)(iVar24 + 0xb2) = sVar5;
              uVar16 = uVar16 + 1;
              *(ushort *)(iVar24 + 0xae) = uVar16;
              uVar19 = (iStack_9c + uVar21) * 0xc;
              *(short *)(iVar24 + 0xba) = (short)uVar19;
            }
            sVar8 = sVar8 + 1;
            *(short *)(iVar24 + 0xbe) = sVar8;
          }
          uVar17 = uVar15;
        }
        iStack_9c = iStack_9c + 0x1e;
        uVar22 = uVar22 + 1;
        bVar13 = 0;
        iVar9 = DAT_07fcb744;
      }
      if ((uVar19 & 0xffff) == 0) {
        iVar9 = 0;
LAB_07fcb71c:
        if (iVar9 + 4 != 100) goto code_r0x07fcb722;
        uVar14 = 0x21c0;
LAB_07fcb5e2:
        *(ushort *)(iVar24 + 0xbc) = uVar14;
        goto LAB_07fcb5e6;
      }
      *(ushort *)(iVar9 + 0xb8) = (ushort)bVar13;
      *(short *)(iVar9 + 0xb6) = sVar5;
      uVar14 = (sVar5 * 0x1e + (ushort)bVar13) * 0xc;
      *(ushort *)(iVar9 + 0xbc) = uVar14;
      iVar24 = iVar9;
LAB_07fcb5e6:
      *(undefined2 *)(iVar24 + 0xb0) = 0;
      if ((uint)uVar14 <= (uint)uVar18) goto LAB_07fcb734;
      *(undefined1 *)(iVar24 + 0xac) = 2;
                    /* WARNING: Ignoring partial resolution of indirect */
      uStack_46._1_1_ = (char)sVar8;
      uStack_4a = (undefined1)uVar16;
      uStack_4b = 0xaa;
                    /* WARNING: Ignoring partial resolution of indirect */
      uStack_44._0_1_ = (char)((ushort)sVar8 >> 8);
      iVar9 = *(int *)(iVar24 + 0xc0) + (uint)uVar18 * 10;
      uStack_49 = (undefined1)iVar9;
                    /* WARNING: Ignoring partial resolution of indirect */
      uStack_46._0_1_ = (char)((uint)iVar9 >> 0x18);
      uStack_47 = (undefined1)((uint)iVar9 >> 0x10);
      goto LAB_07fcb6d0;
    }
    if (cVar7 == '\0') {
      return;
    }
LAB_07fcb6d0:
    uStack_4c = 0x16;
    FUN_07fc24c6();
    return;
  }
  FUN_07fc4440();
  FUN_07fc2dc4();
  func_0x07f1c054(DAT_07fcb5b4,4,1);
  func_0x07f1e0de(auStack_23,0xf);
  FUN_07fc9004(*(undefined4 *)(iVar9 + 0x28),&uStack_6c);
  uStack_28 = CONCAT31(uStack_28._1_3_,0x10);
  uVar10 = func_0x07f1dfb8(*(undefined4 *)(iVar9 + 0x28),DAT_07fcb5b8);
  func_0x07f1dfb8(uVar10,7);
  FUN_07fc3ea0(auStack_7c,extraout_r1 * 0x2000 + DAT_07fcb5bc,0x10,0);
  iVar9 = DAT_07fcb5b0;
  for (iVar24 = 0; iVar24 != 0x10; iVar24 = iVar24 + 4) {
    *(uint *)((int)auStack_7c + iVar24) = ~*(uint *)((int)auStack_7c + iVar24);
  }
  uVar19 = (uint)*(byte *)(DAT_07fcb5b0 + 0xc);
  for (uVar17 = *(int *)(DAT_07fcb5b0 + 0x28) + uVar19 * 900;
      ((uVar19 < 0x5f && ((auStack_7c[uVar19 >> 5] >> (uVar19 & 0x1f) & 1) == 0)) &&
      ((*DAT_07fcb5c0 < uVar17 ||
       ((*(int *)(DAT_07fcb5b0 + 0x38) == *(int *)(DAT_07fcb5b0 + 0x50) ||
        (uVar17 + 900 <= *DAT_07fcb5c0)))))); uVar17 = uVar17 + 900) {
    uVar19 = uVar19 + 1;
  }
  *(char *)(DAT_07fcb5b0 + 0xc) = (char)uVar19;
  FUN_07fc532c(s_e_id__d_07fcb5c4);
  iVar20 = *(int *)(iVar9 + 0x28);
  func_0x07f1dfb8(iVar20,DAT_07fcb5b8);
  iVar24 = (iVar20 - extraout_r1_00) + (uint)*(byte *)(iVar9 + 0xc) * 900;
  uStack_24 = (undefined1)((uint)iVar24 >> 0x18);
  uStack_28 = CONCAT13((char)((uint)iVar24 >> 0x10),
                       CONCAT12((char)((uint)iVar24 >> 8),
                                CONCAT11((char)iVar24,(undefined1)uStack_28)));
  iVar24 = FUN_07fc5600(iVar20,(uint)*(byte *)(iVar9 + 0xc),&uStack_4c);
  if (iVar24 < 0) {
    FUN_07fc532c(s_nodata_07fcb754);
    uVar17 = (uint)*(byte *)(iVar9 + 0xc);
    uVar19 = uVar17 * 900 + *(int *)(iVar9 + 0x28);
    uVar22 = *DAT_07fcb750;
    if (uVar19 <= uVar22) {
      if (uVar22 < uVar19 + 900) {
        iVar20 = *(int *)(iVar9 + 0x50);
        iVar24 = *(int *)(iVar9 + 0x38);
        if (iVar24 != iVar20) {
          uVar17 = 0;
          for (iVar12 = 0x5c; iVar12 != 0x6b; iVar12 = iVar12 + 1) {
            uVar17 = uVar17 + *(byte *)(iVar9 + iVar12);
          }
          func_0x07f1e0ac(auStack_23,iVar9 + 0x5c,0xf);
          uVar21 = iVar24 - iVar20;
          if ((uVar17 < uVar21) && ((int)DAT_07fcb750[6] < 0x3b)) {
            iVar9 = func_0x07f1dfb8(uVar22 - uVar19,0x3c);
            uVar19 = iVar9 + 4U & 0xff;
            if (0x11 < uVar19) {
              uVar19 = 0x12;
            }
            *(char *)((int)&uStack_28 + uVar19 + 1) =
                 *(char *)((int)&uStack_28 + uVar19 + 1) + ((char)uVar21 - (char)uVar17);
          }
          goto LAB_07fcb4f2;
        }
      }
LAB_07fcb4ec:
      uVar17 = (uint)*(byte *)(iVar9 + 0xc);
    }
    cVar7 = (char)uVar17;
    if (uVar17 != 0x5f) goto LAB_07fcb4fc;
  }
  else {
    if (cStack_48 == '\x01') {
      uStack_28 = CONCAT31(uStack_28._1_3_,0x11);
      if (*(uint *)(DAT_07fcb744 + 0x44) <= DAT_07fcb75c) {
        cStack_48 = '\0';
        uStack_28 = CONCAT31(uStack_28._1_3_,0x10);
        func_0x07f1e0de(&uStack_46,0x1e);
        func_0x07f1e0de(auStack_23,0xf);
        iVar9 = DAT_07fcb744;
        goto LAB_07fcb4ec;
      }
    }
    else {
      iVar9 = 0;
      do {
        if (iVar9 == 0xf) {
          func_0x07f1e0ac(auStack_23,&uStack_46,0xf);
          iVar9 = DAT_07fcb744;
          goto LAB_07fcb4ec;
        }
        pcVar1 = (char *)((int)&uStack_46 + iVar9);
        iVar9 = iVar9 + 1;
      } while (*pcVar1 == '\0');
    }
    func_0x07f1e0ac(auStack_23,&uStack_46,0xf);
  }
LAB_07fcb4f2:
  FUN_07fc24c6(&uStack_28);
  cVar7 = *(char *)(DAT_07fcb744 + 0xc);
  iVar9 = DAT_07fcb744;
LAB_07fcb4fc:
  *(byte *)(iVar9 + 0xc) = cVar7 + 1U;
  if (0x5f < (byte)(cVar7 + 1U)) {
    *(undefined1 *)(iVar9 + 0xc) = 0;
    *(undefined1 *)(iVar9 + 0xb) = 0;
  }
  return;
code_r0x07fcb722:
  piVar3 = (int *)(DAT_07fcb768 + iVar9);
  iVar9 = iVar9 + 4;
  if (*piVar3 != DAT_07fcb76c) goto code_r0x07fcb72a;
  goto LAB_07fcb71c;
code_r0x07fcb72a:
  *(undefined2 *)(DAT_07fcb744 + 0xb0) = 0;
LAB_07fcb734:
  *(undefined1 *)(iVar24 + 0xac) = 0;
  return;
}

