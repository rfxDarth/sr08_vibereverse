/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5940(int param_1)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = *(int *)(param_1 + 0x10);
  piVar2 = (int *)(iVar1 + 0x10);
  while (*piVar2 != 0) {
    ROM_co_list_pop_front /* 0x07f02b24 */(piVar2);
    ROM_ke_free /* 0x07f1ba8a */();
  }
  *(undefined4 *)(param_1 + 0x10) = 0;
  ROM_ke_free /* 0x07f1ba8a */(iVar1);
  return;
}

