/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Type propagation algorithm not settling */

undefined4 FUN_07fcd4f8(int param_1)

{
  char cVar1;
  byte bVar2;
  undefined1 *puVar3;
  ushort uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  int extraout_r1;
  int iVar10;
  int iVar11;
  uint uVar12;
  undefined1 *puVar13;
  undefined2 uStack_6e;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined2 uStack_5a;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50 [11];
  uint local_24;
  uint local_20;
  
  local_58 = 0;
  local_54 = 0;
  local_50[0] = 0;
  local_24 = 0;
  local_6c = 0;
  local_68 = 0;
  local_64 = 0;
  func_0x07f1e0de(local_50 + 1,0x18);
  puVar13 = *(undefined1 **)(DAT_07fcd888 + 4);
  *(undefined4 *)(puVar13 + 0x40) = *(undefined4 *)(puVar13 + 0x3c);
  iVar10 = *(int *)(puVar13 + 0x38);
  *(int *)(puVar13 + 0x3c) = iVar10;
  iVar5 = *(int *)(puVar13 + 0x34);
  *(int *)(puVar13 + 0x34) = param_1;
  *(int *)(puVar13 + 0x38) = iVar5;
  uVar6 = *(uint *)(puVar13 + 8);
  iVar11 = param_1;
  if ((0x26 < uVar6) &&
     (((DAT_07fcd88c < iVar5 - iVar10 && (DAT_07fcd88c < iVar5 - param_1)) ||
      ((iVar11 = iVar5, iVar5 - iVar10 < -DAT_07fcd88c && (iVar5 - param_1 < -DAT_07fcd88c)))))) {
    *(int *)(puVar13 + 0x38) = iVar10;
    iVar11 = iVar10;
  }
  iVar5 = iVar11;
  if (0x28 < uVar6) {
    iVar5 = (iVar11 - *(int *)(puVar13 + 0x44)) - *(int *)(puVar13 + 0x48);
    if (iVar5 < 0) {
      iVar5 = -iVar5;
    }
    if (DAT_07fcd88c < iVar5) {
      iVar5 = iVar11 - *(int *)(puVar13 + 0x48);
      *(int *)(puVar13 + 0x44) = iVar5;
    }
    else {
      iVar5 = *(int *)(puVar13 + 0x44);
    }
    iVar5 = iVar11 - iVar5;
  }
  *(int *)(puVar13 + 0x4c) = iVar11;
  *(int *)(puVar13 + 0x48) = iVar5;
  if (uVar6 == 0x28) {
    *(undefined4 *)(puVar13 + 0xc) = *(undefined4 *)(puVar13 + 0x38);
    *(undefined4 *)(puVar13 + 0x10) = *(undefined4 *)(puVar13 + 0x38);
  }
  else {
    if (0x28 < uVar6) {
      iVar11 = *(int *)(puVar13 + 0x10);
      *(undefined4 *)(puVar13 + 0x10) = *(undefined4 *)(puVar13 + 0xc);
      *(int *)(puVar13 + 0xc) = iVar5;
      iVar11 = (iVar5 - iVar11) -
               (*(int *)(puVar13 + 0x14) * -0x6d + *(int *)(puVar13 + 0x18) * 0x33 >> 6);
      *(int *)(puVar13 + 0x1c) = iVar11;
      *(int *)(puVar13 + 0x18) = *(int *)(puVar13 + 0x14);
      *(int *)(puVar13 + 0x14) = iVar11;
      iVar10 = *(int *)(puVar13 + 0x24);
      *(undefined4 *)(puVar13 + 0x24) = *(undefined4 *)(puVar13 + 0x20);
      *(int *)(puVar13 + 0x20) = iVar11;
      iVar5 = *(int *)(puVar13 + 0x28);
      iVar11 = (iVar11 - iVar10) - (iVar5 * -0x53 + *(int *)(puVar13 + 0x2c) * 0x2a >> 6);
      *(int *)(puVar13 + 0x30) = iVar11;
      *(int *)(puVar13 + 0x28) = iVar11;
      *(int *)(puVar13 + 0x2c) = iVar5;
    }
    uVar9 = 0;
    if (0x32 < uVar6) {
      do {
        uVar6 = (uint)*(ushort *)(puVar13 + uVar9 * 2 + 0x52) + uVar9 + 0x10;
        uVar7 = uVar6 & 0xffff;
        *(short *)(puVar13 + uVar9 * 2 + 0x52) = (short)uVar6;
        if (0x1ff < uVar7) {
          uVar7 = uVar7 - 0x200;
          *(short *)(puVar13 + uVar9 * 2 + 0x52) = (short)uVar7;
        }
        uVar6 = uVar7 & 0xffff;
        if ((uVar6 < 0x180) && ((0xff < uVar6 || (uVar6 < 0x80)))) {
          uVar7 = uVar7 & 0xff;
        }
        else {
          uVar7 = (uint)(byte)((char)uVar6 + 0x80);
        }
        uVar8 = (uint)*(byte *)(DAT_07fcd890 + uVar7);
        uVar12 = (uint)*(byte *)(DAT_07fcd890 + (0x7f - uVar7 & 0xff));
        uVar7 = uVar8;
        if (0x7f < uVar6) {
          if (uVar6 < 0x100) {
            uVar7 = uVar12;
            uVar12 = -uVar8;
          }
          else if (uVar6 < 0x180) {
            uVar7 = -uVar8;
            uVar12 = -uVar12;
          }
          else {
            uVar7 = -uVar12;
            uVar12 = uVar8;
          }
        }
        *(uint *)(puVar13 + uVar9 * 8 + 0xf4) =
             *(int *)(puVar13 + uVar9 * 8 + 0xf4) + uVar12 * (*(int *)(puVar13 + 0x30) >> 3);
        uVar6 = uVar9 + 1 & 0xffff;
        *(uint *)(puVar13 + uVar9 * 8 + 0xf8) =
             *(int *)(puVar13 + uVar9 * 8 + 0xf8) + uVar7 * (*(int *)(puVar13 + 0x30) >> 3);
        uVar9 = uVar6;
      } while (uVar6 < 0x28);
    }
    if (0xaa < *(uint *)(puVar13 + 8)) {
      uVar6 = 0;
      do {
        uVar7 = (uint)*(ushort *)(puVar13 + uVar6 * 2 + 0xa2) + uVar6 + 0x10;
        uVar9 = uVar7 & 0xffff;
        *(short *)(puVar13 + uVar6 * 2 + 0xa2) = (short)uVar7;
        if (0x1ff < uVar9) {
          uVar9 = uVar9 - 0x200;
          *(short *)(puVar13 + uVar6 * 2 + 0xa2) = (short)uVar9;
        }
        uVar7 = uVar9 & 0xffff;
        if ((uVar7 < 0x180) && ((0xff < uVar7 || (uVar7 < 0x80)))) {
          uVar9 = uVar9 & 0xff;
        }
        else {
          uVar9 = (uint)(byte)((char)uVar7 + 0x80);
        }
        uVar8 = (uint)*(byte *)(DAT_07fcd890 + uVar9);
        uVar12 = (uint)*(byte *)(DAT_07fcd890 + (0x7f - uVar9 & 0xff));
        uVar9 = uVar8;
        if (0x7f < uVar7) {
          if (uVar7 < 0x100) {
            uVar9 = uVar12;
            uVar12 = -uVar8;
          }
          else if (uVar7 < 0x180) {
            uVar9 = -uVar8;
            uVar12 = -uVar12;
          }
          else {
            uVar9 = -uVar12;
            uVar12 = uVar8;
          }
        }
        *(uint *)(puVar13 + uVar6 * 8 + 0xf4) =
             *(int *)(puVar13 + uVar6 * 8 + 0xf4) -
             uVar12 * (*(int *)(puVar13 + (uint)(byte)puVar13[0x50] * 4 + 0x234) >> 3);
        uVar7 = uVar6 + 1 & 0xffff;
        *(uint *)(puVar13 + uVar6 * 8 + 0xf8) =
             *(int *)(puVar13 + uVar6 * 8 + 0xf8) -
             uVar9 * (*(int *)(puVar13 + (uint)(byte)puVar13[0x50] * 4 + 0x234) >> 3);
        uVar6 = uVar7;
      } while (uVar7 < 0x28);
    }
    if (0x32 < *(uint *)(puVar13 + 8)) {
      *(undefined4 *)(puVar13 + (uint)(byte)puVar13[0x50] * 4 + 0x234) =
           *(undefined4 *)(puVar13 + 0x30);
      cVar1 = puVar13[0x50];
      puVar13[0x50] = cVar1 + 1U;
      if (0x77 < (byte)(cVar1 + 1U)) {
        puVar13[0x50] = 0;
      }
    }
  }
  uVar6 = *(uint *)(puVar13 + 8);
  func_0x07f1dfb8(uVar6,0x19);
  puVar3 = DAT_07fcd888;
  if ((extraout_r1 == 0) && (0xa9 < uVar6)) {
    uVar6 = 0;
    uVar9 = DAT_07fcd894;
    uVar7 = DAT_07fcd898;
    do {
      uVar12 = uVar9;
      uVar9 = (*(int *)(puVar13 + uVar6 * 8 + 0xf4) >> 0x12) *
              (*(int *)(puVar13 + uVar6 * 8 + 0xf4) >> 0x12) +
              (*(int *)(puVar13 + uVar6 * 8 + 0xf8) >> 0x12) *
              (*(int *)(puVar13 + uVar6 * 8 + 0xf8) >> 0x12);
      if ((uVar9 < uVar12) && (uVar7 <= uVar12)) {
        uVar7 = 0;
        do {
          local_20 = local_50[uVar7 + 1];
          if (local_20 < uVar12) {
            if (uVar7 != 0) {
              (&uStack_5a)[uVar7] = *(undefined2 *)((int)&local_58 + uVar7 * 2);
              local_50[uVar7] = local_20;
              (&uStack_6e)[uVar7] = *(undefined2 *)((int)&local_6c + uVar7 * 2);
            }
            *(short *)((int)&local_58 + uVar7 * 2) = (short)uVar6;
            local_50[uVar7 + 1] = uVar12;
            *(short *)((int)&local_6c + uVar7 * 2) = (short)(DAT_07fcd89c * (uVar6 + 0xf) >> 0x10);
          }
          uVar7 = uVar7 + 1 & 0xffff;
        } while (uVar7 < 6);
      }
      if (local_24 < uVar9) {
        local_24 = uVar9;
      }
      uVar6 = uVar6 + 1 & 0xffff;
      uVar7 = uVar12;
    } while (uVar6 < 0x28);
    uVar4 = 0;
    do {
      uVar4 = uVar4 + 1;
    } while (uVar4 < 6);
    uVar6 = *(uint *)(puVar13 + 8);
    bVar2 = (byte)((uint)local_64 >> 0x10);
    if (uVar6 == 200) {
      puVar13[1] = bVar2;
      puVar13[2] = bVar2;
      *puVar3 = 2;
      *(ushort *)(puVar13 + 4) = (local_64._2_2_ & 0xff) << 3;
    }
    else if (200 < uVar6) {
      puVar13[1] = bVar2;
      iVar11 = (byte)puVar13[2] - 2;
      if ((int)(uint)bVar2 < iVar11) {
        puVar13[1] = (char)iVar11;
      }
      else {
        uVar9 = (byte)puVar13[2] + 2;
        if (uVar9 < bVar2) {
          puVar13[1] = (char)uVar9;
        }
      }
      *(short *)(puVar13 + 4) =
           (short)(((uint)*(ushort *)(puVar13 + 4) * 3 + (uint)(byte)puVar13[1] * 8 & 0x3ffff) >> 2)
      ;
      puVar13[2] = puVar13[1];
    }
    uVar9 = (*(ushort *)(puVar13 + 4) & 0x7ff) >> 3;
    *puVar13 = (char)uVar9;
    if (((400 < uVar6) && (uVar9 != 0)) && (puVar13[0x420] == '\0')) {
      FUN_07fcd0f0(uVar9,*(undefined4 *)(puVar3 + 8),*(undefined4 *)(puVar3 + 0xc));
    }
  }
  *(int *)(*(int *)(DAT_07fcd888 + 4) + 8) = *(int *)(*(int *)(DAT_07fcd888 + 4) + 8) + 1;
  return 1;
}

