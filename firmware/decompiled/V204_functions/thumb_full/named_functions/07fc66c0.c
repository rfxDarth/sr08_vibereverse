/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc66c0(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined1 *puVar2;
  
  iVar1 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
  if (iVar1 != 0) {
    *DAT_07fc698c = 200;
    *DAT_07fc6990 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  puVar2 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc66f4,9,4,1);
  *puVar2 = 1;
  ROM_ke_msg_send /* 0x07f1bbe2 */();
  return 0;
}

