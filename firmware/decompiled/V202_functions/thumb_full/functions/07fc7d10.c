/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7d10(void)

{
  undefined4 *puVar1;
  char cVar2;
  byte bVar3;
  undefined2 *puVar4;
  undefined2 uVar5;
  uint uVar6;
  uint extraout_r1;
  int iVar7;
  int iVar8;
  code *pcVar9;
  char cVar10;
  int iVar11;
  byte *pbVar12;
  uint uVar13;
  undefined2 local_18 [2];
  
  cVar2 = *(char *)(DAT_07fc7eb8 + 0x95);
  local_18[0] = 500;
  uVar6 = FUN_07fc432c();
  if (*(char *)(DAT_07fc7ebc + 0x34) == '\x01') {
    bVar3 = *(byte *)(DAT_07fc7ebc + 0x2c);
    if (-1 < (char)bVar3) {
      DAT_07fc7ec4[3] = DAT_07fc7ec4[3] & 0xfffe;
      iVar8 = DAT_07fc7ec0;
      uVar13 = (uint)*(byte *)(DAT_07fc7ec8 + (uint)bVar3 * 2 + 1);
      iVar7 = (uint)*(byte *)(DAT_07fc7ec8 + (uint)bVar3 * 2) * 0x20;
      *(short *)(iVar7 + DAT_07fc7ec0) = (short)(1 << uVar13);
      *(undefined2 *)(iVar8 + uVar13 * 2 + iVar7 + 4) = 0x300;
      pbVar12 = DAT_07fc7ecc;
      for (iVar8 = 0; iVar8 != 0xe; iVar8 = iVar8 + 2) {
        *(short *)(DAT_07fc7ec0 + (uint)pbVar12[iVar8] * 0x20 + 2) =
             (short)(1 << pbVar12[iVar8 + 1]);
      }
    }
    func_0x07f1dfe4((int)(char)(bVar3 + 1),6);
    iVar8 = DAT_07fc7ebc;
    *(char *)(DAT_07fc7ebc + 0x2c) = (char)extraout_r1;
    iVar7 = DAT_07fc7ed0;
    uVar13 = extraout_r1;
    if ((extraout_r1 & 0xff) == 0) {
      uVar13 = uVar6;
      if (uVar6 < *(uint *)(DAT_07fc7ed0 + 0x3c)) {
        uVar13 = uVar6 + 0x5000000;
      }
      if (0x7c < uVar13 - *(uint *)(DAT_07fc7ed0 + 0x3c) >> 2) {
        *(char *)(iVar8 + 0x30) = *(char *)(iVar8 + 0x30) + '\x01';
        *(uint *)(iVar7 + 0x3c) = uVar6;
      }
      uVar13 = 0;
      *(undefined2 *)(iVar7 + 0x44) = 0;
      *(undefined4 *)(iVar7 + 0x40) = 0;
      iVar7 = DAT_07fc7ebc;
      iVar11 = 0;
      do {
        if (iVar11 + 4 == 0x90) goto LAB_07fc7da8;
        puVar1 = (undefined4 *)(DAT_07fc7ed4 + iVar11);
        iVar11 = iVar11 + 4;
      } while (*(ushort *)*puVar1 != (ushort)*(byte *)(iVar8 + 0xb));
      pcVar9 = *(code **)((ushort *)*puVar1 + 6);
      if (pcVar9 != (code *)0x0) {
        (*pcVar9)(local_18);
        uVar13 = (uint)*(byte *)(iVar7 + 0x2c);
      }
    }
LAB_07fc7da8:
    iVar8 = DAT_07fc7ec0;
    bVar3 = *(byte *)(DAT_07fc7ed0 + (char)uVar13 + 0x40);
    cVar10 = *(char *)(DAT_07fc7eb8 + 0x95);
    pbVar12 = DAT_07fc7ecc;
    for (uVar6 = 0; uVar6 != 7; uVar6 = uVar6 + 1) {
      uVar5 = (undefined2)(1 << pbVar12[1]);
      if ((bVar3 >> (uVar6 & 0xff) & 1) == 0) {
        *(undefined2 *)(iVar8 + (uint)*pbVar12 * 0x20 + 2) = uVar5;
      }
      else {
        *(undefined2 *)((uint)*pbVar12 * 0x20 + iVar8) = uVar5;
      }
      pbVar12 = pbVar12 + 2;
    }
    iVar7 = (char)uVar13 * 2;
    uVar6 = (uint)*(byte *)(DAT_07fc7ec8 + iVar7 + 1);
    iVar7 = (uint)*(byte *)(DAT_07fc7ec8 + iVar7) * 0x20;
    *(short *)(iVar7 + iVar8) = (short)(1 << uVar6);
    *(undefined2 *)(iVar8 + uVar6 * 2 + iVar7 + 4) = 0x318;
    puVar4 = DAT_07fc7ec4;
    DAT_07fc7ec4[3] = DAT_07fc7ec4[3] & 0xfffb;
    puVar4[2] = 0x31;
    puVar4[3] = puVar4[3] | 1;
    iVar8 = DAT_07fc8024;
    *(undefined1 *)(DAT_07fc8024 + 0x21) = 1;
    cVar10 = cVar10 << 1;
    if ((uVar13 & 0xff) != 5) {
      cVar10 = cVar2;
    }
    if (cVar10 < '\v') {
      cVar10 = '\n';
    }
    if ('a' < cVar10) {
      cVar10 = 'b';
    }
    *(byte *)(iVar8 + 0x22) = 100U - cVar10;
    uVar5 = func_0x07f1dfb8((uint)(byte)(100U - cVar10) * ((ushort)puVar4[2] + 1));
    *puVar4 = uVar5;
    puVar4[3] = puVar4[3] & 0xfffd;
  }
  return;
}

