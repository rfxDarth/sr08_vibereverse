/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fc3584(void)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  char extraout_r1;
  uint uVar4;
  int iVar5;
  int extraout_r1_00;
  int extraout_r1_01;
  byte bVar6;
  int iVar7;
  char cVar8;
  uint uVar9;
  byte bVar10;
  uint uVar11;
  ushort uVar12;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  iVar1 = FUN_07fc37d0();
  if (iVar1 == 0) {
LAB_07fc36d2:
    uVar3 = 1;
  }
  else {
    uVar9 = 1;
    bVar6 = *(byte *)(DAT_07fc37c0 + 0x40) ^ 1;
    uVar4 = *(uint *)(DAT_07fc37c4 + 0x20);
    if (*(byte *)(DAT_07fc37c0 + 0x44) < 2) {
      bVar10 = 0;
    }
    else {
      bVar10 = *(byte *)(DAT_07fc37c0 + 0x4c);
    }
    if ((uVar4 ^ 1) != 0 || bVar6 != 0) {
      bVar10 = 0;
    }
    if (uVar4 == 2) {
      if (*(char *)(DAT_07fc37c0 + 0x41) != '\x01') {
LAB_07fc369c:
        uVar4 = *DAT_07fc3a34 - *(int *)(DAT_07fc39f8 + 0x60);
        if (4 < uVar4) {
          *(undefined1 *)(DAT_07fc3a30 + 10) = 2;
        }
        if (((*(uint *)(DAT_07fc3a30 + 0x14) & DAT_07fc37c8) == 0) && (10 < uVar4)) {
          if ((*(uint *)(DAT_07fc3a30 + 0x14) & 0x33) != 0) {
            FUN_07fc3b78(0);
          }
          FUN_07fc3a38(0xf0000);
        }
        goto LAB_07fc36d2;
      }
      if (*(byte *)(DAT_07fc37c0 + 0x58) < 3) goto LAB_07fc363c;
      bVar10 = *(byte *)(DAT_07fc37c0 + 0x61);
      bVar6 = *(byte *)(DAT_07fc37c0 + 0x60);
    }
    else {
      if (uVar4 == 0x2000) {
        FUN_07fc8f48(0x2000,7);
        FUN_07fc4458(100);
        FUN_07fcb770(&iStack_24);
        iVar5 = iStack_24;
        uVar11 = iStack_18 - iStack_24;
        FUN_07fc85e0();
        iVar1 = DAT_07fc3834;
        *(short *)(DAT_07fc3834 + 0xca) = (short)(uVar11 >> 4);
        *(short *)(iVar1 + 200) = (short)((uint)(iStack_1c - iVar5) >> 4);
        *(short *)(iVar1 + 0xc6) = (short)((uint)(iStack_20 - iVar5) >> 3);
        if (*(short *)(DAT_07fc39f8 + 0x3e) != 0) {
          *(short *)(iVar1 + 0xcc) = *(short *)(DAT_07fc39f8 + 0x3e);
        }
      }
      if ((uVar4 ^ 1) != 0 || bVar6 != 0) goto LAB_07fc369c;
LAB_07fc363c:
      bVar6 = 0;
    }
    *(undefined1 *)(DAT_07fc3a0c + 10) = 1;
    iVar1 = DAT_07fc39f8;
    *(undefined4 *)(DAT_07fc39f8 + 0x60) = *DAT_07fc3a10;
    if (bVar10 != 0) {
      uVar11 = *(uint *)(iVar1 + 0x58);
      uVar4 = (uint)bVar10;
      if (*(int *)(iVar1 + 100) == 0) {
        *(uint *)(iVar1 + 100) = uVar4;
      }
      uVar2 = FUN_07fc4440();
      if (uVar2 < uVar11) {
        uVar2 = uVar2 + 0x5000000;
      }
      if (uVar11 != 0) {
        if (*(char *)(iVar1 + 3) == '\x02') {
          iVar1 = *DAT_07fc3a04;
          iVar5 = DAT_07fc3a04[1];
          iVar7 = DAT_07fc3a04[2];
          uVar12 = 0;
          for (; uVar9 < (iVar7 - 1U & iVar1 - iVar5); uVar9 = uVar9 + 1) {
            FUN_07fc2fa4(DAT_07fc3a04,uVar9,&iStack_24);
            uVar12 = uVar12 + (byte)iStack_24;
          }
          uVar9 = (uint)uVar12;
          if (uVar9 < 0x82) {
            iVar1 = func_0x07f1dfb8(uVar9 * 10,0x41);
            uVar9 = iVar1 + 0x50;
          }
          else if (uVar12 < 0xa0) {
            uVar9 = uVar9 * 2 - 0xa0;
          }
          if ((int)uVar4 <= (int)uVar9) {
            uVar4 = uVar9;
          }
          iVar1 = DAT_07fc3aac;
          if (0xb8 < (int)uVar4) {
            uVar4 = 0xb9;
          }
        }
        else {
          uVar2 = uVar2 - uVar11;
          if (uVar2 < DAT_07fc37cc) {
            iVar5 = *(int *)(iVar1 + 100);
            if ((int)uVar4 < iVar5) {
              iVar7 = func_0x07f1dfb8((iVar5 - uVar4) * uVar2,DAT_07fc37cc);
              uVar3 = FUN_07fc4440();
              func_0x07f1dfb8(uVar3,3);
              uVar4 = (iVar5 - iVar7) - extraout_r1_00;
            }
            else {
              iVar7 = func_0x07f1dfb8((uVar4 - iVar5) * uVar2,DAT_07fc37cc);
              uVar3 = FUN_07fc4440();
              func_0x07f1dfb8(uVar3,3);
              uVar4 = iVar7 + iVar5 + extraout_r1_01;
            }
          }
        }
      }
      iVar5 = DAT_07fc3aa4;
      *(short *)(iVar1 + 0x2a) = (short)uVar4;
      *(uint *)(iVar1 + 100) = uVar4;
      *(char *)(iVar5 + 8) = (char)uVar4;
      if (bVar6 < 0x5d) {
        bVar6 = 0x5c;
      }
      uVar3 = FUN_07fc4440();
      *(byte *)(iVar1 + 0xb) = bVar6;
      cVar8 = (char)*(ushort *)(iVar1 + 0x2a);
      if (*(ushort *)(iVar1 + 0x2a) < 0x50) {
        cVar8 = 'P' - cVar8;
      }
      else {
        cVar8 = cVar8 + -0x50;
      }
      *(char *)(iVar1 + 9) = cVar8 + 'i';
      func_0x07f1dfb8(uVar3,5);
      *(char *)(iVar1 + 10) = extraout_r1 + cVar8 + '?';
      iVar7 = *(int *)(DAT_07fc3aa8 + 0x20);
      iVar5 = iVar7 + -7;
      if (iVar7 < 7) {
        iVar5 = 7 - iVar7;
      }
      cVar8 = 'd' - (char)((uint)(iVar5 - (iVar5 >> 0x1f)) >> 1);
      if (cVar8 < '\x01') {
        cVar8 = '\0';
      }
      if ('^' < cVar8) {
        cVar8 = '_';
      }
      *(char *)(iVar1 + 0xc) = 'd' - cVar8;
    }
    uVar3 = 0;
  }
  FUN_07fc7380(uVar3);
  return;
}

