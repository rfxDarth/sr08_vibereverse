/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcbbf4(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x10);
  *(undefined2 *)(iVar1 + 10) = 0;
  iVar1 = ROM_attmdb_att_set_value /* 0x07f1003a */(*(short *)(iVar1 + 6) + 0xc,1);
  if (iVar1 != 0) {
    *DAT_07fcbc20 = 200;
    *DAT_07fcbc24 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  return;
}

