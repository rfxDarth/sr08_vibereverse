/* Analysis-only merged Ghidra decompilation of V204 payload SHA-256
 * 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570.
 * FlowOverride changed analysis only, not firmware bytes. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: ram */

void FUN_07fc98d4(void)

{
  byte bVar1;
  byte bVar2;
  undefined2 uVar3;
  ushort uVar4;
  byte bVar5;
  undefined4 *puVar6;
  int *piVar7;
  code *pcVar8;
  ushort *puVar9;
  char cVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  ushort uVar16;
  int iVar17;
  uint uVar18;
  undefined4 *puVar19;
  ushort *puVar20;
  short sVar21;
  undefined2 *puVar22;
  undefined2 *puVar23;
  uint *puVar24;
  undefined8 uVar25;
  uint uStack_54;
  uint uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  puVar23 = DAT_07fc9c44;
  *DAT_07fc9c44 = 200;
  uStack_24 = 1;
  puVar23[1] = 1;
  *DAT_07fc9c48 = 8;
  puVar20 = DAT_07fc9c50;
  *DAT_07fc9c50 = *DAT_07fc9c50 & 0xfff8;
  if ((int)((uint)_DAT_5000002a << 0x16) < 0) {
    *puVar20 = (*puVar20 & 0xfff) + 0xa000;
    *puVar20 = *puVar20 & 0xffc7 | 0x40;
  }
  sVar21 = _DAT_50000002;
  if (_DAT_50000002 == 0) {
    sVar21 = (short)DAT_07fc9c54;
  }
  *(short *)(DAT_07fc9c58 + 0x3a) = sVar21;
  _DAT_50000022 = _DAT_50000022 | 1;
  FUN_07fc0194(0xd);
  _DAT_5000000a = _DAT_5000000a & 0xfffd | 1;
  do {
  } while (-1 < (int)((uint)_DAT_5000000a << 0x19));
  _DAT_50000002 = sVar21;
  FUN_07fc0194();
  puVar24 = DAT_07fc9c5c;
  _DAT_5000000a = _DAT_5000000a & 0xfffc;
  do {
  } while (-1 < (int)((uint)_DAT_5000000a << 0x18));
  _DAT_50000022 = _DAT_50000022 & 0xfffe;
  *DAT_07fc9c5c = 0;
  _DAT_50000012 = _DAT_50000012 & 0xffbf;
  puVar24[5] = 0;
  puVar24[10] = DAT_07fc9c60;
  puVar24[0xb] = 0x10000;
  iVar12 = DAT_07fc9c58;
  for (uStack_10 = 0; (int)uStack_10 < 100; uStack_10 = uStack_10 + 1) {
  }
  *puVar24 = 1;
  puVar23 = DAT_07fc9c64;
  *(undefined2 *)(iVar12 + 0x3c) = *DAT_07fc9c64;
  uVar3 = puVar23[1];
  *puVar24 = 0;
  *(undefined2 *)(iVar12 + 0x3e) = uVar3;
  _DAT_50000012 = _DAT_50000012 & 0xffbf;
  puVar24[5] = 0;
  puVar24[10] = DAT_07fc9c60;
  puVar24[0xb] = 0x10000;
  for (uStack_10 = 0; (int)uStack_10 < 100; uStack_10 = uStack_10 + 1) {
  }
  *puVar24 = *puVar24 & 0xfffffff8;
  _DAT_50000000 = _DAT_50000000 & 0xff7f;
  func_0x07f1e0de(DAT_07fc9c68,0x798);
  func_0x07f1e0de(DAT_07fc9c6c,0xa00);
  FUN_07fc16c6();
  func_0x07f1e0ac(DAT_07fc9c70,DAT_07fc9c74);
  *DAT_07fc9c78 = 0;
  *DAT_07fc9c7c = DAT_07fc9c80;
  *DAT_07fc9c84 = DAT_07fc9c88;
  *DAT_07fc9c8c = DAT_07fc9c90;
  *DAT_07fc9c94 = 10;
  *DAT_07fc9c98 = 0;
  *DAT_07fc9c9c = 0x32;
  *DAT_07fc9ca0 = 5;
  *DAT_07fc9ca4 = 1;
  *DAT_07fc9ca8 = 5;
  *DAT_07fc9cac = 6;
  *DAT_07fc9cb0 = 7;
  *DAT_07fc9cb4 = 8;
  *DAT_07fc9cb8 = 0x26;
  *DAT_07fc9cbc = 0x26;
  puVar6 = DAT_07fc9cc0;
  *DAT_07fc9cc0 = DAT_07fc9c68;
  FUN_07fcadf8();
  func_0x07f02982(1);
  puVar23 = DAT_07fc9c44;
  _DAT_50000010 = _DAT_50000010 & 0xfffb;
  do {
  } while (-1 < (int)((uint)_DAT_50000014 << 0x1e));
  _DAT_50000024 = (_DAT_50000024 & 0xffbf | 0xb0) & (ushort)DAT_07fc9cc4 & 0xfff0 | 0x1c00;
  _DAT_50000012 = _DAT_50000012 & 0xfff7;
  _DAT_50000020 = _DAT_50000020 & 0xff7e;
  _DAT_50000008 = (_DAT_50000008 & 0xffcd | 0xc9) & 0xffbf;
  if ((_DAT_5000002a & 0x200) != 0) {
    DAT_07fc9c50[1] = 5;
  }
  puVar24 = DAT_07fc9ccc;
  _DAT_40000000 = _DAT_40000000 & DAT_07fc9cc8 + 0x37U;
  *DAT_07fc9ccc = (*DAT_07fc9ccc & 0xffff81ff) + 0x2000;
  *puVar24 = *puVar24 | DAT_07fc9cd0 + 1U;
  func_0x07f022b4(*puVar6);
  iVar12 = DAT_07fc9cd4;
  *(undefined1 *)(DAT_07fc9cd4 + 4) = 0;
  *(undefined1 *)(iVar12 + 3) = 0;
  _DAT_40000000 = _DAT_40000000 | 0x100;
  FUN_07fc566c();
  FUN_07fcb7d4();
  iVar12 = DAT_07fc9cd8;
  *(undefined1 *)(DAT_07fc9cd8 + 100) = 0;
  *(undefined1 *)(DAT_07fc9cd4 + 3) = 0;
  *DAT_07fc9cdc = 0;
  *(undefined4 *)(iVar12 + 0x58) = 0;
  *(undefined4 *)(iVar12 + 0x5c) = 0;
  *(undefined4 *)(iVar12 + 0x60) = 0;
  uVar11 = FUN_07fc8fb0(&uStack_10);
  iVar12 = DAT_07fc9ce0;
  *(undefined1 *)(DAT_07fc9ce0 + 0x48) = (undefined1)uStack_10;
  func_0x07f1e0ac(iVar12 + 0x49,uVar11);
  *(undefined2 *)(iVar12 + 0x6a) = 0;
  func_0x07f1be52(4,DAT_07fc9ce4);
  func_0x07f1beb6(4,0);
  *(undefined1 *)(DAT_07fc9c58 + 9) = 0;
  iVar12 = DAT_07fc9ce0;
  *(short *)(DAT_07fc9ce0 + 0x30) = (short)DAT_07fc9ce8;
  uVar11 = DAT_07fc9cec;
  *(undefined4 *)(iVar12 + 0x28) = DAT_07fc9cf0;
  *(undefined4 *)(iVar12 + 0x2c) = uVar11;
  FUN_07fc72f0(&uStack_10);
  func_0x07f1e0ac(DAT_07fc9ce0 + 0x32,&uStack_10);
  iVar12 = DAT_07fc9ce0;
  *(undefined2 *)(DAT_07fc9ce0 + 0x3c) = 0x17;
  *(undefined4 *)(iVar12 + 0x38) = DAT_07fc9cf4;
  iVar12 = DAT_07fc9c58;
  *(undefined1 *)(DAT_07fc9c58 + 10) = 1;
  *(undefined1 *)(iVar12 + 0x14) = 0;
  iVar12 = DAT_07fc9cd8;
  *(undefined4 *)(DAT_07fc9cd8 + 0x18) = 0;
  *(undefined4 *)(iVar12 + 0x1c) = 0;
  *(undefined4 *)(iVar12 + 0x20) = 0;
  *(undefined4 *)(iVar12 + 0x24) = 0;
  *DAT_07fc9cf8 = 0;
  for (iVar12 = -0x14; iVar12 != 0; iVar12 = iVar12 + 2) {
    iVar17 = DAT_07fc9cd8 + iVar12;
    *(undefined1 *)(iVar17 + 0x7b) = 4;
    *(undefined1 *)(iVar17 + 0x7a) = 0xff;
  }
  *(undefined1 *)((int)DAT_07fca0c0 + 3) = 1;
  *DAT_07fca0c4 = 1;
  puVar20 = DAT_07fca0c8;
  uStack_28 = 0;
  FUN_07fc3ea0(DAT_07fca0c8,0x2d000,0x7e);
  uVar13 = DAT_07fca0cc;
  if (((uint)*puVar20 != DAT_07fca0cc + 0x24) || (puVar20[0x3e] != DAT_07fca0d0)) {
    func_0x07f1e0de(puVar20 + 1,0x7a);
  }
  FUN_07fc9830();
  _DAT_50000016 = 0;
  _DAT_50000022 = _DAT_50000022 & 0xffbf | 0xa0;
  *puVar23 = 200;
  puVar22 = DAT_07fca0d4;
  *DAT_07fca0d4 = 8;
  _DAT_50000012 = _DAT_50000012 & 0xff7f;
  if (*DAT_07fca0d8 == DAT_07fca0dc) {
    *(undefined1 *)(DAT_07fca0e0 + 0xe) = 1;
  }
  if (*DAT_07fca0d8 == uVar13) {
    *(undefined1 *)(DAT_07fca0e0 + 0xe) = 2;
  }
  uVar13 = DAT_07fca0e8 + DAT_07fca0e4 + DAT_07fca0ec;
  do {
    while ((((int)((uint)_DAT_50000008 << 0x18) < 0 && ((_DAT_40000030 & 0x8000) == 0)) &&
           ((*DAT_07fca0c0 & 1) == 0))) {
      func_0x07f1c3da();
      iVar12 = DAT_07fca0e0;
      if (*(char *)(DAT_07fca0e0 + 3) == '\x04') {
        FUN_07fcb7d4();
        uStack_10 = 0;
        iVar17 = func_0x07f0cff4(&uStack_10,4);
        piVar7 = DAT_07fca0f0;
        if (iVar17 != 0) {
          *DAT_07fca0f0 = 1;
          uVar14 = _DAT_4000001c;
          do {
          } while (*piVar7 != 0);
          uVar18 = *(uint *)(iVar12 + 0x44);
          if (_DAT_4000001c < uVar18) {
            *(undefined4 *)(iVar12 + 0x44) = 0;
            uVar18 = 0;
          }
          if (*(char *)(iVar12 + 1) == '\x01') {
            *(uint *)(iVar12 + 0x44) = uVar14;
            *(undefined1 *)(iVar12 + 1) = 0;
            uVar14 = FUN_07fc7308();
LAB_07fc9e24:
            *(short *)(iVar12 + 0x38) = (short)uVar14;
            iVar17 = FUN_07fc16f8();
            if (iVar17 == 0) {
              *(undefined1 *)(iVar12 + 1) = 1;
            }
          }
          else if (DAT_07fca0f4 < uVar14 - uVar18) {
            *(uint *)(iVar12 + 0x44) = uVar14;
            uVar14 = FUN_07fc7308();
            uVar4 = *(ushort *)(iVar12 + 0x38);
            uVar16 = uVar4 - (short)uVar14;
            if (uVar4 < uVar14) {
              uVar16 = (short)uVar14 - uVar4;
            }
            if (0x17 < uVar16) goto LAB_07fc9e24;
          }
        }
      }
      iVar17 = DAT_07fca0fc;
      puVar6 = DAT_07fca0f8;
      if (*(char *)(iVar12 + 0xd) == '\0') {
        puVar19 = DAT_07fca0f8 + 0x14;
        *(undefined4 *)(DAT_07fca0fc + 0x5c) = 0;
        *(undefined4 *)(iVar17 + 0x60) = 0;
        *(undefined4 *)(iVar17 + 100) = 0x10;
        *(undefined4 *)(iVar17 + 0x68) = 2;
        *(undefined4 **)(iVar17 + 0x6c) = puVar19;
        FUN_07fc2568();
        iVar12 = DAT_07fca100;
        iVar15 = DAT_07fca100 + 0x3c;
        *(undefined4 *)(iVar17 + 0x20) = 0;
        *(undefined4 *)(iVar17 + 0x24) = 0;
        *(undefined4 *)(iVar17 + 0x28) = 4;
        *(undefined4 *)(iVar17 + 0x2c) = 2;
        *(int *)(iVar17 + 0x30) = iVar15;
        *puVar6 = 0;
        puVar6[1] = 0;
        puVar6[2] = 0x20;
        puVar6[3] = 1;
        puVar6[4] = DAT_07fca104;
        puVar19 = DAT_07fca10c;
        iVar17 = DAT_07fca108 + 0x46;
        *DAT_07fca10c = 0;
        puVar19[1] = 0;
        puVar19[2] = 4;
        puVar19[3] = 2;
        puVar19[4] = iVar17;
        puVar6[10] = 0;
        puVar6[0xb] = 0;
        puVar6[0xc] = 8;
        puVar6[0xd] = 1;
        puVar6[0xe] = iVar12 + 0x44;
        FUN_07fc3ea0(puVar6 + 0xf,0x61000,0x14,0);
        FUN_07fc8500();
        *(undefined1 *)(DAT_07fca110 + 6) = 0;
        *(undefined4 *)(DAT_07fca0e0 + 0x68) = 0;
        iVar12 = DAT_07fca114;
        func_0x07f1e0de(DAT_07fca114,0xd4);
        *(undefined1 *)(iVar12 + 0x8a) = 0x32;
        *(undefined1 *)(iVar12 + 0x89) = 0xaa;
        *(undefined2 *)(iVar12 + 0x94) = 0x3200;
        *(undefined2 *)(iVar12 + 0x36) = 0x3e;
        puVar6 = DAT_07fca118;
        DAT_07fca118[6] = 0;
        puVar6[7] = 1;
        puVar6[8] = 9;
        puVar6[9] = 1;
        puVar6[10] = 1;
        puVar6[0xb] = 0x7b;
        puVar6[1] = DAT_07fca11c;
        uStack_10 = 0;
        FUN_07fc3ea0(&uStack_10,0x3c000,4,0);
        if (uStack_10 != -1) {
          FUN_07fc3ea0(iVar12 + 0x30,0x3c000,0x70,0);
          puVar6[1] = *(undefined4 *)(iVar12 + 0x30);
        }
        puVar6 = DAT_07fca118;
        iVar12 = DAT_07fca114;
        bVar5 = *(byte *)((int)DAT_07fca0d8 + 3);
        bVar1 = *(byte *)((int)DAT_07fca0d8 + 9);
        uVar4 = DAT_07fca0d8[4];
        bVar2 = *(byte *)((int)DAT_07fca0d8 + 7);
        uVar16 = DAT_07fca0d8[3];
        if ((((char)DAT_07fca0d8[1] == -0x55) || ((char)DAT_07fca0d8[1] == ';')) &&
           (uVar14 = (uint)*(byte *)((int)DAT_07fca0d8 + 5) * 0x100 + (uint)(byte)DAT_07fca0d8[2],
           uVar14 <= DAT_07fca120)) {
          if (bVar5 < 0x65) {
            uVar18 = *(uint *)(DAT_07fca114 + 0x9c);
            if (uVar18 == (int)(char)bVar5) {
              *(undefined1 *)(DAT_07fca0e0 + 0x20) = 1;
              *(int *)(DAT_07fca108 + 0x2c) = (int)(char)bVar5;
            }
            else if ((uVar18 < 0x65) && (*(ushort *)(DAT_07fca114 + 0x98) == DAT_07fca124)) {
              *(undefined1 *)(DAT_07fca0e0 + 0x20) = 1;
              *(uint *)(DAT_07fca108 + 0x2c) = uVar18;
            }
          }
          *(uint *)(iVar12 + 0x44) = uVar14;
          puVar6[1] = (uint)(byte)uVar4 * 0x10000 + (uint)bVar1 * 0x1000000 + (uint)bVar2 * 0x100 +
                      (uint)(byte)uVar16 + 3;
        }
        puVar6 = DAT_07fca118;
        FUN_07fc9004(DAT_07fca118[1],DAT_07fca118 + 6);
        piVar7 = DAT_07fca0f0;
        *DAT_07fca0f0 = 1;
        *puVar6 = puVar6[1];
        do {
        } while (*piVar7 != 0);
        puVar6[5] = 0;
        puVar6[4] = _DAT_4000001c;
        pcVar8 = DAT_07fca12c;
        (*DAT_07fca12c)(5,1000,DAT_07fca128);
        (*pcVar8)(3,1,DAT_07fca130);
        (*pcVar8)(2,0x14,DAT_07fca134);
        (*pcVar8)(1,500,DAT_07fca138);
        (*pcVar8)(4,1000,DAT_07fca13c);
        (*pcVar8)(7,10,DAT_07fca140);
        (*pcVar8)(8,1,DAT_07fca144);
        (*pcVar8)(6,500,DAT_07fca148);
        FUN_07fc3838(1);
        FUN_07fc3838(0);
        pcVar8 = DAT_07fca158;
        (*DAT_07fca158)(s_version__d_07fca14c,0xcc);
        FUN_07fc20f0();
        uStack_c = 0;
        uStack_10 = 0;
        FUN_07fc3ea0(&uStack_10,DAT_07fca15c,6,0);
        (*pcVar8)(s_nvds_mac_0x_x_0x_x_0x_x_0x_x_0x__07fca160,uStack_c._1_1_,uStack_c & 0xff,
                  uStack_10._3_1_,uStack_10 >> 0x10 & 0xff,uStack_10 >> 8 & 0xff,uStack_10 & 0xff);
        iVar12 = DAT_07fca0e0;
        (*pcVar8)(s_rsf__d_07fca188,*(undefined1 *)(DAT_07fca0e0 + 0xe));
        if (*(char *)(iVar12 + 0xe) == '\x01') {
          cVar10 = '\x1e';
        }
        else {
          cVar10 = (*(char *)(iVar12 + 0xe) == '\x02') * ' ';
        }
        FUN_07fc3b78(cVar10);
        *(undefined1 *)(iVar12 + 0xd) = 1;
      }
      uVar11 = uStack_24;
      if (((*DAT_07fca190 != '\x01') && (uVar11 = 1, *(char *)(iVar12 + 0x34) == '\0')) &&
         (uVar11 = 100, *(char *)(iVar12 + 0x28) != '\0')) {
        uVar11 = 0xb;
      }
      func_0x07f1c054(0x413,4,uVar11);
      cVar10 = *(char *)(iVar12 + 0xf);
      if ((int)((uint)*DAT_07fca194 << 0x1a) < 0) {
        if (cVar10 != '\x02') {
          uVar14 = 0x2000;
          if (cVar10 != '\0') goto LAB_07fca200;
          *(undefined1 *)(iVar12 + 0xf) = 2;
          piVar7 = DAT_07fca534;
          *DAT_07fca534 = 1;
          do {
          } while (*piVar7 != 0);
          *(uint *)(iVar12 + 0x6c) = _DAT_4000001c;
        }
        piVar7 = DAT_07fca534;
        *DAT_07fca534 = 1;
        do {
        } while (*piVar7 != 0);
        uVar18 = _DAT_4000001c;
        if (_DAT_4000001c < *(uint *)(iVar12 + 0x6c)) {
          uVar18 = _DAT_4000001c + 0x5000000;
        }
        uVar14 = 0x2000;
        if (DAT_07fca5b4 <= uVar18 - *(uint *)(iVar12 + 0x6c)) {
          FUN_07fc532c(DAT_07fca5b8,DAT_07fca5bc,0x145);
          uStack_10 = 8;
          FUN_07fc2ea8(DAT_07fca5c4,&uStack_10);
          *(undefined1 *)(iVar12 + 0xf) = 4;
          uVar14 = 0x2000;
        }
      }
      else {
        if (cVar10 == '\x02') {
          FUN_07fc532c(DAT_07fca198,DAT_07fca19c,0x14f);
          uStack_10 = 1;
          FUN_07fc2ea8(DAT_07fca10c,&uStack_10);
        }
        uVar14 = 0;
        *(undefined1 *)(iVar12 + 0xf) = 0;
      }
LAB_07fca200:
      _DAT_50000004 = _DAT_50000004 | 0x10;
      *(undefined4 *)(iVar12 + 0x48) = DAT_07fca5c0;
      iVar12 = DAT_07fca5c8;
      *(undefined2 *)(DAT_07fca5c8 + 2) = 1;
      puVar20 = (ushort *)(iVar12 + 0x12);
      for (uVar18 = uStack_28; puVar9 = DAT_07fca60c, uVar18 != 0x20; uVar18 = uVar18 + 8) {
        *puVar20 = (*puVar20 & 0xff00) + (ushort)(byte)(uVar14 >> (uVar18 & 0xff));
        puVar20[-4] = (puVar20[-4] & 0xff00) + (ushort)(byte)(0x2000 >> (uVar18 & 0xff));
        puVar20 = puVar20 + 1;
      }
      uVar4 = (ushort)DAT_07fca5e4;
      DAT_07fca60c[0xb] = DAT_07fca60c[0xb] & uVar4;
      puVar9[7] = puVar9[7] & uVar4;
      puVar9[2] = 1;
      iVar17 = 0;
      puVar9[4] = 0;
      *puVar9 = *puVar9 & 0xffc0;
      *puVar9 = *puVar9 | 0x80;
      *DAT_07fca610 = *DAT_07fca610 & 0xffffff80 | 0x80;
      *DAT_07fca61c = 0x10000;
      uStack_10 = 0;
      iVar12 = FUN_07fc2fcc(DAT_07fca600,&uStack_10);
      puVar23 = DAT_07fca5cc;
      if (iVar12 == 0) {
        FUN_07fc2f8c(DAT_07fca600);
        uVar14 = uStack_10;
        FUN_07fc532c(s_k__d_07fca620,uStack_10);
        iVar12 = DAT_07fca5d4;
        if ((uVar14 == 8) || (uVar14 == 1)) {
          *(undefined2 *)(DAT_07fca5d4 + 0x40) = 6;
        }
        iVar15 = 0;
        do {
          puVar23 = DAT_07fca5cc;
          if (iVar15 + 4 == 0x90) goto LAB_07fca28c;
          puVar20 = *(ushort **)(DAT_07fca628 + iVar15);
          iVar15 = iVar15 + 4;
        } while (*puVar20 != (ushort)*(byte *)(iVar12 + 0xc));
        puVar24 = *(uint **)(puVar20 + 8);
        for (uVar18 = (uint)puVar20[1]; uVar18 != 0; uVar18 = uVar18 - 1) {
          if ((*puVar24 & uVar14) != 0) {
            if ((code *)puVar24[2] != (code *)0x0) {
              (*(code *)puVar24[2])(uVar14);
            }
            puVar23 = DAT_07fca5cc;
            if ((ushort)puVar24[1] != DAT_07fca62c) {
              FUN_07fc3b78();
              puVar23 = DAT_07fca5cc;
            }
            break;
          }
          puVar24 = puVar24 + 3;
        }
      }
LAB_07fca28c:
      for (; puVar22 = DAT_07fca5d0, iVar17 != 0xc0; iVar17 = iVar17 + 0x10) {
        if (*(char *)(DAT_07fca618 + iVar17) == '\x01') {
          uVar18 = FUN_07fc4440();
          iVar12 = DAT_07fca618 + iVar17;
          uVar14 = uVar18;
          if (uVar18 < *(uint *)(iVar12 + 8)) {
            uVar14 = uVar18 + 0x5000000;
          }
          if (*(uint *)(iVar12 + 4) <= uVar14 - *(uint *)(iVar12 + 8)) {
            *(uint *)(iVar12 + 8) = uVar18;
            (**(code **)(iVar12 + 0xc))();
            if (*(char *)(iVar12 + 1) == '\0') {
              *(undefined1 *)(DAT_07fca618 + iVar17) = 0;
            }
          }
        }
      }
      if (*(int *)(DAT_07fca5d4 + 0x78) == 0) break;
      WaitForInterrupt();
      *puVar23 = 200;
    }
    disableIRQinterrupts();
    if ((char)DAT_07fca5f4[2] == '\x02') {
      uStack_10 = 0;
    }
    else {
      uStack_10 = *(uint *)(*DAT_07fca5e0 + 0x28);
    }
    if (((puVar22[3] & 1) == 0) && (iVar12 = func_0x07f1b74e(), iVar12 != 0)) {
      if (*(char *)((int)DAT_07fca5f4 + 3) != '\0') {
        if ((_DAT_50000014 & 1) != 0) {
LAB_07fca4c4:
          _DAT_50000010 = _DAT_50000010 | 4;
          *DAT_07fca614 = *DAT_07fca614 | 4;
          puVar6 = DAT_07fca5d8;
          _DAT_50000010 = _DAT_50000010 | 2;
          if (*DAT_07fca5fc == '\x01') {
            _DAT_50000012 = _DAT_50000012 & 0xffcf;
          }
          else {
            _DAT_50000012 = _DAT_50000012 & 0xffdb;
            *DAT_07fca5d8 = 0;
            _DAT_50000012 = _DAT_50000012 & 0xffbf;
            puVar6[5] = 0;
            puVar6[10] = DAT_07fca5dc;
            puVar6[0xb] = 0x10000;
            for (uStack_10 = 0; (int)uStack_10 < 100; uStack_10 = uStack_10 + 1) {
            }
            _DAT_50000012 = _DAT_50000012 | 0x10;
            puVar6[5] = (uVar13 >> 2) - 1;
            _DAT_50000000 = _DAT_50000000 & 0xff7f;
          }
          _DAT_50000010 = _DAT_50000010 | 0xf00;
          _DAT_50000022 = _DAT_50000022 & (ushort)DAT_07fca648 | 1;
          FUN_07fc0194(0xd);
          puVar22 = DAT_07fca5d0;
          _DAT_5000000a = _DAT_5000000a & 0xfffd | 1;
          do {
          } while (-1 < (int)((uint)_DAT_5000000a << 0x19));
          _DAT_50000002 = 0;
          if ((int)((uint)_DAT_50000014 << 0x1a) < 0) {
            DAT_07fca5d0[-1] = 8;
          }
          WaitForInterrupt();
          if ((int)((uint)_DAT_50000014 << 0x1a) < 0) {
            *puVar22 = 8;
          }
          *DAT_07fca614 = *DAT_07fca614 & 0xfffffffb;
          goto LAB_07fca5a0;
        }
        if (*DAT_07fca5f4 == 0) {
          if (*(int *)(DAT_07fca630 + 0x28) != 0) {
            uStack_10 = *(uint *)(*DAT_07fca5e0 + 0x28);
          }
          iVar12 = func_0x07f1c164(&uStack_10,(char)DAT_07fca5f4[1]);
          if (((iVar12 != 0) && (-1 < _DAT_40000010 << 0x19)) &&
             (iVar12 = func_0x07f0cff4(&uStack_10,(char)DAT_07fca5f4[1]), iVar12 != 0)) {
            if (uStack_10 == 0) {
              uStack_54 = 0;
            }
            else if ((uint)(_DAT_40000020 + DAT_07fca5e8) < 0xdb) {
              uStack_54 = uStack_10 - 1;
              uStack_10 = uStack_54;
            }
            else {
              uStack_54 = uStack_10;
            }
            iVar17 = *(int *)(DAT_07fca5f8 + 8);
            iVar12 = func_0x07f1dfb8(iVar17 * (DAT_07fca604 + 0x9e) + DAT_07fca608,DAT_07fca634);
            iVar17 = func_0x07f1dfb8(DAT_07fca638 * iVar17 + DAT_07fca608,DAT_07fca634);
            if (*DAT_07fca5fc == '\x02') {
              iVar15 = 0x23;
            }
            else {
              iVar15 = 0x12;
            }
            iVar15 = iVar15 + iVar12;
            _DAT_4000003c =
                 (((_DAT_4000003c & DAT_07fca63c | iVar12 - iVar17) & DAT_07fca640 | iVar15 * 0x400)
                 & DAT_07fca5f0) + iVar12 * 0x200000;
            if (DAT_07fca634 <= uStack_54) {
              *puVar23 = 200;
              *DAT_07fca5d0 = 8;
              do {
                    /* WARNING: Do nothing block with infinite loop */
              } while( true );
            }
            uVar25 = func_0x07f1e00c(*(undefined4 *)(DAT_07fca5f8 + 0x50),
                                     *(undefined4 *)(DAT_07fca5f8 + 0x54),uStack_54,0);
            iVar12 = ((uint)uVar25 >> 0x14) + (int)((ulonglong)uVar25 >> 0x20) * 0x1000 + -1;
            if (iVar12 != iVar15 + 1) {
              iVar15 = iVar12;
            }
            func_0x07f08f9e(iVar15,(char)DAT_07fca5f4[2] != '\0');
            (**(code **)(DAT_07fca644 + 0x2c))();
            puVar24 = DAT_07fca5ec;
            do {
            } while ((_DAT_40000030 & 0x8000) == 0);
            do {
            } while ((*DAT_07fca5ec & 0x100) == 0);
            *DAT_07fca5ec = *DAT_07fca5ec & 0xffffff7f;
            uVar4 = DAT_07fca5d0[4];
            if (uVar4 < 0x46) {
              DAT_07fca5d0[4] = 0x46;
              *(uint *)(DAT_07fca5d4 + 0x50) = 0x46 - (uint)uVar4;
            }
            func_0x07f02326();
            *(uint *)(DAT_07fca5d4 + 0x54) = puVar24[2];
            do {
            } while (-1 < (int)(*puVar24 << 0x18));
            _DAT_50000008 = _DAT_50000008 & 0xff7f;
            goto LAB_07fca4c4;
          }
        }
      }
      WaitForInterrupt();
    }
LAB_07fca5a0:
    enableIRQinterrupts();
    *puVar23 = 200;
  } while( true );
}

