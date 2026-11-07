/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc686c(undefined4 param_1,undefined2 *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  int iVar2;
  short *psVar3;
  undefined2 *puVar4;
  undefined1 *puVar5;
  uint uVar6;
  short sVar7;
  ushort auStack_24 [2];
  byte bStack_20;
  int iStack_1c;
  short asStack_18 [2];
  
  iVar2 = func_0x07f1bf1a(param_3);
  if (iVar2 != 0) {
    return 2;
  }
  psVar3 = (short *)FUN_07fcb080(0xfd);
  sVar7 = 0;
  bStack_20 = 0;
  iVar2 = FUN_07fc5a88(*param_2);
  bVar1 = bStack_20;
  auStack_24[0] = 0;
  if (iVar2 == 0) {
    uVar6 = (uint)bStack_20;
    if (((0x2aU >> uVar6 & 1) == 0) ||
       (**(ushort **)(_DAT_07fc6984 + uVar6 * 0x14) != _DAT_07fc6988)) {
      puVar5 = (undefined1 *)
               func_0x07f1bbb0(_DAT_07fc6994,
                               param_4 & (uint)(int)*psVar3 >> 0xf & 0xffffff00 |
                               DAT_07fc6be4 & (int)*psVar3,param_3,4);
      *(ushort *)(puVar5 + 2) = (ushort)bVar1;
      *puVar5 = (char)(param_4 >> 8);
      func_0x07f1bbe2();
      func_0x07f1beb6(param_3,1);
      return 0;
    }
    if (7 < param_4 >> 8) {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    FUN_07fc57b8(uVar6,asStack_18,&iStack_1c);
    if (asStack_18[0] == 0) {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    if (iStack_1c == 0) {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    auStack_24[0] = (ushort)*(byte *)(iStack_1c + (param_4 >> 8));
    sVar7 = 2;
  }
  puVar4 = (undefined2 *)func_0x07f1bbb0(DAT_07fc6bec,param_4,param_3,sVar7 + 6);
  *puVar4 = *param_2;
  puVar4[1] = sVar7;
  *(char *)(puVar4 + 2) = (char)iVar2;
  if (iVar2 == 0) {
    func_0x07f1e0ac((int)puVar4 + 5,auStack_24,sVar7);
  }
  func_0x07f1bbe2(puVar4);
  return 0;
}

