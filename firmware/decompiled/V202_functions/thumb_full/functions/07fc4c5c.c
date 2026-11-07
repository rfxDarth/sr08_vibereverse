/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4
FUN_07fc4c5c(uint param_1,byte *param_2,undefined4 param_3,undefined4 param_4,undefined1 *param_5)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  undefined4 *puVar4;
  undefined *puVar5;
  uint uVar6;
  code *pcVar7;
  
  if (param_1 == DAT_07fc4d64) {
    if (*(uint *)(param_2 + 4) == 0) {
      *DAT_07fc4d74 = 200;
      *DAT_07fc4d78 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    if (DAT_07fc4d70 <= *(uint *)(param_2 + 4)) {
      *DAT_07fc4d74 = 200;
      *DAT_07fc4d78 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    func_0x07f1c054(*param_2 + DAT_07fc4d68,4);
  }
  else if (param_1 == DAT_07fc4d68) {
    bVar1 = *param_2;
    uVar6 = bVar1 - 1;
    if (9 < (uVar6 & 0xff)) {
      *DAT_07fc4d74 = 200;
      *DAT_07fc4d78 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar2 = uVar6 * 4;
    if (*(undefined **)(DAT_07fc4d7c + iVar2) == PTR_LAB_07fcb47a_1_07fc4d80) {
      puVar4 = (undefined4 *)(DAT_07fc4d7c + iVar2);
      *puVar4 = puVar4[10];
      FUN_07fc5754((uint)bVar1,*(undefined4 *)(param_2 + 4));
    }
  }
  else if (param_1 == DAT_07fc4d6c) {
    if (9 < *param_2 - 1) {
      *DAT_07fc4d74 = 200;
      *DAT_07fc4d78 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar2 = (*param_2 - 1) * 4;
    puVar5 = *(undefined **)(DAT_07fc4d7c + iVar2);
    if (puVar5 == PTR_LAB_07fcb478_1_07fc4d84) {
      puVar4 = (undefined4 *)(DAT_07fc4d7c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
    }
    else if (puVar5 == PTR_LAB_07fcb47a_1_07fc4d80) {
      pbVar3 = (byte *)func_0x07f1bbb0(DAT_07fc4d68,4,4,8);
      *pbVar3 = *param_2;
      *(undefined4 *)(pbVar3 + 4) = *(undefined4 *)(param_2 + 4);
      func_0x07f1bbe2();
    }
  }
  else {
    if (param_1 < DAT_07fc4d68 + 1) {
      return 1;
    }
    if (DAT_07fc4d68 + 10 < param_1) {
      return 1;
    }
    iVar2 = ((param_1 - 3 & 0xff) - 1) * 4;
    pcVar7 = *(code **)(DAT_07fc4d7c + iVar2);
    if (((pcVar7 != (code *)0x0) && (pcVar7 != (code *)PTR_LAB_07fcb47a_1_07fc4d80)) &&
       (pcVar7 != (code *)PTR_LAB_07fcb478_1_07fc4d84)) {
      puVar4 = (undefined4 *)(DAT_07fc4d7c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
      (*pcVar7)();
    }
  }
  *param_5 = 0;
  return 0;
}

