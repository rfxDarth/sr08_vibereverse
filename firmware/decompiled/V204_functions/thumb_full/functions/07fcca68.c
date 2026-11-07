/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcca68(void)

{
  char cVar1;
  undefined2 uVar2;
  short sVar3;
  short sVar4;
  int *piVar5;
  byte bVar6;
  byte bVar7;
  byte bVar8;
  byte bVar9;
  byte bVar10;
  short sVar11;
  uint uVar12;
  uint uVar13;
  int iVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  uint uVar19;
  int iVar20;
  int iVar21;
  uint uVar22;
  uint uVar23;
  int iVar24;
  int iVar25;
  ushort uVar26;
  int iVar27;
  undefined4 uVar28;
  char *pcVar29;
  undefined4 uVar30;
  bool bVar31;
  uint local_48;
  uint local_30;
  byte local_1c;
  byte local_1b;
  byte local_1a;
  byte local_19;
  byte local_18;
  byte local_17;
  
  piVar5 = DAT_07fcce50;
  *DAT_07fcce50 = 1;
  uVar15 = DAT_07fcce64;
  iVar20 = DAT_07fcce60;
  iVar14 = DAT_07fcce58;
  do {
  } while (*piVar5 != 0);
  if (*(char *)(DAT_07fcce58 + 0x11) == '\0') {
    *(undefined4 *)(DAT_07fcce60 + 0x14) = 0;
    *(undefined4 *)(iVar20 + 0x18) = 0;
    *(undefined4 *)(iVar20 + 0x1c) = 0x20;
    *(undefined4 *)(iVar20 + 0x20) = 6;
    *(undefined4 *)(iVar20 + 0x24) = uVar15;
    FUN_07fc1da8();
    if (*(char *)(iVar14 + 0x11) == '\0') {
      FUN_07fc3a38(0x1000);
    }
    else {
      *(undefined1 *)(iVar14 + 0x35) = 1;
      *DAT_07fcce68 = 0;
      *(undefined2 *)(iVar14 + 0x36) = 0x200;
    }
  }
  else {
    if (*(char *)(DAT_07fcce58 + 0xc) != '\x1e') {
      FUN_07fc1e50();
      iVar14 = FUN_07fc8a0c(0x20);
      if (iVar14 == 0x47) {
        uVar22 = FUN_07fc8a0c(0x35);
        uVar23 = 0;
        FUN_07fc8ad8(0x34,0);
        FUN_07fc8ad8(0x34,10);
        if ((uVar22 & 0x4a) != 0) {
          *(undefined4 *)(DAT_07fcce5c + 0x18) = 0;
        }
        uVar22 = FUN_07fc8a0c(0x2f);
        iVar14 = DAT_07fcce5c;
        uVar22 = uVar22 & 0x1f;
        if ((9 < *(uint *)(DAT_07fcce5c + 0x18)) && (bVar31 = uVar22 != 0, uVar22 = 0, bVar31)) {
          uVar12 = FUN_07fc4440();
          uVar13 = *(uint *)(iVar14 + 0x1c);
          uVar19 = uVar12;
          if (uVar12 < uVar13) {
            uVar19 = uVar12 + 0x5000000;
          }
          if (0xe0 < uVar19 - uVar13 >> 2) {
            FUN_07fc89b0(0xa8,&local_1c,6);
            bVar10 = local_17;
            bVar9 = local_18;
            bVar8 = local_19;
            bVar7 = local_1a;
            bVar6 = local_1c;
            uVar26 = (ushort)local_1b;
            uVar15 = FUN_07fc4440();
            uVar22 = 0;
            FUN_07fc3d6c(0,(int)(short)(uVar26 * 0x100 + (ushort)bVar6 +
                                       ((ushort)((short)(uVar26 * 0x100) >> 0xf) >> 0xe)) >> 2,
                         (int)(short)((ushort)bVar8 * 0x100 + (ushort)bVar7 +
                                     ((ushort)((short)((ushort)bVar8 * 0x100) >> 0xf) >> 0xe)) >> 2,
                         (int)(short)((ushort)bVar10 * 0x100 + (ushort)bVar9 +
                                     ((ushort)((short)((ushort)bVar10 * 0x100) >> 0xf) >> 0xe)) >> 2
                         ,uVar15,1);
            *(uint *)(iVar14 + 0x1c) = uVar12;
          }
        }
        iVar14 = DAT_07fccf18 + 0x14;
        for (; uVar23 < uVar22; uVar23 = uVar23 + 1) {
          FUN_07fc89b0(0xa8,&local_1c,6);
          FUN_07fc2ea8(iVar14,&local_1c);
        }
        FUN_07fc8ad8(0x2e,0);
        FUN_07fc8ad8(0x2e,0x9f);
      }
      else {
        FUN_07fc1da8();
      }
    }
    iVar14 = *(int *)(DAT_07fccf18 + 0x14);
    iVar20 = *(int *)(DAT_07fccf18 + 0x18);
    iVar21 = *(int *)(DAT_07fccf18 + 0x1c);
    local_48 = 1000;
    pcVar29 = DAT_07fccf20;
    for (uVar22 = 0; (uVar22 & 0xff) < (iVar21 - 1U & iVar14 - iVar20 & 0xffff); uVar22 = uVar22 + 1
        ) {
      iVar24 = DAT_07fccf18 + 0x14;
      FUN_07fc2fcc(iVar24,&local_1c);
      FUN_07fc2f8c(iVar24);
      iVar25 = (int)(short)((ushort)local_1b * 0x100 + (ushort)local_1c +
                           ((ushort)((short)((ushort)local_1b * 0x100) >> 0xf) >> 0xe)) >> 2;
      iVar27 = (int)(short)((ushort)local_19 * 0x100 + (ushort)local_1a +
                           ((ushort)((short)((ushort)local_19 * 0x100) >> 0xf) >> 0xe)) >> 2;
      sVar11 = (short)((uint)(int)(short)((ushort)local_17 * 0x100 + (ushort)local_18 +
                                         ((ushort)((short)((ushort)local_17 * 0x100) >> 0xf) >> 0xe)
                                         ) >> 2);
      FUN_07fc3dd8();
      iVar24 = iVar27 * iVar27 + iVar25 * iVar25;
      if (pcVar29[7] < '\0') {
        local_30 = FUN_07fc1e70(iVar24);
      }
      else {
        local_30 = FUN_07fc1e70(iVar24 + (int)sVar11 * (int)sVar11);
      }
      uVar15 = FUN_07fc4440();
      iVar24 = 0;
      FUN_07fc3d6c((int)(short)local_30,iVar25,iVar27,(int)sVar11,uVar15,0);
      pcVar29 = DAT_07fccf20;
      if (DAT_07fccf20[2] == '\0') {
        uVar16 = FUN_07fc1b30(local_30);
        uVar17 = DAT_07fccf2c;
        uVar15 = DAT_07fccf28;
        for (; iVar25 = DAT_07fccf24, iVar24 != 0x54; iVar24 = iVar24 + 0x1c) {
          *(undefined4 *)(DAT_07fccf24 + iVar24) = uVar16;
          iVar25 = iVar25 + iVar24;
          *(undefined4 *)(iVar25 + 4) = 0x3f800000;
          *(undefined4 *)(iVar25 + 8) = 0x3f800000;
          *(undefined4 *)(iVar25 + 0xc) = uVar17;
          *(undefined4 *)(iVar25 + 0x10) = uVar15;
          *(undefined4 *)(iVar25 + 0x14) = uVar15;
        }
        pcVar29[2] = '\x01';
      }
      iVar24 = *(int *)(pcVar29 + 0x4c) + 0x14;
      *(int *)(pcVar29 + 0x4c) = iVar24;
      for (iVar25 = 0; iVar25 != 0x54; iVar25 = iVar25 + 0x1c) {
        iVar27 = DAT_07fccf24 + iVar25;
        uVar30 = *(undefined4 *)(iVar27 + 4);
        uVar15 = FUN_07fc1a3a(uVar30,uVar30);
        uVar15 = FUN_07fc1a3a(uVar15,*(undefined4 *)(iVar27 + 0x14));
        uVar15 = FUN_07fc1988(uVar15,*(undefined4 *)(iVar27 + 0xc));
        uVar28 = *(undefined4 *)(iVar27 + 8);
        uVar17 = FUN_07fc1a3a(uVar15,uVar28);
        uVar16 = FUN_07fc1a3a(uVar28,uVar17);
        uVar16 = FUN_07fc1988(*(undefined4 *)(iVar27 + 0x10),uVar16);
        uVar17 = FUN_07fc1ab4(uVar17,uVar16);
        uVar16 = FUN_07fc1b30(local_30);
        uVar30 = FUN_07fc1a3a(uVar30,*(undefined4 *)(DAT_07fccf24 + iVar25));
        uVar18 = FUN_07fc1a3a(uVar30,uVar28);
        uVar16 = FUN_07fc1a2a(uVar16,uVar18);
        uVar16 = FUN_07fc1a3a(uVar16,uVar17);
        uVar16 = FUN_07fc1988(uVar30,uVar16);
        *(undefined4 *)(DAT_07fccf24 + iVar25) = uVar16;
        *(undefined4 *)(iVar27 + 0x18) = uVar17;
        uVar17 = FUN_07fc1a3a(uVar28,uVar17);
        uVar17 = FUN_07fc1a2a(0x3f800000,uVar17);
        uVar15 = FUN_07fc1a3a(uVar15,uVar17);
        *(undefined4 *)(iVar27 + 0x14) = uVar15;
        pcVar29 = DAT_07fccf20;
        local_30 = FUN_07fc1b3e(uVar16);
      }
      cVar1 = pcVar29[6];
      pcVar29[6] = cVar1 + 1U;
      if ((byte)(cVar1 + 1U) < 100) {
        sVar11 = *(short *)(pcVar29 + 0x26);
      }
      else {
        sVar11 = 0;
        pcVar29[6] = '\0';
        uVar2 = *(undefined2 *)(pcVar29 + 0x26);
        pcVar29[0x26] = '\0';
        pcVar29[0x27] = '\0';
        *(undefined2 *)(pcVar29 + 0x28) = uVar2;
      }
      sVar4 = (short)local_30;
      if (sVar11 < sVar4) {
        *(short *)(pcVar29 + 0x26) = sVar4;
      }
      uVar23 = local_48;
      if (*(ushort *)(pcVar29 + 0x28) != 0) {
        uVar23 = (uint)*(ushort *)(pcVar29 + 0x28);
      }
      if ((short)uVar23 < 0x3e9) {
        uVar23 = local_48;
      }
      if (pcVar29[7] < '\0') {
        bVar31 = DAT_07fccf1c < uVar23;
        sVar11 = 200;
      }
      else {
        sVar11 = func_0x07f1dfe4(uVar23 * 0x32 + DAT_07fccf30,1000);
        if (uVar23 < DAT_07fccf1c + 1) {
          sVar11 = sVar11 + 0x9e;
          bVar31 = false;
        }
        else {
          sVar11 = func_0x07f1dfe4(uVar23 * 0x6e + DAT_07fccf34,1000);
          sVar11 = sVar11 + 300;
          bVar31 = true;
        }
      }
      sVar3 = *(short *)(pcVar29 + 0x24);
      uVar23 = 0;
      if (local_30 < (uint)(int)sVar3) {
        uVar23 = 0xffffffff;
      }
      if ((uint)(int)sVar3 < local_30) {
        uVar23 = 1;
      }
      if ((uVar23 + (int)*pcVar29 == 0) || ((*pcVar29 == '\0' && ((uVar23 & 0xff) != 0)))) {
        if ((char)uVar23 < '\x01') {
          *(short *)(pcVar29 + 0x38) = sVar3;
          cVar1 = pcVar29[1];
          pcVar29[1] = '\x02';
          if ((cVar1 != '\x02') &&
             (((sVar11 < (short)(sVar3 - *(short *)(pcVar29 + 0x3c)) ||
               (((short)(sVar11 >> 1) < (short)(sVar3 - *(short *)(pcVar29 + 0x3c)) &&
                (pcVar29[3] == '\x02')))) && (0x27 < iVar24 - *(int *)(pcVar29 + 0x50))))) {
            if (iVar24 - *(int *)(pcVar29 + 0x50) < 0x7d1) {
              *(undefined4 *)(DAT_07fccf14 + 0x18) = 0;
              cVar1 = pcVar29[3];
              if (cVar1 == '\x02') {
                uVar15 = FUN_07fc4440();
                *(undefined4 *)(pcVar29 + 0x58) = uVar15;
                *(int *)(DAT_07fccf10 + 0x68) = *(int *)(DAT_07fccf10 + 0x68) + 1;
                FUN_07fc4f34(1,bVar31);
                pcVar29[5] = '\0';
              }
              else if (cVar1 == '\x01') {
                pcVar29[4] = '\0';
                uVar19 = *(int *)(pcVar29 + 0x54) + 1;
                *(uint *)(pcVar29 + 0x54) = uVar19;
                if (0x11 < uVar19) {
                  pcVar29[3] = '\x02';
                  *(uint *)(DAT_07fccf10 + 0x68) = *(int *)(DAT_07fccf10 + 0x68) + uVar19;
                  FUN_07fc4f34(uVar19,bVar31);
                  pcVar29[0x54] = '\0';
                  pcVar29[0x55] = '\0';
                  pcVar29[0x56] = '\0';
                  pcVar29[0x57] = '\0';
                }
              }
              else if (cVar1 == '\0') {
                pcVar29[4] = '\0';
                pcVar29[5] = '\0';
                pcVar29[0x54] = '\x01';
                pcVar29[0x55] = '\0';
                pcVar29[0x56] = '\0';
                pcVar29[0x57] = '\0';
                pcVar29[3] = '\x01';
              }
              *(undefined4 *)(pcVar29 + 0x50) = *(undefined4 *)(pcVar29 + 0x4c);
            }
            else {
              *(int *)(pcVar29 + 0x50) = iVar24;
            }
          }
        }
        else {
          *(short *)(pcVar29 + 0x3c) = sVar3;
          pcVar29[1] = '\x01';
        }
      }
      *(short *)(pcVar29 + 0x24) = sVar4;
      *pcVar29 = (char)uVar23;
    }
  }
  return;
}

