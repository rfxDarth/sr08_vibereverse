/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint FUN_07fc77fc(int param_1,ushort *param_2,ushort param_3,ushort param_4,byte *param_5)

{
  ushort uVar1;
  byte bVar2;
  ushort *puVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  char cVar7;
  char cVar8;
  ushort *puVar9;
  ushort *puVar10;
  int *piVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  byte *pbVar15;
  uint uVar16;
  int iStack_54;
  uint uStack_38;
  byte *pbStack_2c;
  byte bStack_24;
  byte bStack_23;
  int iStack_20;
  ushort auStack_1c [2];
  uint uStack_18;
  
  puVar3 = (ushort *)func_0x07f1b994(0x24);
  uStack_18 = 0;
  func_0x07f1e0de(puVar3,0x24);
  uVar4 = (uint)*param_5;
  uStack_38 = 0;
  if (uVar4 != 1) {
    uStack_38 = 0xffffff81;
  }
  pbStack_2c = param_5 + 4;
  cVar8 = '\0';
  iStack_54 = 0;
  uVar12 = 0;
  while( true ) {
    if ((uStack_38 * 0x1000000 != 0) || (uVar14 = uVar12 & 0xff, uVar4 <= uVar14)) break;
    bVar2 = param_5[uVar14 * 0xe + 3];
    if (2 < bVar2) {
      uStack_38 = 0x81;
      goto LAB_07fc7a16;
    }
    uVar13 = 0x16;
    puVar3[uVar14 * 0xb + 2] = param_5[uVar14 * 0xe + 2] & 0x3f;
    puVar9 = puVar3 + uVar14 * 0xb + 2;
    *(byte *)((int)puVar9 + 0x13) = bVar2;
    uVar5 = func_0x07f1b994(0x144,2);
    *(undefined4 *)(auStack_1c + uVar14 * 2 + -2) = uVar5;
    *(char *)(puVar9 + 9) = (char)puVar9[9] + '\a';
    uVar16 = 0xfd;
    uStack_18 = 0xfd;
    func_0x07f1e0ac(uVar5,_DAT_07fc7bb0,0xe4);
    puVar10 = puVar9 + 9;
    bVar2 = param_5[uVar14 * 0xe + 2];
    uVar4 = (uint)bVar2;
    if ((int)(uVar4 << 0x1c) < 0) {
      *(char *)puVar10 = (char)*puVar10 + '\x02';
      *(undefined2 *)(iStack_20 + 0x14) = *(undefined2 *)(param_5 + uVar14 * 0xe + 0xc);
      uVar16 = 0x1ff;
      uStack_18 = uVar16;
    }
    if ((int)(uVar4 << 0x1d) < 0) {
      *(char *)puVar10 = (char)*puVar10 + '\x02';
      uVar16 = uVar16 | 0x600;
      uStack_18 = uVar16;
    }
    if ((bVar2 & 1) != 0) {
      *(char *)puVar10 = (char)*puVar10 + '\x05';
      uVar16 = uVar16 + 0xf800;
      uStack_18 = uVar16;
      if ((int)(uVar4 << 0x1b) < 0) {
        *(uint *)(iStack_20 + 0x94) = *(uint *)(iStack_20 + 0x94) | _DAT_07fc7bac;
      }
    }
    if ((int)(uVar4 << 0x1e) < 0) {
      cVar7 = (char)*puVar10 + '\x03';
      *(char *)puVar10 = cVar7;
      uStack_18 = uVar16 + 0x70000;
      if ((int)(uVar4 << 0x1a) < 0) {
        *(uint *)(iStack_20 + 0xd0) = *(uint *)(iStack_20 + 0xd0) | _DAT_07fc7bac;
      }
    }
    else {
      cVar7 = (char)*puVar10;
    }
    *(char *)(puVar9 + 10) = cVar7;
    iStack_54 = iStack_20;
    piVar11 = (int *)(iStack_20 + 0xf4);
    uStack_38 = 0;
    for (uVar4 = 0; uVar4 < param_5[uVar14 * 0xe + 3]; uVar4 = uVar4 + 1) {
      *(char *)puVar10 = (char)*puVar10 + '\x03';
      uVar16 = uStack_18 |
               1 << (uVar13 - 1 & 0x1d) | 1 << (uVar13 - 2 & 0x1c) | 1 << (uVar13 - 3 & 0x1f);
      uStack_18 = uVar16;
      func_0x07f1e0ac(piVar11 + -4,_DAT_07fc7bb0 + 0xe4,0x30);
      bVar2 = pbStack_2c[uVar4] & 3;
      if (bVar2 == 3) {
        iVar6 = _DAT_07fc7bac + 1;
      }
      else {
        iVar6 = _DAT_07fc7bb4;
        if (bVar2 != 2) {
          if (bVar2 == 1) {
            *(char *)puVar10 = (char)*puVar10 + '\x01';
            *puVar9 = *puVar9 | (ushort)(0x40 << (uVar4 & 0xff));
            uStack_18 = uVar16 | 1 << (uVar13 & 0x1e);
            iVar6 = _DAT_07fc7bb8;
            if (-1 < (int)((uint)pbStack_2c[uVar4] << 0x1b)) {
              iVar6 = 0x201;
            }
          }
          else {
            uStack_38 = 0x81;
            iVar6 = 0;
          }
        }
      }
      *piVar11 = iVar6;
      piVar11 = piVar11 + 0xc;
      uVar13 = uVar13 + 4;
    }
    cVar8 = (char)*puVar10 + cVar8;
    pbStack_2c = pbStack_2c + 0xe;
    uVar4 = (uint)*param_5;
    uVar12 = uVar12 + 1;
  }
  if (uStack_38 * 0x1000000 == 0) {
    uStack_38 = func_0x07f10704(param_2,cVar8);
    uVar4 = (uint)*param_5;
  }
LAB_07fc7a16:
  *(char *)((int)puVar3 + 0x21) = (char)uVar4;
  uVar12 = 0;
  bStack_24 = 0;
  auStack_1c[0] = *param_2;
  puVar3[0xd] = auStack_1c[0];
  pbVar15 = param_5;
  do {
    if ((uStack_38 * 0x1000000 != 0) || (uVar4 <= uVar12)) {
      if (uStack_38 * 0x1000000 == 0) {
        *(ushort **)(param_1 + 0x10) = puVar3;
        *(undefined2 *)(param_1 + 0x16) = 0x26;
        *(undefined2 *)(param_1 + 0xe) = 1;
        *(undefined4 *)(param_1 + 4) = _DAT_07fc7bbc;
        uVar1 = *(ushort *)(param_1 + 0x14);
        puVar3[1] = uVar1;
        *(ushort **)(param_1 + 8) = puVar3 + 0x10;
        *puVar3 = param_4 << 0xf | param_3;
        func_0x07f1beb6(uVar1,0);
      }
      else {
        func_0x07f1ba8a(puVar3);
      }
      if (iStack_54 != 0) {
        func_0x07f1ba8a();
      }
      return uStack_38 & 0xff;
    }
    uVar4 = 0;
    uStack_38 = func_0x07f105f6(auStack_1c,_DAT_07fc7bc0,&uStack_18 + uVar12,0x1b,0,
                                *(undefined2 *)(param_1 + 0x14),iStack_54,
                                (param_4 & 0x1e) - 0x80 & 0xff);
    auStack_1c[0] = auStack_1c[0] + (byte)puVar3[uVar12 * 0xb + 0xb];
    if (uStack_38 == 0) {
      iVar6 = FUN_07fc75d4(puVar3,uVar12 & 0xff,3,0);
      if (iVar6 == 0) {
        *_DAT_07fc7bc4 = 200;
        *_DAT_07fc7bc8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      uStack_38 = func_0x07f1003a(iVar6,4,0,param_5 + uVar12 * 0xe + 8);
      if ((uStack_38 == 0) && (uStack_38 = 0, (int)((uint)param_5[uVar12 * 0xe + 2] << 0x1c) < 0)) {
        iVar6 = FUN_07fc75d4(puVar3,uVar12 & 0xff,8,0);
        if (iVar6 == 0) {
          *_DAT_07fc7bc4 = 200;
          *_DAT_07fc7bc8 = 8;
          do {
                    /* WARNING: Do nothing block with infinite loop */
          } while( true );
        }
        uStack_38 = func_0x07f1003a(iVar6,2,0,param_5 + uVar12 * 0xe + 0xe);
      }
    }
    while ((uStack_38 & 0xff) == 0) {
      if (param_5[uVar12 * 0xe + 3] <= uVar4) {
        uStack_38 = 0;
        break;
      }
      bStack_24 = pbVar15[uVar4 + 6];
      bStack_23 = pbVar15[uVar4 + 4] & 3;
      iVar6 = FUN_07fc75d4(puVar3,uVar12 & 0xff,0x15,uVar4 & 0xff);
      if (iVar6 == 0) {
        *_DAT_07fc7bc4 = 200;
        *_DAT_07fc7bc8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      uStack_38 = func_0x07f1003a(iVar6,2,0,&bStack_24);
      uVar4 = uVar4 + 1;
    }
    *(undefined1 *)((int)puVar3 + uVar12 * 0x16 + 0x19) = 1;
    pbVar15 = pbVar15 + 0xe;
    uVar4 = (uint)*param_5;
    uVar12 = uVar12 + 1;
  } while( true );
}

