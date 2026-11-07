/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int FUN_07fc5f38(int param_1)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = *(int *)(_DAT_07fc5f5c + param_1 * 4);
  if (iVar1 == 0) {
    piVar2 = (int *)(_DAT_07fc5f5c + param_1 * 4);
    iVar1 = ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc5f60,param_1 * 0x100 + 10,4,0x12);
    *piVar2 = iVar1;
  }
  return iVar1;
}

