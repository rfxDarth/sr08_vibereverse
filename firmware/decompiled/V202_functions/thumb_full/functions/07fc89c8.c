/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: ram */

void FUN_07fc89c8(void)

{
  byte bVar1;
  byte bVar2;
  undefined2 uVar3;
  ushort uVar4;
  undefined4 *puVar5;
  int *piVar6;
  code *pcVar7;
  ushort *puVar8;
  char cVar9;
  undefined4 uVar10;
  int iVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  ushort uVar16;
  int iVar17;
  uint uVar18;
  uint uVar19;
  ushort *puVar20;
  short sVar21;
  undefined2 *puVar22;
  undefined2 *puVar23;
  uint *puVar24;
  undefined8 uVar25;
  uint uStack_4c;
  uint uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  puVar23 = DAT_07fc8d38;
  *DAT_07fc8d38 = 200;
  uStack_24 = 1;
  puVar23[1] = 1;
  *DAT_07fc8d3c = 8;
  puVar20 = DAT_07fc8d44;
  *DAT_07fc8d44 = *DAT_07fc8d44 & 0xfff8;
  if ((int)((uint)_DAT_5000002a << 0x16) < 0) {
    *puVar20 = (*puVar20 & 0xfff) + 0xa000;
    *puVar20 = *puVar20 & 0xffc7 | 0x40;
  }
  sVar21 = _DAT_50000002;
  if (_DAT_50000002 == 0) {
    sVar21 = (short)DAT_07fc8d48;
  }
  *(short *)(DAT_07fc8d4c + 0x3a) = sVar21;
  _DAT_50000022 = _DAT_50000022 | 1;
  FUN_07fc0194(0xd);
  _DAT_5000000a = _DAT_5000000a & 0xfffd | 1;
  do {
  } while (-1 < (int)((uint)_DAT_5000000a << 0x19));
  _DAT_50000002 = sVar21;
  FUN_07fc0194();
  puVar24 = DAT_07fc8d50;
  _DAT_5000000a = _DAT_5000000a & 0xfffc;
  do {
  } while (-1 < (int)((uint)_DAT_5000000a << 0x18));
  _DAT_50000022 = _DAT_50000022 & 0xfffe;
  *DAT_07fc8d50 = 0;
  _DAT_50000012 = _DAT_50000012 & 0xffbf;
  puVar24[5] = 0;
  puVar24[10] = DAT_07fc8d54;
  puVar24[0xb] = 0x10000;
  iVar11 = DAT_07fc8d4c;
  for (uStack_10 = 0; (int)uStack_10 < 100; uStack_10 = uStack_10 + 1) {
  }
  *puVar24 = 1;
  puVar23 = DAT_07fc8d58;
  *(undefined2 *)(iVar11 + 0x3c) = *DAT_07fc8d58;
  uVar3 = puVar23[1];
  *puVar24 = 0;
  *(undefined2 *)(iVar11 + 0x3e) = uVar3;
  _DAT_50000012 = _DAT_50000012 & 0xffbf;
  puVar24[5] = 0;
  puVar24[10] = DAT_07fc8d54;
  puVar24[0xb] = 0x10000;
  for (uStack_10 = 0; (int)uStack_10 < 100; uStack_10 = uStack_10 + 1) {
  }
  *puVar24 = *puVar24 & 0xfffffff8;
  _DAT_50000000 = _DAT_50000000 & 0xff7f;
  func_0x07f1e0de(DAT_07fc8d5c,0x798);
  func_0x07f1e0de(DAT_07fc8d60,0xa00);
  FUN_07fc16c6();
  func_0x07f1e0ac(DAT_07fc8d64,DAT_07fc8d68);
  *DAT_07fc8d6c = 0;
  *DAT_07fc8d70 = DAT_07fc8d74;
  *DAT_07fc8d78 = DAT_07fc8d7c;
  *DAT_07fc8d80 = DAT_07fc8d84;
  *DAT_07fc8d88 = 10;
  *DAT_07fc8d8c = 0;
  *DAT_07fc8d90 = 0x32;
  *DAT_07fc8d94 = 5;
  *DAT_07fc8d98 = 1;
  *DAT_07fc8d9c = 5;
  *DAT_07fc8da0 = 6;
  *DAT_07fc8da4 = 7;
  *DAT_07fc8da8 = 8;
  *DAT_07fc8dac = 0x26;
  *DAT_07fc8db0 = 0x26;
  puVar5 = DAT_07fc8db4;
  *DAT_07fc8db4 = DAT_07fc8d5c;
  FUN_07fc9dec();
  func_0x07f02982(1);
  puVar23 = DAT_07fc8d38;
  _DAT_50000010 = _DAT_50000010 & 0xfffb;
  do {
  } while (-1 < (int)((uint)_DAT_50000014 << 0x1e));
  _DAT_50000024 = (_DAT_50000024 & 0xffbf | 0xb0) & (ushort)DAT_07fc8db8 & 0xfff0 | 0x1c00;
  _DAT_50000012 = _DAT_50000012 & 0xfff7;
  _DAT_50000020 = _DAT_50000020 & 0xff7e;
  _DAT_50000008 = (_DAT_50000008 & 0xffcd | 0xc9) & 0xffbf;
  if ((_DAT_5000002a & 0x200) != 0) {
    DAT_07fc8d44[1] = 5;
  }
  puVar24 = DAT_07fc8dc0;
  _DAT_40000000 = _DAT_40000000 & DAT_07fc8dbc + 0x37U;
  *DAT_07fc8dc0 = (*DAT_07fc8dc0 & 0xffff81ff) + 0x2000;
  *puVar24 = *puVar24 | DAT_07fc8dc4 + 1U;
  func_0x07f022b4(*puVar5);
  iVar11 = DAT_07fc8dc8;
  *(undefined1 *)(DAT_07fc8dc8 + 4) = 0;
  *(undefined1 *)(iVar11 + 3) = 0;
  _DAT_40000000 = _DAT_40000000 | 0x100;
  FUN_07fc5664();
  FUN_07fca7a0();
  iVar11 = DAT_07fc8dcc;
  *(undefined1 *)(DAT_07fc8dcc + 100) = 0;
  *(undefined1 *)(DAT_07fc8dc8 + 3) = 0;
  *DAT_07fc8dd0 = 0;
  *(undefined4 *)(iVar11 + 0x58) = 0;
  *(undefined4 *)(iVar11 + 0x5c) = 0;
  *(undefined4 *)(iVar11 + 0x60) = 0;
  uVar10 = FUN_07fc8034(&uStack_10);
  iVar11 = DAT_07fc8dd4;
  *(undefined1 *)(DAT_07fc8dd4 + 0x48) = (undefined1)uStack_10;
  func_0x07f1e0ac(iVar11 + 0x49,uVar10);
  *(undefined2 *)(iVar11 + 0x6a) = 0;
  func_0x07f1be52(4,DAT_07fc8dd8);
  func_0x07f1beb6(4,0);
  *(undefined1 *)(DAT_07fc8d4c + 8) = 0;
  iVar11 = DAT_07fc8dd4;
  *(short *)(DAT_07fc8dd4 + 0x30) = (short)DAT_07fc8ddc;
  uVar10 = DAT_07fc8de0;
  *(undefined4 *)(iVar11 + 0x28) = DAT_07fc8de4;
  *(undefined4 *)(iVar11 + 0x2c) = uVar10;
  FUN_07fc6dec(&uStack_10);
  func_0x07f1e0ac(DAT_07fc8dd4 + 0x32,&uStack_10);
  iVar11 = DAT_07fc8dd4;
  *(undefined2 *)(DAT_07fc8dd4 + 0x3c) = 0x17;
  *(undefined4 *)(iVar11 + 0x38) = DAT_07fc8de8;
  iVar11 = DAT_07fc8d4c;
  *(undefined1 *)(DAT_07fc8d4c + 9) = 1;
  *(undefined1 *)(iVar11 + 0x14) = 0;
  iVar11 = DAT_07fc8dcc;
  *(undefined4 *)(DAT_07fc8dcc + 0x18) = 0;
  *(undefined4 *)(iVar11 + 0x1c) = 0;
  *(undefined4 *)(iVar11 + 0x20) = 0;
  *(undefined4 *)(iVar11 + 0x24) = 0;
  *DAT_07fc8dec = 0;
  for (iVar11 = -0x14; iVar11 != 0; iVar11 = iVar11 + 2) {
    iVar17 = DAT_07fc8dcc + iVar11;
    *(undefined1 *)(iVar17 + 0x7b) = 4;
    *(undefined1 *)(iVar17 + 0x7a) = 0xff;
  }
  *(undefined1 *)((int)DAT_07fc91ec + 3) = 1;
  *DAT_07fc91f0 = 1;
  puVar20 = DAT_07fc91f4;
  uStack_28 = 0;
  FUN_07fc3df8(DAT_07fc91f4,0x2d000,0x7e);
  uVar12 = DAT_07fc91f8;
  if (((uint)*puVar20 != DAT_07fc91f8 + 0x24) || (puVar20[0x3e] != DAT_07fc91fc)) {
    func_0x07f1e0de(puVar20 + 1,0x7a);
  }
  FUN_07fc8924();
  _DAT_50000016 = 0;
  _DAT_50000022 = _DAT_50000022 & 0xffbf | 0xa0;
  *puVar23 = 200;
  puVar22 = DAT_07fc9200;
  *DAT_07fc9200 = 8;
  _DAT_50000012 = _DAT_50000012 & 0xff7f;
  if (*DAT_07fc9204 == DAT_07fc9208) {
    *(undefined1 *)(DAT_07fc920c + 0xd) = 1;
  }
  if (*DAT_07fc9204 == uVar12) {
    *(undefined1 *)(DAT_07fc920c + 0xd) = 2;
  }
  uVar12 = DAT_07fc9214 + DAT_07fc9210 + DAT_07fc9218;
  while ((((int)((uint)_DAT_50000008 << 0x18) < 0 && ((_DAT_40000030 & 0x8000) == 0)) &&
         ((*DAT_07fc91ec & 1) == 0))) {
    func_0x07f1c3da();
    iVar11 = DAT_07fc920c;
    if (*(char *)(DAT_07fc920c + 3) == '\x04') {
      FUN_07fca7a0();
      uStack_10 = 0;
      iVar17 = func_0x07f0cff4(&uStack_10,4);
      piVar6 = DAT_07fc921c;
      if (iVar17 != 0) {
        *DAT_07fc921c = 1;
        uVar13 = _DAT_4000001c;
        do {
        } while (*piVar6 != 0);
        uVar18 = *(uint *)(iVar11 + 0x44);
        if (_DAT_4000001c < uVar18) {
          *(undefined4 *)(iVar11 + 0x44) = 0;
          uVar18 = 0;
        }
        if (*(char *)(iVar11 + 1) == '\x01') {
          *(uint *)(iVar11 + 0x44) = uVar13;
          *(undefined1 *)(iVar11 + 1) = 0;
          uVar13 = FUN_07fc6e04();
LAB_07fc8f18:
          *(short *)(iVar11 + 0x38) = (short)uVar13;
          iVar17 = FUN_07fc16f8();
          if (iVar17 == 0) {
            *(undefined1 *)(iVar11 + 1) = 1;
          }
        }
        else if (DAT_07fc9220 < uVar13 - uVar18) {
          *(uint *)(iVar11 + 0x44) = uVar13;
          uVar13 = FUN_07fc6e04();
          uVar4 = *(ushort *)(iVar11 + 0x38);
          uVar16 = uVar4 - (short)uVar13;
          if (uVar4 < uVar13) {
            uVar16 = (short)uVar13 - uVar4;
          }
          if (0x17 < uVar16) goto LAB_07fc8f18;
        }
      }
    }
    iVar17 = DAT_07fc9224;
    if (*(char *)(iVar11 + 0xc) == '\0') {
      *(undefined4 *)(DAT_07fc9224 + 0x60) = 0;
      *(undefined4 *)(iVar17 + 100) = 0x10;
      *(undefined4 *)(iVar17 + 0x68) = 2;
      iVar11 = DAT_07fc9228;
      *(int *)(iVar17 + 0x6c) = DAT_07fc9228;
      *(undefined4 *)(iVar17 + 0x40) = 0x14;
      *(undefined4 *)(iVar17 + 0x44) = DAT_07fc922c;
      *(undefined4 *)(iVar17 + 0x48) = 0;
      *(undefined4 *)(iVar17 + 0x4c) = 0;
      *(undefined4 *)(iVar17 + 0x50) = 8;
      *(undefined4 *)(iVar17 + 0x54) = 0x14;
      *(undefined4 *)(iVar17 + 0x58) = DAT_07fc9230;
      *(undefined4 *)(iVar17 + 0x5c) = 0;
      iVar15 = DAT_07fc9234 + 0x34;
      *(undefined4 *)(iVar17 + 0x20) = 0;
      *(undefined4 *)(iVar17 + 0x24) = 0;
      *(undefined4 *)(iVar17 + 0x28) = 4;
      *(undefined4 *)(iVar17 + 0x2c) = 2;
      *(int *)(iVar17 + 0x30) = iVar15;
      *(undefined4 *)(iVar17 + 0x34) = 0;
      *(undefined4 *)(iVar17 + 0x38) = 0;
      *(undefined4 *)(iVar17 + 0x3c) = 0x10;
      iVar17 = DAT_07fc9238;
      *(undefined4 *)(DAT_07fc9238 + 0x14) = 0;
      *(undefined4 *)(iVar17 + 0x18) = 0;
      *(undefined4 *)(iVar17 + 0x1c) = 0x20;
      *(undefined4 *)(iVar17 + 0x20) = 1;
      *(int *)(iVar17 + 0x24) = iVar11 + 0x20;
      puVar5 = DAT_07fc9240;
      iVar11 = DAT_07fc923c + 0x46;
      *DAT_07fc9240 = 0;
      puVar5[1] = 0;
      puVar5[2] = 4;
      puVar5[3] = 2;
      puVar5[4] = iVar11;
      iVar11 = DAT_07fc9234 + 0x3c;
      *(undefined4 *)(iVar17 + 0x3c) = 0;
      *(undefined4 *)(iVar17 + 0x40) = 0;
      *(undefined4 *)(iVar17 + 0x44) = 8;
      *(undefined4 *)(iVar17 + 0x48) = 1;
      *(int *)(iVar17 + 0x4c) = iVar11;
      FUN_07fc3df8(iVar17 + 0x50,0x61000,0x14,0);
      FUN_07fc757c();
      *(undefined1 *)(DAT_07fc9244 + 6) = 0;
      *(undefined4 *)(DAT_07fc920c + 0x68) = 0;
      iVar11 = DAT_07fc9248;
      func_0x07f1e0de(DAT_07fc9248,0xd4);
      *(undefined1 *)(iVar11 + 0x8a) = 0x32;
      *(undefined1 *)(iVar11 + 0x89) = 0xaa;
      *(undefined2 *)(iVar11 + 0x94) = 0x3200;
      *(undefined2 *)(iVar11 + 0x36) = 0x3e;
      iVar17 = DAT_07fc924c;
      *(undefined4 *)(DAT_07fc924c + 0x40) = 0;
      *(undefined4 *)(iVar17 + 0x44) = 1;
      *(undefined4 *)(iVar17 + 0x48) = 9;
      *(undefined4 *)(iVar17 + 0x4c) = 1;
      *(undefined4 *)(iVar17 + 0x50) = 1;
      *(undefined4 *)(iVar17 + 0x54) = 0x7b;
      *(undefined4 *)(iVar17 + 0x2c) = DAT_07fc9250;
      uStack_10 = 0;
      FUN_07fc3df8(&uStack_10,0x3c000,4,0);
      if (uStack_10 != -1) {
        FUN_07fc3df8(iVar11 + 0x30,0x3c000,0x70,0);
        *(undefined4 *)(iVar17 + 0x2c) = *(undefined4 *)(iVar11 + 0x30);
      }
      cVar9 = (char)DAT_07fc9204[1];
      uVar13 = (uint)(char)*(byte *)((int)DAT_07fc9204 + 3);
      bVar1 = *(byte *)((int)DAT_07fc9204 + 9);
      uVar4 = DAT_07fc9204[4];
      bVar2 = *(byte *)((int)DAT_07fc9204 + 7);
      uVar16 = DAT_07fc9204[3];
      if (((cVar9 == -0x55) || (cVar9 == ';')) &&
         (uVar18 = (uint)*(byte *)((int)DAT_07fc9204 + 5) * 0x100 + (uint)(byte)DAT_07fc9204[2],
         uVar18 <= DAT_07fc9254)) {
        if (*(byte *)((int)DAT_07fc9204 + 3) < 0x65) {
          uVar14 = *(uint *)(DAT_07fc9248 + 0x9c);
          uVar19 = uVar13;
          if ((uVar14 == uVar13) ||
             ((uVar14 < 0x65 && (uVar19 = uVar14, *(ushort *)(DAT_07fc9248 + 0x98) == DAT_07fc9258))
             )) {
            *(undefined1 *)(DAT_07fc920c + 0x20) = 1;
            *(uint *)(DAT_07fc923c + 0x2c) = uVar19;
          }
          FUN_07fc53c0(s_Ret__d__d_07fc925c,cVar9,uVar13);
          FUN_07fc53c0(s_1dba___d__d_07fc9268,*(undefined4 *)(DAT_07fc923c + 0x2c),
                       *(undefined4 *)(DAT_07fc9248 + 0x9c));
        }
        *(uint *)(DAT_07fc9248 + 0x44) = uVar18;
        *(uint *)(DAT_07fc924c + 0x2c) =
             (uint)(byte)uVar4 * 0x10000 + (uint)bVar1 * 0x1000000 + (uint)bVar2 * 0x100 +
             (uint)(byte)uVar16 + 3;
      }
      iVar11 = DAT_07fc924c;
      FUN_07fc8088(*(undefined4 *)(DAT_07fc924c + 0x2c),DAT_07fc924c + 0x40);
      piVar6 = DAT_07fc921c;
      *DAT_07fc921c = 1;
      *(undefined4 *)(iVar11 + 0x28) = *(undefined4 *)(iVar11 + 0x2c);
      do {
      } while (*piVar6 != 0);
      *(undefined4 *)(iVar11 + 0x3c) = 0;
      *(uint *)(iVar11 + 0x38) = _DAT_4000001c;
      pcVar7 = DAT_07fc927c;
      (*DAT_07fc927c)(5,1000,1,DAT_07fc9278);
      (*pcVar7)(3,1,1,DAT_07fc9280);
      (*pcVar7)(2,0x14,1,DAT_07fc9284);
      (*pcVar7)(1,500,1,DAT_07fc9288);
      (*pcVar7)(4,1000,1,DAT_07fc928c);
      (*pcVar7)(7,10,1,DAT_07fc9290);
      (*pcVar7)(8,1,1,DAT_07fc9294);
      (*pcVar7)(6,500,1,DAT_07fc9298);
      FUN_07fc381c(1);
      FUN_07fc381c(0);
      pcVar7 = DAT_07fc92a8;
      (*DAT_07fc92a8)(s_version__d_07fc929c,0xca);
      FUN_07fc20f8();
      uStack_c = 0;
      uStack_10 = 0;
      FUN_07fc3df8(&uStack_10,DAT_07fc92ac,6,0);
      (*pcVar7)(s_nvds_mac_0x_x_0x_x_0x_x_0x_x_0x__07fc92b0,uStack_c._1_1_,uStack_c & 0xff,
                uStack_10._3_1_,uStack_10 >> 0x10 & 0xff,uStack_10 >> 8 & 0xff,uStack_10 & 0xff);
      iVar11 = DAT_07fc920c;
      (*pcVar7)(s_rsf__d_07fc92d8,*(undefined1 *)(DAT_07fc920c + 0xd));
      if (*(char *)(iVar11 + 0xd) == '\x01') {
        cVar9 = '\x1e';
      }
      else {
        cVar9 = (*(char *)(iVar11 + 0xd) == '\x02') * ' ';
      }
      FUN_07fc3ac4(cVar9);
      *(undefined1 *)(iVar11 + 0xc) = 1;
    }
    uVar10 = uStack_24;
    if (((*DAT_07fc92e0 != '\x01') && (uVar10 = 1, *(char *)(iVar11 + 0x34) == '\0')) &&
       (uVar10 = 100, *(char *)(iVar11 + 0x28) != '\0')) {
      uVar10 = 0xb;
    }
    func_0x07f1c054(0x413,4,uVar10);
    cVar9 = *(char *)(iVar11 + 0xe);
    if ((int)((uint)*DAT_07fc92e4 << 0x1a) < 0) {
      if (cVar9 != '\x02') {
        uVar13 = 0x2000;
        if (cVar9 != '\0') goto LAB_07fc9350;
        *(undefined1 *)(iVar11 + 0xe) = 2;
        piVar6 = DAT_07fc9684;
        *DAT_07fc9684 = 1;
        do {
        } while (*piVar6 != 0);
        *(uint *)(iVar11 + 0x6c) = _DAT_4000001c;
      }
      piVar6 = DAT_07fc9684;
      *DAT_07fc9684 = 1;
      do {
      } while (*piVar6 != 0);
      uVar18 = _DAT_4000001c;
      if (_DAT_4000001c < *(uint *)(iVar11 + 0x6c)) {
        uVar18 = _DAT_4000001c + 0x5000000;
      }
      uVar13 = 0x2000;
      if (DAT_07fc970c <= uVar18 - *(uint *)(iVar11 + 0x6c)) {
        FUN_07fc521c(DAT_07fc9710,DAT_07fc9714,0x145);
        uStack_10 = 8;
        FUN_07fc2ef8(DAT_07fc9688,&uStack_10);
        *(undefined1 *)(iVar11 + 0xe) = 4;
        uVar13 = 0x2000;
      }
    }
    else {
      if (cVar9 == '\x02') {
        FUN_07fc521c(DAT_07fc92e8,DAT_07fc92ec,0x14f);
        uStack_10 = 1;
        FUN_07fc2ef8(DAT_07fc9240,&uStack_10);
      }
      uVar13 = 0;
      *(undefined1 *)(iVar11 + 0xe) = 0;
    }
LAB_07fc9350:
    _DAT_50000004 = _DAT_50000004 | 0x10;
    *(undefined4 *)(iVar11 + 0x48) = DAT_07fc9718;
    iVar11 = DAT_07fc968c;
    *(undefined2 *)(DAT_07fc968c + 2) = 1;
    puVar20 = (ushort *)(iVar11 + 0x12);
    for (uVar18 = uStack_28; puVar8 = DAT_07fc975c, uVar18 != 0x20; uVar18 = uVar18 + 8) {
      *puVar20 = (*puVar20 & 0xff00) + (ushort)(byte)(uVar13 >> (uVar18 & 0xff));
      puVar20[-4] = (puVar20[-4] & 0xff00) + (ushort)(byte)(0x2000 >> (uVar18 & 0xff));
      puVar20 = puVar20 + 1;
    }
    uVar4 = (ushort)DAT_07fc9734;
    DAT_07fc975c[0xb] = DAT_07fc975c[0xb] & uVar4;
    puVar8[7] = puVar8[7] & uVar4;
    puVar8[2] = 1;
    iVar17 = 0;
    puVar8[4] = 0;
    *puVar8 = *puVar8 & 0xffc0;
    *puVar8 = *puVar8 | 0x80;
    *DAT_07fc9760 = *DAT_07fc9760 & 0xffffff80 | 0x80;
    *DAT_07fc976c = 0x10000;
    uStack_10 = 0;
    iVar11 = FUN_07fc3030(DAT_07fc9750,&uStack_10);
    puVar23 = DAT_07fc971c;
    if (iVar11 == 0) {
      FUN_07fc2fd8(DAT_07fc9750);
      uVar13 = uStack_10;
      FUN_07fc521c(s_k__d_07fc9770,uStack_10);
      iVar11 = DAT_07fc9724;
      if ((uVar13 == 8) || (uVar13 == 1)) {
        *(undefined2 *)(DAT_07fc9724 + 0x40) = 6;
      }
      iVar15 = 0;
      do {
        puVar23 = DAT_07fc971c;
        if (iVar15 + 4 == 0x90) goto LAB_07fc93dc;
        puVar20 = *(ushort **)(DAT_07fc9778 + iVar15);
        iVar15 = iVar15 + 4;
      } while (*puVar20 != (ushort)*(byte *)(iVar11 + 0xb));
      puVar24 = *(uint **)(puVar20 + 8);
      for (uVar18 = (uint)puVar20[1]; uVar18 != 0; uVar18 = uVar18 - 1) {
        if ((*puVar24 & uVar13) != 0) {
          if ((code *)puVar24[2] != (code *)0x0) {
            (*(code *)puVar24[2])(uVar13);
          }
          puVar23 = DAT_07fc971c;
          if ((ushort)puVar24[1] != DAT_07fc977c) {
            FUN_07fc3ac4();
            puVar23 = DAT_07fc971c;
          }
          break;
        }
        puVar24 = puVar24 + 3;
      }
    }
LAB_07fc93dc:
    for (; puVar22 = DAT_07fc9720, iVar17 != 0xc0; iVar17 = iVar17 + 0x10) {
      if (*(char *)(DAT_07fc9768 + iVar17) == '\x01') {
        uVar18 = FUN_07fc432c();
        iVar11 = DAT_07fc9768 + iVar17;
        uVar13 = uVar18;
        if (uVar18 < *(uint *)(iVar11 + 8)) {
          uVar13 = uVar18 + 0x5000000;
        }
        if (*(uint *)(iVar11 + 4) <= uVar13 - *(uint *)(iVar11 + 8)) {
          *(uint *)(iVar11 + 8) = uVar18;
          (**(code **)(iVar11 + 0xc))();
          if (*(char *)(iVar11 + 1) == '\0') {
            *(undefined1 *)(DAT_07fc9768 + iVar17) = 0;
          }
        }
      }
    }
    if (*(int *)(DAT_07fc9724 + 0x78) == 0) break;
    WaitForInterrupt();
    *puVar23 = 200;
  }
  disableIRQinterrupts();
  if ((char)DAT_07fc9744[2] == '\x02') {
    uStack_10 = 0;
  }
  else {
    uStack_10 = *(uint *)(*DAT_07fc9730 + 0x28);
  }
  if (((puVar22[3] & 1) == 0) && (iVar11 = func_0x07f1b74e(), iVar11 != 0)) {
    if (*(char *)((int)DAT_07fc9744 + 3) != '\0') {
      if ((_DAT_50000014 & 1) != 0) {
LAB_07fc9614:
        _DAT_50000010 = _DAT_50000010 | 4;
        *DAT_07fc9764 = *DAT_07fc9764 | 4;
        puVar5 = DAT_07fc9728;
        _DAT_50000010 = _DAT_50000010 | 2;
        if (*DAT_07fc974c == '\x01') {
          _DAT_50000012 = _DAT_50000012 & 0xffcf;
        }
        else {
          _DAT_50000012 = _DAT_50000012 & 0xffdb;
          *DAT_07fc9728 = 0;
          _DAT_50000012 = _DAT_50000012 & 0xffbf;
          puVar5[5] = 0;
          puVar5[10] = DAT_07fc972c;
          puVar5[0xb] = 0x10000;
          for (uStack_10 = 0; (int)uStack_10 < 100; uStack_10 = uStack_10 + 1) {
          }
          _DAT_50000012 = _DAT_50000012 | 0x10;
          puVar5[5] = (uVar12 >> 2) - 1;
          _DAT_50000000 = _DAT_50000000 & 0xff7f;
        }
        _DAT_50000010 = _DAT_50000010 | 0xf00;
        _DAT_50000022 = _DAT_50000022 & (ushort)DAT_07fc9798 | 1;
        FUN_07fc0194(0xd);
        puVar22 = DAT_07fc9720;
        _DAT_5000000a = _DAT_5000000a & 0xfffd | 1;
        do {
        } while (-1 < (int)((uint)_DAT_5000000a << 0x19));
        _DAT_50000002 = 0;
        if ((int)((uint)_DAT_50000014 << 0x1a) < 0) {
          DAT_07fc9720[-1] = 8;
        }
        WaitForInterrupt();
        if ((int)((uint)_DAT_50000014 << 0x1a) < 0) {
          *puVar22 = 8;
        }
        *DAT_07fc9764 = *DAT_07fc9764 & 0xfffffffb;
        goto LAB_07fc96f8;
      }
      if (*DAT_07fc9744 == 0) {
        if (*(int *)(DAT_07fc9780 + 0x28) != 0) {
          uStack_10 = *(uint *)(*DAT_07fc9730 + 0x28);
        }
        iVar11 = func_0x07f1c164(&uStack_10,(char)DAT_07fc9744[1]);
        if (((iVar11 != 0) && (-1 < _DAT_40000010 << 0x19)) &&
           (iVar11 = func_0x07f0cff4(&uStack_10,(char)DAT_07fc9744[1]), iVar11 != 0)) {
          if (uStack_10 == 0) {
            uStack_4c = 0;
          }
          else if ((uint)(_DAT_40000020 + DAT_07fc9738) < 0xdb) {
            uStack_4c = uStack_10 - 1;
            uStack_10 = uStack_4c;
          }
          else {
            uStack_4c = uStack_10;
          }
          iVar17 = *(int *)(DAT_07fc9748 + 8);
          iVar11 = func_0x07f1dfb8(iVar17 * (DAT_07fc9754 + 0x9e) + DAT_07fc9758,DAT_07fc9784);
          iVar17 = func_0x07f1dfb8(DAT_07fc9788 * iVar17 + DAT_07fc9758,DAT_07fc9784);
          if (*DAT_07fc974c == '\x02') {
            iVar15 = 0x23;
          }
          else {
            iVar15 = 0x12;
          }
          iVar15 = iVar15 + iVar11;
          _DAT_4000003c =
               (((_DAT_4000003c & DAT_07fc978c | iVar11 - iVar17) & DAT_07fc9790 | iVar15 * 0x400) &
               DAT_07fc9740) + iVar11 * 0x200000;
          if (DAT_07fc9784 <= uStack_4c) goto LAB_07fc9700;
          uVar25 = func_0x07f1e00c(*(undefined4 *)(DAT_07fc9748 + 0x50),
                                   *(undefined4 *)(DAT_07fc9748 + 0x54),uStack_4c,0);
          iVar11 = ((uint)uVar25 >> 0x14) + (int)((ulonglong)uVar25 >> 0x20) * 0x1000 + -1;
          if (iVar11 != iVar15 + 1) {
            iVar15 = iVar11;
          }
          func_0x07f08f9e(iVar15,(char)DAT_07fc9744[2] != '\0');
          (**(code **)(DAT_07fc9794 + 0x2c))();
          puVar24 = DAT_07fc973c;
          do {
          } while ((_DAT_40000030 & 0x8000) == 0);
          do {
          } while ((*DAT_07fc973c & 0x100) == 0);
          *DAT_07fc973c = *DAT_07fc973c & 0xffffff7f;
          uVar4 = DAT_07fc9720[4];
          if (uVar4 < 0x46) {
            DAT_07fc9720[4] = 0x46;
            *(uint *)(DAT_07fc9724 + 0x50) = 0x46 - (uint)uVar4;
          }
          func_0x07f02326();
          *(uint *)(DAT_07fc9724 + 0x54) = puVar24[2];
          do {
          } while (-1 < (int)(*puVar24 << 0x18));
          _DAT_50000008 = _DAT_50000008 & 0xff7f;
          goto LAB_07fc9614;
        }
      }
    }
    WaitForInterrupt();
  }
LAB_07fc96f8:
  enableIRQinterrupts();
  *puVar23 = 200;
  FUN_07fc8e94();
LAB_07fc9700:
  *puVar23 = 200;
  *DAT_07fc9720 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

