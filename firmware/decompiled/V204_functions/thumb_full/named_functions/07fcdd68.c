/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4
FUN_07fcdd68(int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined4 param_5,
            undefined4 param_6,undefined4 param_7)

{
  ushort uVar1;
  char cVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  char *pcVar7;
  int *piVar8;
  int *piVar9;
  char cVar10;
  uint uVar11;
  undefined4 uVar12;
  int iVar13;
  uint *puVar14;
  byte bVar15;
  char extraout_r1;
  char extraout_r1_00;
  int iVar16;
  uint uVar17;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  int extraout_r1_04;
  int iVar18;
  int extraout_r1_05;
  int iVar19;
  uint uVar20;
  uint uVar21;
  undefined1 uVar22;
  int iVar23;
  uint uVar24;
  int iVar25;
  int iVar26;
  int local_5c;
  int local_58;
  uint local_48;
  uint local_44;
  int local_3c;
  
  piVar8 = DAT_07fce180;
  iVar25 = 0;
  bVar3 = true;
  bVar4 = true;
  bVar5 = true;
  local_3c = 0;
  local_44 = 0;
  local_48 = 0;
  bVar6 = true;
  iVar26 = *(int *)(DAT_07fce17c + 0x1c);
  *(undefined1 *)(iVar26 + 0xc87) = param_4;
  *(undefined1 *)(iVar26 + 0xc86) = param_3;
  uVar11 = 3;
  do {
    piVar8[uVar11] = piVar8[uVar11 - 1];
    piVar8[uVar11 + 4] = piVar8[uVar11 + 3];
    piVar9 = DAT_07fce180;
    uVar11 = uVar11 - 1 & 0xffff;
  } while (uVar11 != 0);
  *piVar8 = param_1;
  piVar9[4] = param_2;
  pcVar7 = DAT_07fce17c;
  if (DAT_07fce17c[4] == '\x01') {
    cVar10 = FUN_07fcd2dc(param_5,param_6,param_7,&stack0x0000000c);
    *DAT_07fce17c = cVar10;
  }
  else {
    *(undefined1 *)(iVar26 + 0xd6f) = 0;
    *pcVar7 = '\0';
  }
  pcVar7 = DAT_07fce17c;
  iVar26 = *(int *)(DAT_07fce17c + 0x1c);
  uVar11 = *(uint *)(iVar26 + 4);
  if (uVar11 < 0x1f) {
    local_5c = piVar8[1];
    local_58 = DAT_07fce180[5];
    *(int *)(DAT_07fce17c + 0x10) = local_58;
    *(int *)(pcVar7 + 0xc) = local_5c;
    if (uVar11 != 0x1e) {
      if (0x1e < uVar11) goto LAB_07fcdea2;
      goto LAB_07fce2ae;
    }
    *(int *)(iVar26 + 0x34) = local_58;
    *(int *)(iVar26 + 0x38) = local_58;
LAB_07fce38e:
    iVar25 = *(int *)(DAT_07fce6a8 + 0x1c);
    *(int *)(iVar25 + 0xc) = local_5c;
    *(int *)(iVar25 + 0x10) = local_5c;
  }
  else {
    iVar16 = DAT_07fce180[1];
    iVar19 = DAT_07fce180[2];
    iVar23 = *(int *)(DAT_07fce17c + 0x34);
    if (((iVar23 < iVar16 - iVar19) && (iVar23 < iVar16 - param_1)) ||
       ((iVar16 - iVar19 < -iVar23 && (iVar16 - param_1 < -iVar23)))) {
      DAT_07fce180[1] = iVar19;
      iVar16 = iVar19;
    }
    local_58 = DAT_07fce180[5];
    iVar19 = DAT_07fce180[6];
    if (((iVar23 < local_58 - iVar19) && (iVar23 < local_58 - param_2)) ||
       ((local_58 - iVar19 < -iVar23 && (local_58 - param_2 < -iVar23)))) {
      DAT_07fce180[5] = iVar19;
      local_58 = iVar19;
    }
    pcVar7 = DAT_07fce17c;
    iVar19 = (iVar16 - *(int *)(DAT_07fce17c + 0x14)) - *(int *)(DAT_07fce17c + 0xc);
    if (iVar19 < 0) {
      iVar19 = -iVar19;
    }
    iVar23 = *(int *)(DAT_07fce17c + 0x38);
    if (iVar23 < iVar19) {
      *(int *)(DAT_07fce17c + 0x14) = iVar16 - *(int *)(DAT_07fce17c + 0xc);
    }
    local_5c = iVar16 - *(int *)(pcVar7 + 0x14);
    *(int *)(pcVar7 + 0xc) = local_5c;
    iVar19 = (local_58 - *(int *)(pcVar7 + 0x18)) - *(int *)(pcVar7 + 0x10);
    if (iVar19 < 0) {
      iVar19 = -iVar19;
    }
    if (iVar23 < iVar19) {
      iVar19 = local_58 - *(int *)(pcVar7 + 0x10);
      *(int *)(pcVar7 + 0x18) = iVar19;
    }
    else {
      iVar19 = *(int *)(pcVar7 + 0x18);
    }
    local_58 = local_58 - iVar19;
    *(int *)(pcVar7 + 0x10) = local_58;
    param_1 = iVar16;
LAB_07fcdea2:
    iVar16 = *(int *)(iVar26 + 0x38);
    *(undefined4 *)(iVar26 + 0x38) = *(undefined4 *)(iVar26 + 0x34);
    *(int *)(iVar26 + 0x34) = local_58;
    iVar16 = (local_58 - iVar16) -
             (*(int *)(iVar26 + 0x3c) * -0x71 + *(int *)(iVar26 + 0x40) * 0x34 >> 6);
    *(int *)(iVar26 + 0x44) = iVar16;
    *(int *)(iVar26 + 0x40) = *(int *)(iVar26 + 0x3c);
    *(int *)(iVar26 + 0x3c) = iVar16;
    iVar23 = *(int *)(iVar26 + 0x4c);
    *(undefined4 *)(iVar26 + 0x4c) = *(undefined4 *)(iVar26 + 0x48);
    *(int *)(iVar26 + 0x48) = iVar16;
    iVar19 = *(int *)(iVar26 + 0x50);
    iVar16 = (iVar16 - iVar23) - (iVar19 * -0x4e + *(int *)(iVar26 + 0x54) * 0x24 >> 6);
    *(int *)(iVar26 + 0x58) = iVar16;
    *(int *)(iVar26 + 0x50) = iVar16;
    *(int *)(iVar26 + 0x54) = iVar19;
    uVar11 = 7;
    do {
      iVar16 = uVar11 * 4 + iVar26;
      *(undefined4 *)(iVar16 + 0x288) = *(undefined4 *)(iVar16 + 0x284);
      uVar11 = uVar11 - 1 & 0xffff;
    } while (uVar11 != 0);
    iVar26 = *(int *)(DAT_07fce17c + 0x1c);
    *(undefined4 *)(iVar26 + 0x288) = *(undefined4 *)(iVar26 + 0x58);
    uVar11 = 0;
    do {
      iVar25 = *(int *)(uVar11 * 4 + iVar26 + 0x288) + iVar25;
      uVar11 = uVar11 + 1 & 0xffff;
    } while (uVar11 < 8);
    *(int *)(iVar26 + 800) = iVar25 >> 3;
    uVar11 = 6;
    do {
      iVar25 = uVar11 * 4 + iVar26;
      *(undefined4 *)(iVar25 + 0x250) = *(undefined4 *)(iVar25 + 0x24c);
      uVar11 = uVar11 - 1 & 0xffff;
    } while (uVar11 != 0);
    iVar25 = *(int *)(DAT_07fce17c + 0x1c);
    *(int *)(iVar25 + 0x250) = *(int *)(iVar25 + 800);
    uVar11 = 0;
    do {
      if ((*(int *)(iVar25 + 0x25c) < *(int *)(uVar11 * 4 + iVar25 + 0x250)) ||
         (*(int *)(iVar25 + 0x25c) < 0)) {
        bVar3 = false;
        break;
      }
      uVar11 = uVar11 + 1 & 0xffff;
    } while (uVar11 < 7);
    uVar11 = 0;
    do {
      if ((*(int *)(uVar11 * 4 + iVar25 + 0x250) < *(int *)(iVar25 + 0x25c)) ||
         (0 < *(int *)(iVar25 + 0x25c))) {
        bVar4 = false;
        break;
      }
      uVar11 = uVar11 + 1 & 0xffff;
    } while (uVar11 < 7);
    if (bVar3) {
      *(undefined4 *)(iVar25 + 0x39c) = *(undefined4 *)(iVar25 + 0x25c);
    }
    if (bVar4) {
      *(undefined4 *)(iVar25 + 0x3a0) = *(undefined4 *)(iVar25 + 0x25c);
    }
    if (bVar3) {
      iVar26 = *(int *)(iVar25 + 0x39c) - *(int *)(iVar25 + 0x3a0);
      *(int *)(iVar25 + 0x330) = iVar26;
      *(int *)(iVar25 + 0x334) = iVar26 >> 5;
    }
    iVar26 = *(int *)(iVar25 + 800) >> 7;
    if (0x32 < *(uint *)(iVar25 + 4)) {
      uVar11 = 0;
      do {
        uVar24 = DAT_07fce184;
        iVar16 = uVar11 * 2 + iVar25;
        uVar20 = (uint)*(ushort *)(iVar16 + 0x56c) + uVar11 + 0x2d;
        uVar21 = uVar20 & 0xffff;
        *(short *)(iVar16 + 0x56c) = (short)uVar20;
        if (uVar24 <= uVar21) {
          uVar21 = uVar21 - uVar24;
          *(short *)(iVar16 + 0x56c) = (short)uVar21;
        }
        uVar21 = uVar21 & 0xffff;
        uVar24 = DAT_07fce188;
        if ((uVar21 < DAT_07fce188) && (uVar24 = DAT_07fce18c, uVar21 < DAT_07fce18c)) {
          uVar24 = uVar21;
          if (0x176 < uVar21) {
            uVar24 = uVar21 - 0x177;
          }
        }
        else {
          uVar24 = uVar21 - uVar24;
        }
        uVar17 = (uint)*(byte *)(DAT_07fce190 + uVar24);
        uVar20 = (uint)*(byte *)(DAT_07fce190 + (0x176 - uVar24));
        uVar24 = uVar17;
        if (0x176 < uVar21) {
          if (uVar21 < 0x2ee) {
            uVar24 = uVar20;
            uVar20 = -uVar17;
          }
          else if (uVar21 < DAT_07fce188) {
            uVar24 = -uVar17;
            uVar20 = -uVar20;
          }
          else {
            uVar24 = -uVar20;
            uVar20 = uVar17;
          }
        }
        iVar16 = uVar11 * 8 + iVar25;
        *(uint *)(iVar16 + 0x6fc) = *(int *)(iVar16 + 0x6fc) + iVar26 * uVar20;
        uVar11 = uVar11 + 1 & 0xffff;
        *(int *)(iVar16 + 0x700) = *(int *)(iVar16 + 0x700) + iVar26 * uVar24;
      } while (uVar11 < 100);
    }
    iVar25 = *(int *)(DAT_07fce17c + 0x1c);
    if (200 < *(uint *)(iVar25 + 4)) {
      uVar11 = 0;
      do {
        uVar24 = DAT_07fce184;
        iVar16 = uVar11 * 2 + iVar25;
        uVar20 = (uint)*(ushort *)(iVar16 + 0x634) + uVar11 + 0x2d;
        uVar21 = uVar20 & 0xffff;
        *(short *)(iVar16 + 0x634) = (short)uVar20;
        if (uVar24 <= uVar21) {
          uVar21 = uVar21 - uVar24;
          *(short *)(iVar16 + 0x634) = (short)uVar21;
        }
        uVar21 = uVar21 & 0xffff;
        uVar24 = DAT_07fce188;
        if ((uVar21 < DAT_07fce188) && (uVar24 = DAT_07fce18c, uVar21 < DAT_07fce18c)) {
          uVar24 = uVar21;
          if (0x176 < uVar21) {
            uVar24 = uVar21 - 0x177;
          }
        }
        else {
          uVar24 = uVar21 - uVar24;
        }
        uVar17 = (uint)*(byte *)(DAT_07fce190 + uVar24);
        uVar20 = (uint)*(byte *)(DAT_07fce190 + (0x176 - uVar24));
        uVar24 = uVar17;
        if (0x176 < uVar21) {
          if (uVar21 < 0x2ee) {
            uVar24 = uVar20;
            uVar20 = -uVar17;
          }
          else if (uVar21 < DAT_07fce188) {
            uVar24 = -uVar17;
            uVar20 = -uVar20;
          }
          else {
            uVar24 = -uVar20;
            uVar20 = uVar17;
          }
        }
        iVar16 = uVar11 * 8 + iVar25;
        *(uint *)(iVar16 + 0x6fc) =
             *(int *)(iVar16 + 0x6fc) -
             uVar20 * *(int *)((uint)*(byte *)(iVar25 + 0xc90) * 4 + iVar25 + 0xa1c);
        uVar11 = uVar11 + 1 & 0xffff;
        *(int *)(iVar16 + 0x700) =
             *(int *)(iVar16 + 0x700) -
             uVar24 * *(int *)((uint)*(byte *)(iVar25 + 0xc90) * 4 + iVar25 + 0xa1c);
      } while (uVar11 < 100);
    }
    pcVar7 = DAT_07fce17c;
    iVar25 = *(int *)(DAT_07fce17c + 0x1c);
    if (*(uint *)(iVar25 + 4) < 0x33) {
LAB_07fce2ae:
      uVar11 = *(uint *)(*(int *)(DAT_07fce6a8 + 0x1c) + 4);
      if (uVar11 == 0x1e) goto LAB_07fce38e;
      if (0x1e < uVar11) goto LAB_07fce2ba;
    }
    else {
      *(int *)((uint)*(byte *)(iVar25 + 0xc90) * 4 + iVar25 + 0xa1c) = iVar26;
      iVar25 = *(int *)(pcVar7 + 0x1c);
      bVar15 = *(char *)(iVar25 + 0xc90) + 1;
      *(byte *)(iVar25 + 0xc90) = bVar15;
      if (0x95 < bVar15) {
        *(undefined1 *)(iVar25 + 0xc90) = 0;
      }
      if (*(uint *)(iVar25 + 4) < 200) goto LAB_07fce2ae;
      ROM___aeabi_uidiv /* 0x07f1dfb8 */(*(uint *)(iVar25 + 4),0x19);
      if (extraout_r1_01 == 0) {
        uVar11 = FUN_07fcd9c8();
        iVar25 = *(int *)(pcVar7 + 0x1c);
        *(char *)(iVar25 + 0xc88) = (char)uVar11;
        if (*pcVar7 == '\0') {
          uVar1 = *(ushort *)(iVar25 + 0xc92);
          if (uVar1 < 0x32) {
            if (0x17 < uVar1) {
              cVar10 = '\x02';
              goto LAB_07fce202;
            }
            if (9 < uVar1) {
              cVar10 = '\x01';
              goto LAB_07fce202;
            }
LAB_07fce21c:
            cVar10 = *(char *)(iVar25 + 0xca0);
            if (cVar10 < '\x01') goto LAB_07fce22e;
            if (cVar10 != '7') {
              *(char *)(iVar25 + 0xca0) = cVar10 + -1;
              goto LAB_07fce22e;
            }
          }
          else {
            cVar10 = '\x03';
LAB_07fce202:
            cVar2 = *(char *)(iVar25 + 0xca0);
            if (cVar2 < '\x10') {
              *(char *)(iVar25 + 0xca0) = cVar2 + cVar10;
            }
            else {
              if (cVar10 == '\0') goto LAB_07fce21c;
              if (cVar10 == '7') goto LAB_07fce24c;
            }
LAB_07fce22e:
            if (*(char *)(iVar25 + 0xca0) < '\0') {
              uVar22 = 0;
              goto LAB_07fce23a;
            }
          }
        }
        else {
LAB_07fce24c:
          uVar22 = 0x37;
LAB_07fce23a:
          *(undefined1 *)(iVar25 + 0xca0) = uVar22;
        }
        if (*(uint *)(iVar25 + 4) == 200) {
          if ((*(ushort *)(iVar25 + 0xc92) < 0x1f) && (0x12 < uVar11 - 0x47)) {
            uVar22 = 0x50;
            goto LAB_07fce26a;
          }
          *(char *)(iVar25 + 0xc89) = (char)uVar11;
        }
        else if ((200 < *(uint *)(iVar25 + 4)) && (*(char *)(iVar25 + 0xc89) == '\0')) {
          uVar22 = 0x4e;
LAB_07fce26a:
          *(undefined1 *)(iVar25 + 0xc89) = uVar22;
        }
        uVar1 = *(ushort *)(iVar25 + 0xc92);
        if (uVar1 < 0x29) {
          if (uVar1 < 0x1f) {
            if (uVar1 < 0x15) {
              iVar26 = 0;
            }
            else {
              iVar26 = 1;
            }
          }
          else {
            iVar26 = 2;
          }
        }
        else {
          iVar26 = 4;
        }
        bVar15 = *(byte *)(iVar25 + 0xc89);
        uVar24 = (uint)bVar15 + iVar26;
        if ((uVar24 < uVar11) && (uVar11 != 0)) {
          *(char *)(iVar25 + 0xc88) = (char)uVar24;
        }
        else {
          iVar26 = (uint)bVar15 - iVar26;
          if (((int)uVar11 < iVar26) && (uVar11 != 0)) {
            *(char *)(iVar25 + 0xc88) = (char)iVar26;
          }
          else {
            *(byte *)(iVar25 + 0xc88) = bVar15;
          }
        }
        *(undefined1 *)(iVar25 + 0xc89) = *(undefined1 *)(iVar25 + 0xc88);
        goto LAB_07fce2ae;
      }
LAB_07fce2ba:
      iVar25 = DAT_07fce6a8;
      iVar26 = *(int *)(DAT_07fce6a8 + 0x1c);
      iVar16 = *(int *)(iVar26 + 0x10);
      *(undefined4 *)(iVar26 + 0x10) = *(undefined4 *)(iVar26 + 0xc);
      *(int *)(iVar26 + 0xc) = local_5c;
      iVar16 = (local_5c - iVar16) -
               (*(int *)(iVar26 + 0x14) * -0x71 + *(int *)(iVar26 + 0x18) * 0x34 >> 6);
      *(int *)(iVar26 + 0x1c) = iVar16;
      *(int *)(iVar26 + 0x18) = *(int *)(iVar26 + 0x14);
      *(int *)(iVar26 + 0x14) = iVar16;
      iVar23 = *(int *)(iVar26 + 0x24);
      *(undefined4 *)(iVar26 + 0x24) = *(undefined4 *)(iVar26 + 0x20);
      *(int *)(iVar26 + 0x20) = iVar16;
      iVar19 = *(int *)(iVar26 + 0x28);
      iVar16 = (iVar16 - iVar23) - (iVar19 * -0x4e + *(int *)(iVar26 + 0x2c) * 0x24 >> 6);
      *(int *)(iVar26 + 0x30) = iVar16;
      *(int *)(iVar26 + 0x28) = iVar16;
      *(int *)(iVar26 + 0x2c) = iVar19;
      uVar11 = 7;
      do {
        iVar16 = uVar11 * 4 + iVar26;
        *(undefined4 *)(iVar16 + 0x2d4) = *(undefined4 *)(iVar16 + 0x2d0);
        uVar11 = uVar11 - 1 & 0xffff;
      } while (uVar11 != 0);
      iVar26 = *(int *)(iVar25 + 0x1c);
      *(undefined4 *)(iVar26 + 0x2d4) = *(undefined4 *)(iVar26 + 0x30);
      uVar11 = 0;
      do {
        local_3c = *(int *)(uVar11 * 4 + iVar26 + 0x2d4) + local_3c;
        uVar11 = uVar11 + 1 & 0xffff;
      } while (uVar11 < 8);
      *(int *)(iVar26 + 0x348) = local_3c >> 3;
      uVar11 = 6;
      do {
        iVar16 = uVar11 * 4 + iVar26;
        *(undefined4 *)(iVar16 + 0x26c) = *(undefined4 *)(iVar16 + 0x268);
        uVar11 = uVar11 - 1 & 0xffff;
      } while (uVar11 != 0);
      iVar25 = *(int *)(iVar25 + 0x1c);
      *(undefined4 *)(iVar25 + 0x26c) = *(undefined4 *)(iVar25 + 0x348);
      uVar11 = 0;
      do {
        if ((*(int *)(iVar25 + 0x278) < *(int *)(uVar11 * 4 + iVar25 + 0x26c)) ||
           (*(int *)(iVar25 + 0x278) < 0)) {
          bVar5 = false;
          break;
        }
        uVar11 = uVar11 + 1 & 0xffff;
      } while (uVar11 < 7);
      uVar11 = 0;
      do {
        if ((*(int *)(uVar11 * 4 + iVar25 + 0x26c) < *(int *)(iVar25 + 0x278)) ||
           (0 < *(int *)(iVar25 + 0x278))) {
          bVar6 = false;
          break;
        }
        uVar11 = uVar11 + 1 & 0xffff;
      } while (uVar11 < 7);
      if (bVar5) {
        *(undefined4 *)(iVar25 + 0x394) = *(undefined4 *)(iVar25 + 0x278);
      }
      if (bVar6) {
        *(undefined4 *)(iVar25 + 0x398) = *(undefined4 *)(iVar25 + 0x278);
      }
      if (bVar5) {
        iVar26 = *(int *)(iVar25 + 0x394) - *(int *)(iVar25 + 0x398);
        *(int *)(iVar25 + 0x358) = iVar26;
        *(int *)(iVar25 + 0x35c) = iVar26 >> 5;
      }
    }
  }
  iVar25 = DAT_07fce6a8;
  if (*(char *)(DAT_07fce6a8 + 2) == '\x01') {
    uVar11 = 0;
    iVar26 = *(int *)(DAT_07fce6a8 + 0x1c);
    do {
      iVar16 = uVar11 * 4 + iVar26;
      uVar11 = uVar11 + 1 & 0xffff;
      *(undefined4 *)(iVar16 + 0x5c) = *(undefined4 *)(iVar16 + 0x60);
    } while (uVar11 < 0x31);
    iVar26 = *(int *)(iVar25 + 0x1c);
    *(undefined4 *)(iVar26 + 0x120) = *(undefined4 *)(iVar26 + 0x124);
    uVar11 = 0;
    do {
      iVar16 = uVar11 * 4 + iVar26;
      uVar11 = uVar11 + 1 & 0xffff;
      *(undefined4 *)(iVar16 + 0x124) = *(undefined4 *)(iVar16 + 0x128);
    } while (uVar11 < 0x31);
    iVar26 = *(int *)(iVar25 + 0x1c);
    *(undefined4 *)(iVar26 + 0x1e8) = *(undefined4 *)(iVar26 + 0x348);
    if ((0x95 < *(uint *)(iVar26 + 4)) &&
       (ROM___aeabi_uidiv /* 0x07f1dfb8 */(*(uint *)(iVar26 + 4),0x19), extraout_r1_02 == 0)) {
      FUN_07fcf014(iVar26 + 0x5c,iVar26 + 0x124,iVar26 + 0x1ec,0x32);
      uVar12 = FUN_07fcee94(*(int *)(iVar25 + 0x1c) + 0x1ec);
      *(undefined4 *)(*(int *)(iVar25 + 0x1c) + 0x370) = uVar12;
    }
  }
  uVar11 = 0;
  iVar25 = *(int *)(DAT_07fce6a8 + 0x1c);
  do {
    iVar26 = uVar11 * 4 + iVar25;
    *(undefined4 *)(iVar26 + 0x3a4) = *(undefined4 *)(iVar26 + 0x3a8);
    uVar11 = uVar11 + 1 & 0xffff;
    *(undefined4 *)(iVar26 + 0x408) = *(undefined4 *)(iVar26 + 0x40c);
    iVar26 = DAT_07fce6a8;
  } while (uVar11 < 0x18);
  iVar25 = *(int *)(DAT_07fce6a8 + 0x1c);
  *(undefined4 *)(iVar25 + 0x404) = *(undefined4 *)(iVar25 + 0x35c);
  *(undefined4 *)(iVar25 + 0x468) = *(undefined4 *)(iVar25 + 0x334);
  *(int *)(iVar25 + 0x340) = (int)(DAT_07fce6ac * (uint)*(byte *)(iVar25 + 0xc87) + local_58) >> 10;
  *(int *)(iVar25 + 0x368) = (int)(DAT_07fce6ac * (uint)*(byte *)(iVar25 + 0xc86) + local_5c) >> 10;
  if (((*(ushort *)(iVar25 + 0xc92) < (ushort)*(byte *)(iVar26 + 0x21)) ||
      (*(char *)(iVar25 + 0xd6f) != '\0')) ||
     (*(int *)(iVar25 + 0x370) < (int)(uint)*(byte *)(iVar26 + 0x20))) {
    cVar10 = *(char *)(DAT_07fce6a8 + 0x22);
LAB_07fce518:
    *(char *)(iVar25 + 0xc95) = cVar10;
  }
  else if (*(char *)(iVar25 + 0xc95) != '\0') {
    cVar10 = *(char *)(iVar25 + 0xc95) + -1;
    goto LAB_07fce518;
  }
  uVar11 = *(uint *)(iVar25 + 4);
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar11,0x19);
  if (((extraout_r1_03 == 0) && (*(char *)(iVar25 + 0xc95) == '\0')) && (0x95 < uVar11)) {
    uVar11 = 0;
    do {
      iVar26 = uVar11 * 4 + iVar25;
      iVar16 = *(int *)(iVar26 + 0x3a4);
      if (((0 < iVar16) && (iVar19 = *(int *)(iVar26 + 0x408), 0 < iVar19)) &&
         ((iVar16 < iVar19 * 4 && (iVar19 >> 2 < iVar16)))) {
        iVar23 = *(int *)(iVar25 + 0x36c) * 2;
        if ((iVar23 < iVar16) &&
           (0 < *(int *)((uint)*(ushort *)(DAT_07fce6a8 + 0x30) * 4 + iVar25 + 0x468))) {
          *(int *)(iVar26 + 0x3a4) = iVar23;
        }
        iVar16 = *(int *)(iVar25 + 0x344) * 2;
        if ((iVar16 < iVar19) &&
           (0 < *(int *)((uint)*(ushort *)(DAT_07fce6a8 + 0x30) * 4 + iVar25 + 0x4e8))) {
          *(int *)(iVar26 + 0x408) = iVar16;
        }
      }
      iVar26 = DAT_07fce6a8;
      uVar11 = uVar11 + 1 & 0xffff;
    } while (uVar11 < 0x19);
    iVar25 = FUN_07fccf80(*(int *)(DAT_07fce6a8 + 0x1c) + 0x408,0x19);
    iVar16 = FUN_07fccf80(*(int *)(iVar26 + 0x1c) + 0x3a4,0x19);
    cVar10 = '\0';
    iVar26 = *(int *)(iVar26 + 0x1c);
    do {
      if ((0 < *(int *)(iVar26 + 0x4a8)) && (*(int *)(iVar26 + 0x4e8) == 0)) {
        uVar11 = 0;
        do {
          iVar19 = uVar11 * 4 + iVar26;
          local_44 = *(int *)(iVar19 + 0x46c) + local_44;
          uVar11 = uVar11 + 1 & 0xffff;
          local_48 = *(int *)(iVar19 + 0x4ec) + local_48;
        } while (uVar11 < 0x10);
        uVar11 = 0x10;
        do {
          iVar19 = uVar11 * 4 + iVar26;
          *(uint *)(iVar19 + 0x46c) = local_44 >> 4;
          uVar11 = uVar11 + 1 & 0xffff;
          *(uint *)(iVar19 + 0x4ec) = local_48 >> 4;
        } while (uVar11 < 0x20);
      }
      if (((uint)*(byte *)(DAT_07fce6a8 + 0x21) * 3 >> 1 < (uint)*(ushort *)(iVar26 + 0xc92)) &&
         ((int)(*(byte *)(DAT_07fce6a8 + 0x20) + 5) < *(int *)(iVar26 + 0x370))) {
        uVar11 = 0;
        uVar24 = 0;
        uVar20 = 0x1f;
        do {
          iVar19 = uVar20 * 4 + iVar26;
          *(undefined4 *)(iVar19 + 0x4ec) = *(undefined4 *)(iVar19 + 0x4e8);
          *(undefined4 *)(iVar19 + 0x46c) = *(undefined4 *)(iVar19 + 0x468);
          uVar20 = uVar20 - 1 & 0xffff;
        } while (uVar20 != 0);
        *(int *)(iVar26 + 0x4ec) = iVar25;
        *(int *)(iVar26 + 0x46c) = iVar16;
        uVar20 = 0x1f;
        do {
          iVar19 = uVar20 * 4 + iVar26;
          *(undefined4 *)(iVar19 + 0x4ec) = *(undefined4 *)(iVar19 + 0x4e8);
          *(undefined4 *)(iVar19 + 0x46c) = *(undefined4 *)(iVar19 + 0x468);
          uVar20 = uVar20 - 1 & 0xffff;
        } while (uVar20 != 0);
        *(int *)(iVar26 + 0x4ec) = iVar25;
        *(int *)(iVar26 + 0x46c) = iVar16;
        uVar20 = 0;
        do {
          iVar19 = uVar20 * 4 + iVar26;
          uVar11 = *(int *)(iVar19 + 0x4ec) + uVar11;
          uVar20 = uVar20 + 1 & 0xffff;
          uVar24 = *(int *)(iVar19 + 0x46c) + uVar24;
        } while (uVar20 < 0x20);
      }
      else {
        iVar19 = 0;
        iVar23 = 0;
        uVar11 = 0x1f;
        do {
          iVar13 = uVar11 * 4 + iVar26;
          *(int *)(iVar13 + 0x4ec) = *(int *)(iVar13 + 0x4e8);
          iVar19 = *(int *)(iVar13 + 0x4e8) + iVar19;
          *(int *)(iVar13 + 0x46c) = *(int *)(iVar13 + 0x468);
          iVar23 = *(int *)(iVar13 + 0x468) + iVar23;
          uVar11 = uVar11 - 1 & 0xffff;
        } while (uVar11 != 0);
        uVar11 = iVar25 + iVar19;
        *(int *)(iVar26 + 0x4ec) = iVar25;
        *(int *)(iVar26 + 0x46c) = iVar16;
        uVar24 = iVar16 + iVar23;
      }
      *(undefined4 *)(iVar26 + 0x374) = 5;
      if (0 < *(int *)(iVar26 + 0x4e8)) {
        *(uint *)(iVar26 + 0x36c) = uVar24 >> 5;
        *(uint *)(iVar26 + 0x344) = uVar11 >> 5;
      }
      cVar10 = cVar10 + '\x01';
    } while (cVar10 < '\x06');
  }
  iVar25 = *(int *)(DAT_07fceb48 + 0x1c);
  uVar11 = *(uint *)(iVar25 + 4);
  if (uVar11 < 300) {
    *(undefined4 *)(iVar25 + 0x380) = 0;
    *(undefined4 *)(iVar25 + 900) = 0;
    *(undefined1 *)(iVar25 + 8) = 0;
    *(undefined1 *)(iVar25 + 0xc88) = 0;
    *(undefined1 *)(iVar25 + 0xc8a) = 0;
    *(undefined1 *)(iVar25 + 0xc8b) = 0;
    goto LAB_07fcebb6;
  }
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar11,0x19);
  if (extraout_r1_04 != 0) goto LAB_07fcebb6;
  iVar26 = *(int *)(iVar25 + 0x344);
  if (iVar26 < 0x21) {
    if (*(char *)(iVar25 + DAT_07fceb4c + 0x15) != '\0') goto LAB_07fce9a6;
LAB_07fce9b4:
    iVar16 = iVar25 + DAT_07fceb4c;
    if (*(char *)(iVar16 + 0x14) != '\0') {
      cVar10 = *(char *)(iVar16 + 0x14) + -1;
LAB_07fce9c0:
      *(char *)(iVar16 + 0x14) = cVar10;
      goto LAB_07fce9c2;
    }
  }
  else {
    iVar16 = iVar25 + DAT_07fceb4c;
    if (*(char *)(iVar16 + 0x15) == '\0') {
      iVar19 = *(int *)(iVar25 + 0x340);
      if ((iVar19 < 1) || (iVar23 = *(int *)(iVar25 + 0x368), iVar23 < 1)) goto LAB_07fce9b4;
      iVar18 = *(int *)(DAT_07fceb48 + 0x28);
      iVar13 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar18 * (*(int *)(iVar25 + 0x36c) >> 5),iVar26 >> 5);
      uVar24 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar19 * iVar13,iVar23);
      iVar19 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar18,0x14);
      uVar20 = (uint)*(byte *)(DAT_07fceb48 + 0x47) * iVar19;
      if (uVar20 < uVar24) {
        uVar24 = uVar20;
      }
      uVar20 = (uint)*(byte *)(DAT_07fceb48 + 0x48) * iVar19;
      if (uVar24 <= uVar20 && uVar20 - uVar24 != 0) {
        uVar24 = uVar20;
      }
      if (*(ushort *)(DAT_07fceb48 + 0x3c) < uVar11) {
LAB_07fce86c:
        iVar19 = *(int *)(iVar25 + 0x38c);
        if ((int)(iVar19 + (uint)*(ushort *)(DAT_07fceb48 + 0x40) * 8) < (int)uVar24) {
          iVar19 = iVar19 + (uint)*(ushort *)(DAT_07fceb48 + 0x40);
        }
        else {
          iVar19 = (int)(iVar19 * 7 + uVar24) >> 3;
        }
LAB_07fce88e:
        *(int *)(iVar25 + 0x38c) = iVar19;
      }
      else {
        iVar19 = *(int *)(iVar25 + 0x38c);
        if ((int)uVar24 <= (int)(iVar19 + (uint)*(ushort *)(DAT_07fceb48 + 0x3e) * 8))
        goto LAB_07fce86c;
        if (*(char *)(DAT_07fceb48 + 3) != '\x01') {
          iVar19 = iVar19 + (uint)*(ushort *)(DAT_07fceb48 + 0x3e);
          goto LAB_07fce88e;
        }
        if (((uint)*(byte *)(DAT_07fceb48 + 0x21) * 3 >> 1 < (uint)*(ushort *)(iVar16 + 0x12)) &&
           ((int)(*(byte *)(DAT_07fceb48 + 0x20) + 5) < *(int *)(iVar25 + 0x370))) {
          iVar19 = (int)(iVar19 * 3 + uVar24) >> 2;
          goto LAB_07fce88e;
        }
        if ((int)uVar24 <= iVar19) {
          iVar19 = (int)(iVar19 * 7 + uVar24) >> 3;
          goto LAB_07fce88e;
        }
        iVar13 = (int)(iVar19 * 7 + uVar24) >> 3;
        iVar23 = iVar19 + 500;
        if (iVar13 <= iVar19 + 500) {
          iVar23 = iVar13;
        }
        *(int *)(iVar25 + 0x38c) = iVar23;
      }
      iVar19 = DAT_07fceb58;
      iVar13 = *(int *)(iVar25 + 0x38c);
      iVar23 = *(int *)(iVar16 + 0x18);
      if (iVar23 + DAT_07fceb50 < iVar13) {
        uVar24 = iVar13 + (iVar23 * 0x1ff - DAT_07fceb50) >> 9;
      }
      else {
        uVar24 = (uint)(*(int *)(DAT_07fceb48 + 0x24) + iVar23 * 0xf + DAT_07fceb54) >> 4;
      }
      iVar18 = uVar24 + DAT_07fceb50;
      iVar23 = -DAT_07fceb54;
      *(uint *)(iVar16 + 0x18) = uVar24;
      if ((iVar18 < iVar13) && (iVar13 < (int)(uVar24 + iVar19))) {
        uVar24 = (uVar24 - *(int *)(DAT_07fceb48 + 0x24)) + iVar23;
LAB_07fce91c:
        *(uint *)(iVar16 + 0x1c) = uVar24;
      }
      else {
        if (((int)(uVar24 + iVar19) <= iVar13) && (iVar13 < (int)(uVar24 + DAT_07fceb5c))) {
          uVar24 = ROM___aeabi_idiv /* 0x07f1dfe4 */(DAT_07fceb58 *
                                   ((uVar24 - *(int *)(DAT_07fceb48 + 0x24)) + iVar23),
                                   iVar13 - uVar24);
          goto LAB_07fce91c;
        }
        if ((int)(uVar24 + DAT_07fceb5c) <= iVar13) {
          uVar24 = (uVar24 - *(int *)(DAT_07fceb48 + 0x24)) + iVar23 >> 1;
          goto LAB_07fce91c;
        }
      }
      if ((uVar11 - 600 < 0x579) && (iVar13 < *(int *)(iVar25 + 0x390) + DAT_07fceb60)) {
        uVar20 = iVar13 + (*(int *)(iVar25 + 0x390) * 0xf - DAT_07fceb60) >> 4;
        *(uint *)(iVar25 + 0x390) = uVar20;
        uVar24 = *(int *)(DAT_07fceb48 + 0x24) - DAT_07fceb50;
        if (uVar20 < uVar24) {
          *(uint *)(iVar25 + 0x390) = uVar24;
        }
      }
      if ((2000 < uVar11) && (*(int *)(iVar25 + 0x390) + DAT_07fceb64 < iVar13)) {
        uVar20 = iVar13 + (*(int *)(iVar25 + 0x390) * 0x3f - DAT_07fceb64) >> 6;
        *(uint *)(iVar25 + 0x390) = uVar20;
        uVar24 = *(int *)(DAT_07fceb48 + 0x24) + DAT_07fceb4c + -200;
        if (uVar24 < uVar20) {
          *(uint *)(iVar25 + 0x390) = uVar24;
        }
      }
      goto LAB_07fce9b4;
    }
