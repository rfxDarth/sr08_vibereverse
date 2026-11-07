/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc5db4(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_07fcb080(0xfd);
  ROM_attmdb_att_set_value /* 0x07f1003a */(*(short *)(param_2 + 2) + *(short *)(iVar1 + 4),*(undefined2 *)(param_2 + 4),0,
                  param_2 + 6);
  return 0;
}

