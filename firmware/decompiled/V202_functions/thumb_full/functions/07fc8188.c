/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined1 * FUN_07fc8188(void)

{
  byte *pbVar1;
  byte bVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  bool bVar5;
  int iVar6;
  byte *pbVar7;
  char cVar8;
  byte bVar9;
  ushort uVar10;
  undefined1 *puVar11;
  int iVar12;
  int iVar13;
  undefined4 uVar14;
  int iVar15;
  uint uVar16;
  int iVar17;
  char cVar18;
  uint uVar19;
  char *pcVar20;
  int iVar21;
  int iVar22;
  bool bVar23;
  int local_c0;
  undefined4 local_b8;
  undefined4 local_b4;
  int local_b0;
  undefined4 local_ac;
  undefined1 auStack_a8 [4];
  undefined4 local_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined1 auStack_94 [128];
  
  iVar21 = DAT_07fc822c;
  iVar17 = DAT_07fc8224;
  iVar15 = DAT_07fc8220;
  puVar11 = *(undefined1 **)(DAT_07fc8220 + 0x20);
  if ((*(char *)(DAT_07fc8224 + 0x15) == '\x01') && (puVar11 != (undefined1 *)0x0)) {
    if (*(char *)(DAT_07fc8224 + 0x13) == '\x01') {
      *(undefined1 *)(DAT_07fc822c + 0x41) = 0;
      if (*(char *)(iVar17 + 0x20) != '\x01') goto LAB_07fc8484;
      local_c0 = 0x20;
      *(undefined1 *)(iVar21 + 0x41) = 1;
      iVar15 = DAT_07fc8228;
      FUN_07fca73c(DAT_07fc8228 + 0x10);
      iVar6 = DAT_07fc85fc;
      iVar22 = DAT_07fc85d8;
      iVar17 = DAT_07fc85d4;
      bVar9 = *(byte *)(iVar21 + 0x5c);
      if (bVar9 < 4) {
        iVar12 = *(int *)(iVar15 + 0x1c);
        iVar13 = *(int *)(iVar15 + 0x14);
        switch(bVar9) {
        case 0:
          *(undefined1 *)(iVar21 + 0x5c) = 1;
          iVar17 = DAT_07fc85d4;
          goto LAB_07fc8454;
        case 1:
          if (*(char *)(DAT_07fc85f4 + 3) != '\0') {
            iVar15 = *(int *)(iVar15 + 0x10);
            *(undefined1 *)(iVar21 + 0x47) = 0;
            if (iVar15 + 0x80 < iVar13) {
              *(undefined1 *)(iVar21 + 0x45) = 0x13;
              iVar17 = (int)((iVar13 - iVar15) + ((uint)(iVar13 - iVar15 >> 0x1f) >> 0x1e)) >> 2;
              uVar16 = func_0x07f1dfb8(DAT_07fc85f8,iVar17);
              uVar19 = (uint)*(byte *)(iVar21 + 0x5e);
              if (uVar16 <= *(byte *)(iVar21 + 0x5e)) {
                uVar19 = uVar16;
              }
              *(short *)(iVar21 + 0x4a) = (short)uVar19;
              *(int *)(iVar21 + 0x54) = iVar17;
            }
            iVar17 = DAT_07fc85d4;
            if (iVar15 + 0x80 < iVar12) {
              *(undefined1 *)(iVar21 + 0x46) = 0x13;
              iVar15 = (int)((iVar12 - iVar15) + ((uint)(iVar12 - iVar15 >> 0x1f) >> 0x1c)) >> 4;
              uVar16 = func_0x07f1dfb8(DAT_07fc85f8,iVar15);
              uVar19 = (uint)*(byte *)(iVar21 + 0x5f);
              if (uVar16 <= *(byte *)(iVar21 + 0x5f)) {
                uVar19 = uVar16;
              }
              *(short *)(iVar21 + 0x4c) = (short)uVar19;
              *(int *)(iVar21 + 0x58) = iVar15;
            }
            *(undefined1 *)(iVar21 + 0x40) = 0xf;
            *(undefined1 *)(iVar21 + 0x5c) = 2;
            *(undefined1 *)(iVar21 + 0x4e) = 0x20;
            goto LAB_07fc8454;
          }
          *(undefined1 *)(iVar21 + 0x5c) = 4;
          iVar17 = DAT_07fc8834;
          goto LAB_07fc844c;
        case 2:
          if ((DAT_07fc85fc < iVar13) && (*(byte *)(iVar21 + 0x45) < 200)) {
            *(byte *)(iVar21 + 0x45) = *(byte *)(iVar21 + 0x45) + 2;
          }
          iVar17 = DAT_07fc85d4;
          if (iVar6 < iVar12) {
            if (0x18 < *(byte *)(iVar21 + 0x46) >> 3) goto LAB_07fc843c;
            uVar19 = *(byte *)(iVar21 + 0x46) + 2;
            *(char *)(iVar21 + 0x46) = (char)uVar19;
          }
          else {
            if (iVar13 < iVar6 + 1) {
LAB_07fc8438:
              bVar9 = 3;
              break;
            }
            uVar19 = (uint)*(byte *)(iVar21 + 0x46);
          }
          if ((uVar19 < 200) && (*(byte *)(iVar21 + 0x45) >> 3 < 0x19)) {
            bVar9 = 2;
          }
          else {
LAB_07fc843c:
            bVar9 = 4;
          }
          break;
        case 3:
          if (DAT_07fc85d8 < iVar13) {
            if (*(byte *)(iVar21 + 0x45) >> 3 < 0x19) {
              cVar18 = *(byte *)(iVar21 + 0x45) + 1;
LAB_07fc83ec:
              *(char *)(iVar21 + 0x45) = cVar18;
            }
          }
          else if ((iVar13 < DAT_07fc8600) && (*(char *)(iVar21 + 0x45) != '\0')) {
            cVar18 = *(char *)(iVar21 + 0x45) + -1;
            goto LAB_07fc83ec;
          }
          if (iVar22 < iVar12) {
            if (*(byte *)(iVar21 + 0x46) >> 3 < 0x19) {
              cVar18 = *(byte *)(iVar21 + 0x46) + 1;
LAB_07fc8410:
              *(char *)(iVar21 + 0x46) = cVar18;
            }
          }
          else if ((iVar12 < DAT_07fc8600) && (*(char *)(iVar21 + 0x46) != '\0')) {
            cVar18 = *(char *)(iVar21 + 0x46) + -1;
            goto LAB_07fc8410;
          }
          bVar9 = 4;
          if (((DAT_07fc8608 <= (uint)(iVar13 + DAT_07fc8604)) ||
              (DAT_07fc8608 <= (uint)(iVar12 + DAT_07fc8604))) &&
             (*(byte *)(iVar21 + 0x46) >> 3 < 0x19)) {
            if (*(byte *)(iVar21 + 0x45) >> 3 < 0x19) goto LAB_07fc8438;
            goto LAB_07fc843c;
          }
        }
        *(undefined1 *)(iVar21 + 0x40) = 2;
        *(byte *)(iVar21 + 0x5c) = bVar9;
      }
      if (bVar9 == 4) {
LAB_07fc844c:
        FUN_07fc7738(4);
        iVar15 = DAT_07fc8830;
      }
      else {
LAB_07fc8454:
        FUN_07fc77f8();
        iVar15 = DAT_07fc8830;
      }
    }
    else if ((*(char *)(DAT_07fc8224 + 0x13) == '\0') &&
            (*(undefined1 *)(DAT_07fc8220 + 0x45) = 0, *(char *)(iVar17 + 0x19) == '\x01')) {
      *(undefined1 *)(iVar15 + 0x45) = 1;
      iVar17 = DAT_07fc8228;
      FUN_07fca73c(DAT_07fc8228);
      iVar15 = DAT_07fc8220;
      cVar18 = *(char *)(DAT_07fc8220 + 0x50);
      iVar21 = *(int *)(iVar17 + 8);
      if (cVar18 == '\x02') {
        if (DAT_07fc85d8 < iVar21) {
          if (*(byte *)(DAT_07fc8220 + 0x4a) < 0x79) {
            *(byte *)(DAT_07fc8220 + 0x4a) = *(byte *)(DAT_07fc8220 + 0x4a) + 1;
            goto LAB_07fc839e;
          }
          cVar18 = '\x03';
        }
        else {
          cVar18 = '\x03';
          if ((iVar21 < DAT_07fc8600) && (*(char *)(DAT_07fc8220 + 0x4a) != '\0')) {
            *(char *)(DAT_07fc8220 + 0x4a) = *(char *)(DAT_07fc8220 + 0x4a) + -1;
LAB_07fc839e:
            cVar18 = '\x02';
          }
        }
        *(undefined1 *)(iVar15 + 0x44) = 2;
        *(char *)(iVar15 + 0x50) = cVar18;
LAB_07fc8470:
        iVar17 = DAT_07fc8834;
        if (cVar18 == '\x03') {
          FUN_07fc70b4(4);
          iVar15 = DAT_07fc8830;
          goto LAB_07fc8484;
        }
      }
      else if (cVar18 == '\x01') {
        iVar22 = *(int *)(iVar17 + 0xc);
        bVar9 = func_0x07f1dfe4(iVar22 + DAT_07fc85dc,DAT_07fc85e0);
        iVar15 = DAT_07fc85e8;
        if (iVar22 <= DAT_07fc85e4) {
          bVar9 = 0;
        }
        *(byte *)(DAT_07fc85e8 + 0x4b) = bVar9;
        iVar17 = DAT_07fc85d4;
        if (iVar22 + 0x80 < iVar21) {
          uVar19 = (int)((iVar21 - iVar22) + ((uint)(iVar21 - iVar22 >> 0x1f) >> 0x1a)) >> 6;
          *(short *)(DAT_07fc85e8 + 0x4e) = (short)uVar19;
          uVar10 = func_0x07f1dfb8((uint)bVar9 * DAT_07fc85ec + DAT_07fc85f0,uVar19 & 0xffff);
          *(ushort *)(DAT_07fc85e8 + 0x48) = uVar10;
          iVar15 = DAT_07fc85e8;
          if (*(byte *)(DAT_07fc85e8 + 0x51) < uVar10) {
            *(ushort *)(DAT_07fc85e8 + 0x48) = (ushort)*(byte *)(DAT_07fc85e8 + 0x51);
          }
          *(undefined1 *)(iVar15 + 0x44) = 0xf;
          *(undefined1 *)(iVar15 + 0x4c) = 0x30;
          *(undefined1 *)(iVar15 + 0x4a) = 5;
          *(undefined1 *)(iVar15 + 0x50) = 2;
        }
        else {
          *(undefined1 *)(iVar15 + 0x44) = 0xf;
          *(undefined1 *)(iVar15 + 0x4c) = 0x30;
          *(undefined1 *)(iVar15 + 0x4a) = 5;
          *(undefined1 *)(iVar15 + 0x50) = 2;
          *(ushort *)(iVar15 + 0x48) = (ushort)*(byte *)(iVar15 + 0x51);
        }
      }
      else {
        if (cVar18 != '\0') goto LAB_07fc8470;
        *(undefined1 *)(DAT_07fc8220 + 0x50) = 1;
        iVar17 = DAT_07fc8224;
      }
      FUN_07fc7150();
      iVar15 = DAT_07fc8830;
    }
LAB_07fc8484:
    puVar11 = *(undefined1 **)(iVar15 + 0x20);
  }
  if (*(char *)(iVar17 + 0x16) != '\x01') {
    return puVar11;
  }
  if (puVar11 == (undefined1 *)0x0) {
    return (undefined1 *)0x0;
  }
  FUN_07fc7660();
  iVar15 = DAT_07fc8838;
  puVar11 = (undefined1 *)(uint)*(byte *)(iVar17 + 0x13);
  if (puVar11 == (undefined1 *)0x1) {
    uVar3 = *(undefined1 *)(DAT_07fc8838 + 0x45);
    uVar4 = *(undefined1 *)(DAT_07fc8838 + 0x46);
    func_0x07f1e0de(auStack_94,0x80);
    pbVar7 = DAT_07fc8840;
    DAT_07fc8840[0x204] = *(byte *)(iVar15 + 0x48);
    pbVar7[DAT_07fc8844] = *(byte *)(iVar15 + 0x4a);
    pbVar7[DAT_07fc8848] = *(byte *)(iVar15 + 0x4c);
    if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x1f) != (undefined1 *)0x1) {
      return (undefined1 *)(uint)*(byte *)(iVar17 + 0x1f);
    }
    if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x20) != (undefined1 *)0x0) {
      return (undefined1 *)(uint)*(byte *)(iVar17 + 0x20);
    }
    bVar9 = FUN_07fc73d0(4);
    *DAT_07fc8840 = bVar9;
    pcVar20 = DAT_07fc883c;
    uVar19 = 0;
    bVar23 = false;
    do {
      iVar15 = DAT_07fc885c;
      pbVar7 = DAT_07fc8840;
      uVar16 = uVar19 & 0xff;
      if (bVar9 <= uVar16) {
        if (bVar23) {
          cVar18 = pcVar20[5];
          pcVar20[5] = cVar18 + -1;
          if ((char)(cVar18 + -1) == '\0') {
            pcVar20[5] = '\x03';
            FUN_07fc7738(5);
          }
        }
        else {
          pcVar20[5] = '\x03';
        }
        cVar18 = pcVar20[3];
        if (cVar18 == '\x01') {
          FUN_07fcdd44(DAT_07fc8840 + 0x84,DAT_07fc8840 + 0xc4,uVar3,uVar4,*DAT_07fc8840,auStack_94,
                       auStack_94,auStack_94);
        }
        FUN_07fcdad0(&local_a4);
        pcVar20 = DAT_07fc8860;
        DAT_07fc8860[1] = cVar18;
        *(undefined4 *)(pcVar20 + 0x18) = local_a4;
        *(undefined4 *)(pcVar20 + 0x1c) = uStack_a0;
        *(undefined4 *)(pcVar20 + 0x20) = uStack_9c;
        *(undefined4 *)(pcVar20 + 0x24) = uStack_98;
        return auStack_a8;
      }
      iVar17 = uVar16 * 0x10;
      iVar21 = *(int *)(DAT_07fc8840 + iVar17 + 0x108);
      *(int *)(DAT_07fc8840 + uVar16 * 4 + 0x84) = iVar21 + DAT_07fc885c;
      iVar22 = *(int *)(pbVar7 + iVar17 + 0x110);
      *(int *)(pbVar7 + uVar16 * 4 + 0xc4) = iVar22 + iVar15;
      pbVar1 = pbVar7 + uVar16 * 4 + 4;
      pbVar1[0] = 0;
      pbVar1[1] = 0;
      pbVar1[2] = 0;
      pbVar1[3] = 0;
      if (pcVar20[3] == '\x01') {
        iVar15 = *(int *)(pbVar7 + iVar17 + 0x104);
        iVar17 = FUN_07fc78fc();
        if ((((int)(DAT_07fc8864 * (uint)*(byte *)(DAT_07fc8838 + 0x46) + (iVar22 - iVar15)) <
              DAT_07fc8868) || (iVar17 < DAT_07fc884c)) && (pcVar20[3] = '\0', pcVar20[4] != '\0'))
        {
          pcVar20[4] = '\0';
LAB_07fc8826:
          puVar11 = (undefined1 *)FUN_07fc771c();
          return puVar11;
        }
      }
      else {
        iVar15 = FUN_07fc78fc();
        bVar5 = DAT_07fc8850 < iVar15;
        pcVar20[3] = bVar5;
        if ((bool)pcVar20[4] != bVar5) {
          pcVar20[4] = bVar5;
          if (DAT_07fc8850 < iVar15) {
            FUN_07fcdd3c();
            FUN_07fc7738(0);
            puVar11 = (undefined1 *)FUN_07fc7738(3);
            return puVar11;
          }
          goto LAB_07fc8826;
        }
      }
      if (((iVar21 < DAT_07fc8854) || (DAT_07fc8858 < iVar21)) ||
         ((iVar22 < DAT_07fc8854 || (DAT_07fc8858 < iVar22)))) {
        bVar23 = pcVar20[3] != '\0';
      }
      uVar19 = uVar19 + 1;
    } while( true );
  }
  if (puVar11 != (undefined1 *)0x0) {
    return puVar11;
  }
  func_0x07f1e0de(auStack_94,0x40);
  DAT_07fc8840[0x204] = *(byte *)(DAT_07fc8830 + 0x48);
  uVar19 = 0;
  local_ac = 0;
  local_b0 = 0;
  local_b4 = 0;
  local_b8 = 0;
  if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x18) != (undefined1 *)0x1) {
    return (undefined1 *)(uint)*(byte *)(iVar17 + 0x18);
  }
  if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x19) != (undefined1 *)0x0) {
    return (undefined1 *)(uint)*(byte *)(iVar17 + 0x19);
  }
  FUN_07fca73c(&local_b8);
  iVar15 = local_b0;
  bVar9 = FUN_07fc73d0(2);
  *DAT_07fc8840 = bVar9;
  pcVar20 = DAT_07fc883c;
  for (; pbVar7 = DAT_07fc8840, uVar16 = uVar19 & 0xff, uVar16 < bVar9; uVar19 = uVar19 + 1) {
    local_c0 = *(int *)(DAT_07fc8840 + uVar16 * 8 + 0x104);
    *(int *)(DAT_07fc8840 + uVar16 * 4 + 0xc4) = local_c0;
    *(int *)(pbVar7 + uVar16 * 4 + 4) = *(int *)(pbVar7 + uVar16 * 8 + 0x108) << 1;
    iVar21 = FUN_07fc78fc();
    FUN_07fc53c0(s_sr__d_ir__d_07fc8878,iVar21,local_c0);
    cVar18 = *pcVar20;
    iVar17 = DAT_07fc8888;
    if (cVar18 != '\0') {
      iVar17 = DAT_07fc8850;
    }
    if (iVar21 < DAT_07fc884c) {
      bVar2 = *(byte *)(DAT_07fc8834 + 0x17);
      if ((1 < bVar2) || (*(byte *)(DAT_07fc8834 + 0x17) = bVar2 + 1, bVar2 == 1)) {
        cVar18 = '\0';
LAB_07fc8574:
        *DAT_07fc883c = cVar18;
      }
    }
    else if ((DAT_07fc8850 < iVar21) &&
            ((*(char *)(DAT_07fc8834 + 0x17) == '\0' ||
             (cVar8 = *(char *)(DAT_07fc8834 + 0x17) + -1, *(char *)(DAT_07fc8834 + 0x17) = cVar8,
             cVar8 == '\0')))) {
      cVar18 = '\x01';
      goto LAB_07fc8574;
    }
    uVar14 = FUN_07fc7604(0x6a);
    FUN_07fc53c0(s_c__d__d__x_07fc888c,iVar17,cVar18,uVar14);
    pcVar20 = DAT_07fc883c;
    cVar18 = *DAT_07fc883c;
    if (DAT_07fc883c[1] != cVar18) {
      DAT_07fc883c[1] = cVar18;
      iVar17 = DAT_07fc8834;
      if (cVar18 == '\x01') {
        FUN_07fcc888();
        FUN_07fc70b4(0);
        FUN_07fc70b4(3);
      }
      else if (cVar18 == '\0') {
        *(undefined1 *)(DAT_07fc8834 + 0x1c) = 0;
        FUN_07fc7700(DAT_07fc889c);
        *(undefined2 *)(DAT_07fc8830 + 0x48) = 0;
        pcVar20 = DAT_07fc883c;
        FUN_07fc732c();
        *(undefined1 *)(iVar17 + 0x12) = 1;
      }
    }
  }
  cVar18 = *pcVar20;
  if (cVar18 == '\0') {
    if (((local_c0 <= DAT_07fc886c) && (*(char *)(DAT_07fc8834 + 0x1c) != '\0')) &&
       ((uint)(*(int *)(DAT_07fc8830 + 0x30) + DAT_07fc8870) <= DAT_07fc8874)) {
      *(undefined2 *)(DAT_07fc8834 + 0x46) = *(undefined2 *)(DAT_07fc8834 + 0x40);
    }
    if (DAT_07fc8854 <= iVar15) goto LAB_07fc8770;
LAB_07fc877a:
    if (cVar18 == '\0') {
LAB_07fc8796:
      pcVar20[2] = '\x03';
      goto LAB_07fc879a;
    }
  }
  else if (DAT_07fc8854 <= iVar15) {
LAB_07fc8770:
    if (DAT_07fc8858 + 1 <= iVar15) goto LAB_07fc877a;
    goto LAB_07fc8796;
  }
  cVar8 = pcVar20[2];
  pcVar20[2] = cVar8 + -1;
  if ((char)(cVar8 + -1) == '\0') {
    pcVar20[2] = '\x03';
    FUN_07fc70b4(5);
    cVar18 = *pcVar20;
  }
LAB_07fc879a:
  if (cVar18 == '\x01') {
    FUN_07fcc894(DAT_07fc8840 + 4,*DAT_07fc8840,auStack_94,auStack_94,auStack_94);
  }
  FUN_07fcc7ac(&local_b8);
  pcVar20 = DAT_07fc8860;
  puVar11 = (undefined1 *)func_0x07f1e0ac(DAT_07fc8860 + 4,&local_b8,0x14);
  *pcVar20 = cVar18;
  return puVar11;
}

