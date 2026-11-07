/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined2 FUN_07fc73d0(int param_1)

{
  undefined2 uVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  undefined4 uVar5;
  ushort extraout_r1;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  undefined4 *puVar9;
  uint uVar10;
  uint uVar11;
  byte *pbVar12;
  int iVar13;
  undefined4 local_3c;
  byte local_38 [2];
  byte local_36;
  byte local_18;
  byte local_17;
  byte local_16;
  
  uVar2 = FUN_07fc7604(0x40);
  if (uVar2 < (uint)(param_1 << 1)) {
    uVar1 = 0;
  }
  else {
    func_0x07f1dfe4(uVar2 - param_1,param_1);
    iVar13 = DAT_07fc7560;
    uVar11 = (uVar2 - param_1) - (uint)extraout_r1;
    if (*(char *)(DAT_07fc7560 + 0x12) == '\x01') {
      FUN_07fc6fdc(0x41,&local_18,3);
      *(undefined1 *)(iVar13 + 0x12) = 0;
    }
    uVar6 = uVar11 * 3 & 0xffff;
    if (uVar6 < 0x1f) {
      pbVar12 = local_38;
      local_3c = uVar11;
      FUN_07fc6fdc(0x41,pbVar12,uVar11 * 3 & 0xff);
      puVar3 = (uint *)(DAT_07fc7574 + 0x104);
      for (uVar8 = uVar11 & 0xffff; iVar13 = DAT_07fc7560, uVar8 != 0; uVar8 = uVar8 - 1) {
        uVar10 = (uint)pbVar12[2] << 0x10;
        if ((int)((uint)pbVar12[2] << 0x1b) < 0) {
          uVar10 = uVar10 | *pbVar12 | (uint)pbVar12[1] << 8 | DAT_07fc7578;
        }
        else {
          uVar10 = (uVar10 & 0x1f0000) + (uint)*pbVar12 | (uint)pbVar12[1] << 8;
        }
        *puVar3 = uVar10;
        puVar3 = puVar3 + 1;
        pbVar12 = pbVar12 + 3;
      }
      uVar6 = (local_38[uVar6 - 1] & 0x7f) >> 5;
      uVar8 = (local_36 & 0x7f) >> 5;
      if (uVar8 != 0) {
        puVar9 = (undefined4 *)(DAT_07fc7574 + 0x104);
        local_3c = (local_3c - param_1) + uVar8;
        uVar7 = local_3c & 0xffff;
        for (uVar10 = uVar7; uVar10 != 0; uVar10 = uVar10 - 1) {
          *puVar9 = puVar9[param_1 - uVar8];
          puVar9 = puVar9 + 1;
        }
        puVar9 = (undefined4 *)(uVar7 * 4 + DAT_07fc7574 + 0x104);
        for (; uVar7 < (uVar11 & 0xffff); uVar7 = uVar7 + 1) {
          *puVar9 = 0;
          puVar9 = puVar9 + 1;
        }
      }
      if ((int)uVar6 < param_1 + -1) {
        uVar8 = local_3c & 0xffff;
        uVar11 = uVar8 + param_1 + ~uVar6;
        iVar4 = ~uVar6 + param_1;
        for (uVar6 = uVar8; uVar6 < iVar4 + uVar8; uVar6 = uVar6 + 1) {
          FUN_07fc6fdc(0x41,&local_18,3);
        }
        if (uVar11 <= uVar8) {
          uVar11 = uVar8;
        }
        *(uint *)(DAT_07fc7574 + uVar11 * 4 + 0x104) =
             (uint)local_17 * 0x100 + (uint)local_18 + (local_16 & 0x1f) * 0x10000;
        iVar13 = DAT_07fc7560;
      }
      else {
        iVar4 = ~uVar6 + param_1;
      }
      uVar1 = func_0x07f1dfb8(iVar4 + local_3c & 0xffff,param_1);
    }
    else {
      FUN_07fc521c(s_3918_f_e__d_07fc7564);
      uVar1 = 0;
    }
    if (uVar2 == 0x40) {
      uVar5 = FUN_07fc7604(0x3d);
      FUN_07fc78d4(0x3d,0);
      FUN_07fc4344(5);
      FUN_07fc78d4(0x3d,uVar5);
      *(undefined1 *)(iVar13 + 0x12) = 1;
    }
  }
  return uVar1;
}

