/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc98a0(int param_1)

{
  undefined2 *puVar1;
  int iVar2;
  
  iVar2 = _DAT_07fc98cc + param_1 * 4;
  if (*(int *)(iVar2 + 0x60) != 0) {
    return;
  }
  puVar1 = (undefined2 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc98d0,param_1 * 0x100 + 10,4,0x1e);
  *puVar1 = 0x107;
  *(undefined2 **)(iVar2 + 0x60) = puVar1;
  return;
}

