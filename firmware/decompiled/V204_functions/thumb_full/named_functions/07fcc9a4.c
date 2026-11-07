/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fcc9a4(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = DAT_07fcc9c4 + param_1 * 0x10;
  if (*(int *)(iVar2 + 4) != param_2) {
    *(int *)(iVar2 + 4) = param_2;
    uVar1 = FUN_07fc4440();
    *(undefined4 *)(iVar2 + 8) = uVar1;
  }
  return param_1;
}

