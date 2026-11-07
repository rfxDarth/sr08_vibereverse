/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc5fb0(undefined4 param_1,byte *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  byte bVar2;
  byte *pbVar3;
  uint uVar4;
  undefined2 *puVar5;
  int iVar6;
  
  puVar5 = _DAT_07fc633c;
  if (5 < *param_2 - 2) {
LAB_07fc6060:
    FUN_07fcc578();
    return 0;
  }
  uVar4 = param_4 >> 8;
  switch(*param_2) {
  case 2:
    bVar1 = param_2[2];
    *(byte *)(_DAT_07fc633c + uVar4 * 0x3d + 0x3d) = bVar1;
    if ((bVar1 & 1) != 0) {
      iVar6 = _DAT_07fc6338 + uVar4 * 0xe;
      func_0x07f1e0ac((int)puVar5 + uVar4 * 0x7a + 0x73,iVar6 + 0x5d,6,param_4,param_4);
      puVar5[0x3e] = (short)uRam07fc60e0;
      *(undefined1 *)((int)puVar5 + uVar4 * 0x7a + 0x79) = *(undefined1 *)(iVar6 + 0x5c);
      *puVar5 = (short)uRam07fc60e4;
      FUN_07fc3e90(0x2d000,0x1000);
      FUN_07fc3ea0(puVar5,0x2d000,0x7e,1);
      *(undefined1 *)(_DAT_07fc6338 + 100) = 1;
      FUN_07fccf38(0xb,1,uRam07fc60e8);
    }
    *(undefined1 *)(_DAT_07fc6338 + uVar4 * 0xe + 99) = 0;
    break;
  case 3:
    *(undefined1 *)(_DAT_07fc633c + uVar4 * 0x3d + 0x3d) = 0;
    *(undefined1 *)(iRam07fc6428 + uVar4 * 0xe + 99) = 0;
    FUN_07fc3220(uVar4);
    break;
  case 4:
    goto LAB_07fc6060;
  case 5:
    puVar5 = _DAT_07fc633c + uVar4 * 0x3d;
    func_0x07f1e0ac(puVar5 + 0x1e,param_2 + 2,0x17,param_4,param_4);
    bVar1 = *(byte *)(puVar5 + 1);
    bVar2 = 4;
    goto code_r0x07fc60d6;
  case 6:
    iVar6 = iRam07fc6454 + uVar4 * 0x7a;
    func_0x07f1e0ac(iVar6 + 99,param_2 + 2,0x10,param_4,param_4);
    *(byte *)(iVar6 + 2) = *(byte *)(iVar6 + 2) | 0x10;
    break;
  case 7:
    pbVar3 = param_2 + 2;
    if (*(short *)(param_2 + 0x12) == 0) {
      puVar5 = (undefined2 *)(iRam07fc64a4 + uVar4 * 0x7a);
      func_0x07f1e0ac(puVar5 + 2,pbVar3,0x1c,pbVar3,param_4);
      bVar1 = *(byte *)(puVar5 + 1);
      bVar2 = 1;
    }
    else {
      puVar5 = (undefined2 *)(iRam07fc6454 + uVar4 * 0x7a);
      func_0x07f1e0ac(puVar5 + 0x10,pbVar3,0x1c,pbVar3,param_4);
      bVar1 = *(byte *)(puVar5 + 1);
      bVar2 = 2;
    }
code_r0x07fc60d6:
    *(byte *)(puVar5 + 1) = bVar2 | bVar1;
  }
  return 0;
}