LAB_07fce9a6:
    iVar16 = iVar25 + DAT_07fceb4c;
    if (*(byte *)(iVar16 + 0x14) < 10) {
      cVar10 = *(byte *)(iVar16 + 0x14) + 1;
      goto LAB_07fce9c0;
    }
LAB_07fce9c2:
    if ((8 < *(byte *)(iVar25 + DAT_07fceb4c + 0x14)) &&
       (*(char *)(iVar25 + DAT_07fceb4c + 0x15) != '\0')) {
      iVar19 = *(int *)(iVar25 + 0x390);
      iVar16 = *(int *)(iVar25 + 0x38c);
      if ((iVar19 + DAT_07fceb68 < iVar16) && (iVar16 <= iVar19 + DAT_07fceb6c)) {
        iVar16 = iVar19 + iVar16 * 7 + DAT_07fceb68 >> 3;
      }
      else {
        if (iVar16 <= iVar19 + DAT_07fceb6c) goto LAB_07fcea02;
        iVar16 = iVar16 + -0x96;
      }
      *(int *)(iVar25 + 0x38c) = iVar16;
    }
  }
LAB_07fcea02:
  iVar16 = DAT_07fceb48;
  if (*(char *)(DAT_07fceb48 + 0x46) == '\x01') {
    iVar19 = (*(int *)(iVar25 + DAT_07fceb70 + 0x10) - *(int *)(iVar25 + DAT_07fceb70 + 0xc)) +
             *(int *)(iVar25 + DAT_07fceb4c + 0x1c);
  }
  else {
    iVar19 = *(int *)(iVar25 + DAT_07fceb70 + 0x10) - *(int *)(iVar25 + DAT_07fceb70 + 0xc);
  }
  *(int *)(iVar25 + DAT_07fceb70) = iVar19 >> 10;
  puVar14 = (uint *)(iVar25 + DAT_07fceb70);
  if ((int)*puVar14 < 99) {
    if ((int)*puVar14 < 0x47) {
      *puVar14 = 0x46;
    }
  }
  else {
    *puVar14 = 99;
  }
  uVar24 = (uint)*(byte *)(*puVar14 + DAT_07fceb74);
  *puVar14 = uVar24;
  if (uVar24 < 0x5f) {
    uVar24 = (int)(puVar14[2] + uVar24 * 0x40) >> 1;
  }
  else {
    uVar24 = (int)(puVar14[2] * 3 + uVar24 * 0x40) >> 2;
  }
  puVar14[2] = uVar24;
  uVar20 = (int)uVar24 >> 6;
  if (0x1f < (int)uVar24 % 0x40) {
    uVar20 = uVar20 + 1;
  }
  *(char *)(iVar25 + 8) = (char)uVar20;
  if ((uVar20 & 0xff) < 100) {
    if ((uVar20 & 0xff) == 99) goto LAB_07fcea90;
  }
  else {
    *(undefined1 *)(iVar25 + 8) = 99;
LAB_07fcea90:
    ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar11,0x96);
    if (extraout_r1_05 == 0) {
      if (param_1 < 1) {
        if (param_1 < 0) {
          ROM___aeabi_idiv /* 0x07f1dfe4 */(param_1,3);
          *(char *)(iVar25 + 8) = extraout_r1_00 + 'c';
        }
      }
      else {
        ROM___aeabi_idiv /* 0x07f1dfe4 */(param_1,3);
        *(char *)(iVar25 + 8) = 'c' - extraout_r1;
      }
      *(char *)(iVar25 + 9) = *(char *)(iVar25 + 8);
      if (*(char *)(iVar25 + 8) != 'c') goto LAB_07fcead2;
    }
    if (extraout_r1_05 != 0) {
      *(undefined1 *)(iVar25 + 8) = *(undefined1 *)(iVar25 + 9);
    }
  }
