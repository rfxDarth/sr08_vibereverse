/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc0bac(undefined4 param_1,int param_2,uint param_3)

{
  char cVar1;
  undefined2 uVar2;
  undefined1 uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  char *pcVar8;
  undefined1 *puVar9;
  uint uVar10;
  undefined4 extraout_r1;
  ushort *puVar11;
  uint uVar12;
  ushort *puVar13;
  int iVar14;
  ushort *puVar15;
  bool bVar16;
  undefined8 uVar17;
  
  iVar4 = func_0x07f1bf1a(param_3);
  uVar10 = param_3 >> 8;
  bVar16 = iVar4 == 0;
  uVar6 = uVar10;
  do {
    if (bVar16) goto LAB_07fc0e0c;
    iVar4 = uVar6 * 4;
    iVar14 = *(int *)(_DAT_07fc0e9c + iVar4);
    cVar1 = *(char *)(param_2 + 2);
    uVar17 = func_0x07f02ae0(*(int *)(_DAT_07fc0ea8 + 0x30) + (uint)*(byte *)(param_2 + 6) * 10);
    puVar11 = (ushort *)uVar17;
    if (*(int *)(iVar14 + 4) == 0) {
      if (cVar1 != '\x02') goto LAB_07fc0e0c;
LAB_07fc0bfa:
      if (*(ushort *)(param_2 + 4) < 2) {
        uVar6 = func_0x07f12cf4();
      }
      else {
        uVar6 = (uint)*puVar11;
      }
      uVar12 = func_0x07f12cf4();
      bVar16 = uVar12 < uVar6;
      if (bVar16) {
        uVar6 = 2;
      }
      iVar5 = func_0x07f1bbb0(_DAT_07fc0eac,_DAT_07fc0ea0,param_3,uVar6 + 0x4c & 0xffff);
      *(int *)(iVar14 + 4) = iVar5;
      *(short *)(iVar5 + 2) = (short)uVar6 + 4;
      if (bVar16) {
        uVar3 = 0x34;
      }
      else {
        uVar3 = 0;
      }
      uVar17 = CONCAT44(*(undefined1 **)(iVar14 + 4),puVar11);
      **(undefined1 **)(iVar14 + 4) = uVar3;
    }
    else if (cVar1 != '\x01') {
      FUN_07fc0a98(uVar10);
      uVar17 = CONCAT44(extraout_r1,puVar11);
      if (*(int *)(iVar14 + 4) == 0) goto LAB_07fc0bfa;
    }
    uVar6 = (uint)((ulonglong)uVar17 >> 0x20);
    iVar5 = *(int *)(iVar14 + 4);
    bVar16 = true;
  } while (iVar5 == 0);
  puVar11 = (ushort *)(iVar5 + 6);
  uVar12 = (uint)*(ushort *)(param_2 + 4);
  puVar13 = (ushort *)(iVar5 + 2);
  puVar15 = (ushort *)(iVar5 + 4);
  uVar6 = (uint)*(ushort *)(iVar5 + 4);
  if ((uint)*puVar13 < uVar6 + uVar12) {
    func_0x07f1e0ac(uVar6 + (int)puVar11,(int)uVar17,*puVar13 - uVar6);
    *puVar15 = *puVar13;
    **(undefined1 **)(iVar14 + 4) = 0x34;
  }
  else {
    func_0x07f1e0ac(uVar6 + (int)puVar11,(int)uVar17,uVar12);
    *puVar15 = *puVar15 + (short)uVar12;
  }
  if (*puVar15 < 4) goto LAB_07fc0e0c;
  uVar6 = *puVar11 + 4;
  if (uVar6 < *puVar13) {
    *puVar13 = (ushort)uVar6;
    if ((uVar6 & 0xffff) < (uint)*puVar15) {
      *puVar15 = (ushort)uVar6;
LAB_07fc0cb6:
      **(undefined1 **)(iVar14 + 4) = 0x34;
    }
  }
  else if (*puVar13 < uVar6) goto LAB_07fc0cb6;
  if (*puVar15 != *puVar13) goto LAB_07fc0e0c;
  iVar5 = *(int *)(iVar14 + 4) + -0xc;
  iVar7 = func_0x07f18e02(uVar10,puVar11);
  if ((**(char **)(iVar14 + 4) != '\0') || (iVar7 == _DAT_07fc0ea0)) {
    FUN_07fc0a98(uVar10);
    goto LAB_07fc0e0c;
  }
  *(ushort *)(iVar5 + 6) = (ushort)iVar7 | (ushort)(uVar10 * 0x100);
  uVar6 = (uint)*puVar13;
  iVar5 = func_0x07f1b994(uVar6,2);
  func_0x07f1e0ac(iVar5,puVar11,*puVar13);
  if (iVar5 == 0) goto LAB_07fc0e0c;
  *(undefined2 *)(*(int *)(iVar14 + 4) + 4) = 0;
  iVar7 = *(int *)(iVar14 + 4);
  uVar3 = func_0x07f02894(iVar7 + 6,iVar7 + 4,iVar7 + 2,iVar5,uVar6,uVar10,2);
  **(undefined1 **)(iVar14 + 4) = uVar3;
  func_0x07f1ba8a(iVar5);
  pcVar8 = *(char **)(iVar14 + 4);
  if ((*(short *)(pcVar8 + 2) != 0) && (*pcVar8 == '\0')) {
    if ((*(ushort *)(pcVar8 + 8) - 0x40 < 0x40) &&
       ((iVar4 = func_0x07f14f10(uVar10,(uint)*(ushort *)(pcVar8 + 8),3), iVar4 != 0 &&
        (*(short *)(iVar4 + 0x14) == 0)))) {
      func_0x07f028ac(uVar10,*(undefined2 *)(*(int *)(iVar14 + 4) + 8),0);
    }
    goto LAB_07fc0e0c;
  }
  if (*(ushort *)(pcVar8 + 8) - 0x40 < 0x40) {
    if (*pcVar8 == '0') {
      if ((int)((uint)*(ushort *)(_DAT_07fc0eb0 + 0x28) << 0x18) < 0) {
        func_0x07f1bc1c(pcVar8 + -0xc,*(undefined2 *)(*_DAT_07fc0eb4 + 0x2c),param_3);
      }
      func_0x07f1bc36(*(int *)(iVar14 + 4) + -0xc);
    }
    else {
      func_0x07f02b5c(*(int *)(_DAT_07fc0e9c + iVar4) + 8,pcVar8 + -0xc);
      iVar4 = func_0x07f028b6(uVar10,*(int *)(iVar14 + 4) + 6);
      uVar2 = *(undefined2 *)(*(int *)(iVar14 + 4) + 8);
      if (iVar4 == 0x46) {
        iVar4 = func_0x07f14f10(uVar10,uVar2,3);
        if (iVar4 != 0) {
          puVar9 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc0ea4,uVar10 * 0x100 + 10,param_3,4);
          *(undefined2 *)(puVar9 + 2) = *(undefined2 *)(iVar4 + 0xc);
          *puVar9 = 0x10;
          goto LAB_07fc0dcc;
        }
      }
      else {
        iVar4 = func_0x07f14f10(uVar10,uVar2,3);
        if ((iVar4 != 0) && (*(short *)(iVar4 + 0x14) == 0)) {
          func_0x07f028ac(uVar10,*(undefined2 *)(*(int *)(iVar14 + 4) + 8),0);
        }
      }
    }
  }
  else {
LAB_07fc0dcc:
    func_0x07f1bbe2();
  }
  *(undefined4 *)(iVar14 + 4) = 0;
LAB_07fc0e0c:
  func_0x07f02ac6(*(undefined1 *)(param_2 + 6));
  return 0;
}

