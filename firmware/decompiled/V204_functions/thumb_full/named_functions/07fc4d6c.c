/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4
FUN_07fc4d6c(uint param_1,byte *param_2,undefined4 param_3,undefined4 param_4,undefined1 *param_5)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  undefined4 *puVar4;
  undefined *puVar5;
  uint uVar6;
  code *pcVar7;
  
  if (param_1 == DAT_07fc4e74) {
    if (*(uint *)(param_2 + 4) == 0) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    if (DAT_07fc4e80 <= *(uint *)(param_2 + 4)) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    ROM_ke_timer_set /* 0x07f1c054 */(*param_2 + DAT_07fc4e78,4);
  }
  else if (param_1 == DAT_07fc4e78) {
    bVar1 = *param_2;
    uVar6 = bVar1 - 1;
    if (9 < (uVar6 & 0xff)) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar2 = uVar6 * 4;
    if (*(undefined **)(DAT_07fc4e8c + iVar2) == PTR_FUN_07fcc4ae_1_07fc4e90) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = puVar4[10];
      FUN_07fc575c((uint)bVar1,*(undefined4 *)(param_2 + 4));
    }
  }
  else if (param_1 == DAT_07fc4e7c) {
    if (9 < *param_2 - 1) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar2 = (*param_2 - 1) * 4;
    puVar5 = *(undefined **)(DAT_07fc4e8c + iVar2);
    if (puVar5 == PTR_FUN_07fcc4ac_1_07fc4e94) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
    }
    else if (puVar5 == PTR_FUN_07fcc4ae_1_07fc4e90) {
      pbVar3 = (byte *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc4e78,4,4,8);
      *pbVar3 = *param_2;
      *(undefined4 *)(pbVar3 + 4) = *(undefined4 *)(param_2 + 4);
      ROM_ke_msg_send /* 0x07f1bbe2 */();
    }
  }
  else {
    if (param_1 < DAT_07fc4e78 + 1) {
      return 1;
    }
    if (DAT_07fc4e78 + 10 < param_1) {
      return 1;
    }
    iVar2 = ((param_1 - 3 & 0xff) - 1) * 4;
    pcVar7 = *(code **)(DAT_07fc4e8c + iVar2);
    if (((pcVar7 != (code *)0x0) && (pcVar7 != (code *)PTR_FUN_07fcc4ae_1_07fc4e90)) &&
       (pcVar7 != (code *)PTR_FUN_07fcc4ac_1_07fc4e94)) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
      (*pcVar7)();
    }
  }
  *param_5 = 0;
  return 0;
}