LAB_07fcead2:
  iVar19 = iVar25 + DAT_07fceb4c;
  if (((*(char *)(iVar19 + 0x15) == '\0') &&
      ((uint)*(ushort *)(iVar16 + 0x44) < *(uint *)(iVar19 + 0xc))) &&
     ((int)(uint)*(ushort *)(iVar16 + 0x42) < iVar26)) {
    bVar15 = *(char *)(iVar19 + 10) + 2;
    *(byte *)(iVar19 + 10) = bVar15;
    if ((5 < bVar15) && (0x176 < uVar11)) {
      *(undefined1 *)(iVar25 + 2) = 3;
    }
  }
  else if (*(char *)(iVar19 + 10) != '\0') {
    *(char *)(iVar19 + 10) = *(char *)(iVar19 + 10) + -1;
  }
  if (((uVar11 < 400) || (*(byte *)(iVar25 + 8) < 0x5f)) ||
     ((*(char *)(iVar25 + 0xd6f) != '\0' ||
      (*(uint *)(iVar19 + 0xc) <= (uint)*(ushort *)(iVar16 + 0x44))))) {
    if (*(char *)(iVar19 + 0xb) != '\0') {
      *(char *)(iVar19 + 0xb) = *(char *)(iVar19 + 0xb) + -1;
    }
  }
  else {
    bVar15 = *(char *)(iVar19 + 0xb) + 2;
    *(byte *)(iVar19 + 0xb) = bVar15;
    if (3 < bVar15) {
      *(undefined1 *)(iVar25 + 2) = 3;
    }
  }
  if ((uVar11 == 500) && (*(char *)(iVar25 + 2) != '\x03')) {
    *(undefined1 *)(iVar25 + 2) = 4;
  }
  *(undefined1 *)(iVar19 + 9) = *(undefined1 *)(iVar19 + 8);
LAB_07fcebb6:
  *(uint *)(iVar25 + 4) = uVar11 + 1;
  return 1;
}

