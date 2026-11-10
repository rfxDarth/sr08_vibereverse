// rea decompile_all
// name: dispatch_callback_table_command_and_clear_result
// address: 0x7fc4d6c
// body: available
// range: 0x7fc4d6c-0x7fc4e73 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4
dispatch_callback_table_command_and_clear_result(uint param_1,byte *param_2,undefined4 param_3,undefined4 param_4,undefined1 *param_5)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  undefined4 *puVar4;
  code *pcVar5;
  uint uVar6;
  
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
    ke_timer_set(*param_2 + DAT_07fc4e78,4);
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
    if (*(code **)(DAT_07fc4e8c + iVar2) == DAT_07fc4e90) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = puVar4[10];
      select_fast_rom_write_allocate_initialize_at_575c((uint)bVar1,*(undefined4 *)(param_2 + 4));
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
    pcVar5 = *(code **)(DAT_07fc4e8c + iVar2);
    if (pcVar5 == DAT_07fc4e94) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
    }
    else if (pcVar5 == DAT_07fc4e90) {
      pbVar3 = (byte *)ke_msg_alloc(DAT_07fc4e78,4,4,8);
      *pbVar3 = *param_2;
      *(undefined4 *)(pbVar3 + 4) = *(undefined4 *)(param_2 + 4);
      ke_msg_send();
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
    pcVar5 = *(code **)(DAT_07fc4e8c + iVar2);
    if (((pcVar5 != (code *)0x0) && (pcVar5 != DAT_07fc4e90)) && (pcVar5 != DAT_07fc4e94)) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
      (*pcVar5)();
    }
  }
  *param_5 = 0;
  return 0;
}

