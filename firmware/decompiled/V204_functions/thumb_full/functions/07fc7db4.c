/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc7db4(undefined4 param_1,byte *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined1 *puVar7;
  byte *pbVar8;
  uint uVar9;
  undefined4 uVar10;
  int iVar11;
  byte bVar12;
  uint uVar13;
  uint uStack_24;
  
  uVar3 = func_0x07f1bf1a(param_3);
  iVar4 = FUN_07fcb080(0x26);
  if ((uVar3 & 1) != 0) {
    return 2;
  }
  uVar13 = (uint)*param_2;
  if (uVar13 < 9) {
    iVar5 = func_0x07f14c80(uVar13);
    uVar13 = (uint)*param_2;
    if (iVar5 != _DAT_07fc7f4c) {
      iVar5 = FUN_07fcb080(0x26);
      bVar12 = param_2[3];
      if (bVar12 == 4) {
        cVar2 = '\0';
        uStack_24 = 2;
        uVar1 = 8;
        uVar10 = 0x11;
      }
      else if (bVar12 == 2) {
        cVar2 = '\0';
        uStack_24 = 1;
        uVar1 = 8;
        uVar10 = 0xc;
      }
      else if (bVar12 == 0) {
        uStack_24 = 0x40 << param_2[6] & 0xffff;
        cVar2 = '\x01';
        uVar1 = 0x2d;
        uVar10 = 0x14;
      }
      else {
        uVar10 = 0x17;
        uVar1 = 0;
        cVar2 = '\0';
        uStack_24 = 0;
      }
      bVar12 = param_2[6];
      uVar9 = (uint)param_2[2];
      iVar6 = FUN_07fc75d4(iVar5,uVar9,uVar10);
      if (iVar6 == 0) {
        if ((uStack_24 != 0) && (uVar9 < *(byte *)(iVar5 + 0x21))) {
          if ((bVar12 < *(byte *)(iVar5 + 4 + uVar9 * 0x16 + 0x13)) &&
             ((uStack_24 & *(ushort *)(iVar5 + 4 + uVar9 * 0x16)) == 0)) {
            bVar12 = 0x8c;
            goto LAB_07fc7f22;
          }
        }
        bVar12 = 0x81;
      }
      else if (uVar1 < *(ushort *)(param_2 + 4)) {
        bVar12 = 0x8d;
      }
      else {
        iVar11 = iVar5 + 4 + uVar9 * 0x16;
        if ((uStack_24 & *(ushort *)(iVar11 + uVar13 * 2 + 2)) == 0) {
          bVar12 = 0x8a;
        }
        else {
          if ((cVar2 == *(char *)(iVar11 + 0x15)) ||
             (-1 < (int)((uint)*(ushort *)(iVar5 + 4 + uVar9 * 0x16) << 0x1d))) {
            puVar7 = (undefined1 *)
                     func_0x07f1bbb0(0xc10,uVar13 * 0x100 + 8,
                                     (uint)(int)*(short *)(iVar5 + 2) >> 0xf & uVar13 * 0x100 |
                                     _DAT_07fc7f50 & (int)*(short *)(iVar5 + 2),
                                     *(ushort *)(param_2 + 4) + 8);
            *(short *)(puVar7 + 4) = (short)iVar6;
            *puVar7 = 0x12;
            *(undefined2 *)(puVar7 + 6) = *(undefined2 *)(param_2 + 4);
            func_0x07f1e0ac(puVar7 + 8,param_2 + 7,*(undefined2 *)(param_2 + 4));
            func_0x07f1bbe2(puVar7);
            func_0x07f1beb6(param_3,uVar3 | 1);
            return 0;
          }
          bVar12 = 0x89;
        }
      }
      goto LAB_07fc7f22;
    }
  }
  if (uVar13 < 9) {
    bVar12 = 0x89;
  }
  else {
    bVar12 = 0x40;
  }
LAB_07fc7f22:
  if (*(char *)(iVar4 + 0x22) != '\0') {
    *(char *)(iVar4 + 0x22) = *(char *)(iVar4 + 0x22) + -1;
  }
  pbVar8 = (byte *)func_0x07f1bbb0(_DAT_07fc7f54,param_4,param_3,2);
  *pbVar8 = *param_2;
  pbVar8[1] = bVar12;
  func_0x07f1bbe2();
  return 0;
}

