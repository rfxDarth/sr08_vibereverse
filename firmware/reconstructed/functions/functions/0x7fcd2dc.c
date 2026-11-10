// rea decompile_all
// name: filter_accelerometer_sample_and_classify_level
// address: 0x7fcd2dc
// body: available
// range: 0x7fcd2dc-0x7fcd4ed inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined1 filter_accelerometer_sample_and_classify_level(int x_sample,int y_sample,int z_sample)

{
  short sVar1;
  short sVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined1 uVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  
  iVar6 = DAT_07fcd4f4;
  iVar11 = *(int *)(DAT_07fcd4f0 + 0x1c);
  iVar8 = *(int *)(iVar11 + 0xd34) + 1;
  *(int *)(iVar11 + 0xd34) = iVar8;
  if (iVar8 == iVar6) {
    *(undefined4 *)(iVar11 + 0xd34) = 0;
  }
  sVar2 = *(short *)(iVar11 + 0xd84);
  iVar6 = *(int *)(iVar11 + 0xd80);
  *(int *)(iVar11 + 0xd80) = x_sample >> 3;
  *(int *)(iVar11 + 0xd84) = iVar6;
  iVar6 = *(int *)(iVar11 + 0xd88);
  iVar8 = (int)(short)((short)(x_sample >> 3) - sVar2) -
          (iVar6 * -0x6d + *(int *)(iVar11 + 0xd8c) * 0x33 >> 6);
  *(int *)(iVar11 + 0xd90) = iVar8;
  *(int *)(iVar11 + 0xd88) = iVar8;
  *(int *)(iVar11 + 0xd8c) = iVar6;
  sVar2 = *(short *)(iVar11 + 0xd98);
  uVar7 = *(undefined4 *)(iVar11 + 0xd94);
  *(int *)(iVar11 + 0xd94) = iVar8;
  *(undefined4 *)(iVar11 + 0xd98) = uVar7;
  iVar9 = (int)(short)((short)iVar8 - sVar2) -
          (*(int *)(iVar11 + 0xd9c) * -0x53 + *(int *)(iVar11 + 0xda0) * 0x2a >> 6);
  *(int *)(iVar11 + 0xda4) = iVar9;
  *(int *)(iVar11 + 0xda0) = *(int *)(iVar11 + 0xd9c);
  *(int *)(iVar11 + 0xd9c) = iVar9;
  sVar2 = *(short *)(iVar11 + 0xdac);
  *(undefined4 *)(iVar11 + 0xdac) = *(undefined4 *)(iVar11 + 0xda8);
  *(int *)(iVar11 + 0xda8) = y_sample >> 3;
  iVar6 = *(int *)(iVar11 + 0xdb0);
  iVar8 = (int)(short)((short)(y_sample >> 3) - sVar2) -
          (iVar6 * -0x6d + *(int *)(iVar11 + 0xdb4) * 0x33 >> 6);
  *(int *)(iVar11 + 0xdb8) = iVar8;
  *(int *)(iVar11 + 0xdb0) = iVar8;
  *(int *)(iVar11 + 0xdb4) = iVar6;
  uVar7 = *(undefined4 *)(iVar11 + 0xdc0);
  uVar3 = *(undefined4 *)(iVar11 + 0xdbc);
  *(int *)(iVar11 + 0xdbc) = iVar8;
  *(undefined4 *)(iVar11 + 0xdc0) = uVar3;
  iVar8 = (int)(short)((short)iVar8 - (short)uVar7) -
          (*(int *)(iVar11 + 0xdc4) * -0x53 + *(int *)(iVar11 + 0xdc8) * 0x2a >> 6);
  *(int *)(iVar11 + 0xdcc) = iVar8;
  *(int *)(iVar11 + 0xdc8) = *(int *)(iVar11 + 0xdc4);
  *(int *)(iVar11 + 0xdc4) = iVar8;
  uVar7 = *(undefined4 *)(iVar11 + 0xdd4);
  uVar3 = *(undefined4 *)(iVar11 + 0xdd0);
  *(int *)(iVar11 + 0xdd0) = z_sample >> 3;
  *(undefined4 *)(iVar11 + 0xdd4) = uVar3;
  iVar6 = *(int *)(iVar11 + 0xdd8);
  iVar10 = (int)(short)((short)(z_sample >> 3) - (short)uVar7) -
           (iVar6 * -0x6d + *(int *)(iVar11 + 0xddc) * 0x33 >> 6);
  *(int *)(iVar11 + 0xde0) = iVar10;
  *(int *)(iVar11 + 0xdd8) = iVar10;
  *(int *)(iVar11 + 0xddc) = iVar6;
  uVar7 = *(undefined4 *)(iVar11 + 0xde8);
  uVar3 = *(undefined4 *)(iVar11 + 0xde4);
  *(int *)(iVar11 + 0xde4) = iVar10;
  *(undefined4 *)(iVar11 + 0xde8) = uVar3;
  iVar6 = *(int *)(iVar11 + 0xdec);
  iVar10 = (int)(short)((short)iVar10 - (short)uVar7) -
           (iVar6 * -0x53 + *(int *)(iVar11 + 0xdf0) * 0x2a >> 6);
  *(int *)(iVar11 + 0xdf4) = iVar10;
  *(int *)(iVar11 + 0xdec) = iVar10;
  *(int *)(iVar11 + 0xdf0) = iVar6;
  sVar2 = integer_square_root_newton_iteration((iVar9 >> 2) * (iVar9 >> 2) + (iVar8 >> 2) * (iVar8 >> 2) +
                       (iVar10 >> 2) * (iVar10 >> 2) & 0xffff);
  uVar4 = 4;
  iVar6 = *(int *)(DAT_07fcd4f0 + 0x1c);
  do {
    iVar8 = uVar4 * 2 + iVar6;
    *(undefined2 *)(iVar8 + 0xcee) = *(undefined2 *)(iVar8 + 0xcec);
    iVar8 = DAT_07fcd4f0;
    uVar4 = uVar4 - 1 & 0xffff;
  } while (uVar4 != 0);
  iVar6 = *(int *)(DAT_07fcd4f0 + 0x1c);
  *(short *)(iVar6 + 0xcee) = sVar2;
  sVar1 = *(short *)(iVar6 + 0xcf2);
  if ((((*(short *)(iVar6 + 0xcf6) < sVar1) && (*(short *)(iVar6 + 0xcf4) < sVar1)) &&
      (*(short *)(iVar6 + 0xcf0) < sVar1)) && (sVar2 < sVar1)) {
    uVar4 = 3;
    do {
      iVar11 = uVar4 * 2 + iVar6;
      *(undefined2 *)(iVar11 + 0xd14) = *(undefined2 *)(iVar11 + 0xd12);
      uVar4 = uVar4 - 1 & 0xffff;
    } while (uVar4 != 0);
    iVar6 = *(int *)(iVar8 + 0x1c);
    *(undefined2 *)(iVar6 + 0xd14) = *(undefined2 *)(iVar6 + 0xcf2);
  }
  iVar6 = *(int *)(iVar8 + 0x1c);
  if (*(short *)(iVar6 + 0xd1a) != 0) {
    *(short *)(iVar6 + 0xd30) =
         (short)((int)*(short *)(iVar6 + 0xd1a) + (int)*(short *)(iVar6 + 0xd18) +
                 (int)*(short *)(iVar6 + 0xd16) + (int)*(short *)(iVar6 + 0xd14) >> 2);
  }
  iVar8 = (int)*(short *)(iVar6 + 0xd30);
  if (iVar8 < (int)(uint)*(byte *)(DAT_07fcd4f0 + 0x2c)) {
    uVar5 = 0;
  }
  else if (iVar8 < 200) {
    uVar5 = 1;
  }
  else if (iVar8 - 200U < 300) {
    uVar5 = 2;
  }
  else {
    if (iVar8 < 500) goto L_filter_accelerometer_sample_and_classify_level_at_07fcd4e8;
    uVar5 = 3;
  }
  *(undefined1 *)(iVar6 + 0xd6f) = uVar5;
L_filter_accelerometer_sample_and_classify_level_at_07fcd4e8:
  return *(undefined1 *)(iVar6 + 0xd6f);
}

