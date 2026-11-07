/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc6724(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined1 *puVar2;
  uint uVar3;
  
  uVar3 = param_4;
  iVar1 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
  if (iVar1 == 0) {
    iVar1 = FUN_07fcb080(0xfd);
    puVar2 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc6770,4,param_3,4,uVar3);
    *puVar2 = (char)(param_4 >> 8);
    if (param_4 >> 0xb != 0) {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    *(short *)(puVar2 + 2) = *param_2 - *(short *)(iVar1 + 4);
    ROM_ke_msg_send /* 0x07f1bbe2 */();
  }
  return 0;
}

