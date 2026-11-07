/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc60ec(undefined4 param_1,byte *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  undefined1 *puVar8;
  int iVar9;
  int iVar10;
  undefined4 *puVar11;
  
  uVar5 = (uint)*param_2;
  if (2 < uVar5 - 4) {
    uVar7 = param_4 >> 8;
    if (uVar5 == 7) {
      iVar9 = _DAT_07fc64a4 + uVar7 * 0x7a;
      bVar1 = param_2[1];
      *(byte *)(iVar9 + 0x1e) = bVar1;
      FUN_07fc34a8(iVar9 + 0x16,8,8,param_4,param_4);
      iVar10 = iVar9 + 4;
      FUN_07fc34a8(iVar10,bVar1,0x10);
      uVar4 = func_0x07f02976();
      *(undefined2 *)(iVar9 + 0x14) = uVar4;
      *(byte *)(iVar9 + 2) = *(byte *)(iVar9 + 2) | 1;
      iVar6 = FUN_07fc98a0(uVar7);
      *(undefined1 *)(iVar6 + 0x1c) = *(undefined1 *)(iVar9 + 0x1e);
      *(undefined2 *)(iVar6 + 0x12) = *(undefined2 *)(iVar9 + 0x14);
      uVar4 = *(undefined2 *)(iVar9 + 0x18);
      uVar2 = *(undefined2 *)(iVar9 + 0x16);
      uVar3 = *(undefined2 *)(iVar9 + 0x1c);
      *(undefined2 *)(iVar6 + 0x18) = *(undefined2 *)(iVar9 + 0x1a);
      *(undefined2 *)(iVar6 + 0x1a) = uVar3;
      *(undefined2 *)(iVar6 + 0x14) = uVar2;
      *(undefined2 *)(iVar6 + 0x16) = uVar4;
      func_0x07f1e0ac(iVar6 + 2,iVar10,0x10);
      FUN_07fc98a0(uVar7);
      func_0x07f1bbe2();
      *(undefined4 *)(_DAT_07fc642c + uVar7 * 4 + 0x60) = 0;
    }
    else {
      if (uVar5 != 0) {
        *_DAT_07fc6420 = 200;
        *_DAT_07fc6424 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      *(undefined1 *)(_DAT_07fc64a0 + uVar7 * 0xe + 99) = 1;
      *(undefined1 *)(_DAT_07fc64a4 + uVar7 * 0x7a + 2) = 0;
      iVar10 = _DAT_07fc642c + uVar7 * 4;
      puVar8 = *(undefined1 **)(iVar10 + 0x5c);
      puVar11 = (undefined4 *)(iVar10 + 0x5c);
      if (puVar8 == (undefined1 *)0x0) {
        puVar8 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc61dc,param_4 & 0xffffff0a | 10,4,0x1e);
        *puVar8 = 1;
        *puVar11 = puVar8;
        func_0x07f1e0ac(puVar8 + 2,_DAT_07fc61e0,7);
        puVar8[1] = 1;
      }
      func_0x07f1bbe2(puVar8);
      *puVar11 = 0;
    }
  }
  return 0;
}

