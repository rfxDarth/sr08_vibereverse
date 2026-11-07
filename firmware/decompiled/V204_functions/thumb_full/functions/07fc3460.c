/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1 FUN_07fc3460(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 local_18 [4];
  
  iVar1 = 0;
  do {
    if (iVar1 + 4 == 0x1c) {
      FUN_07fcc578(param_1,param_2,param_3,param_4);
      return 0;
    }
    iVar2 = (**(code **)(_DAT_07fc34a4 + iVar1))(param_1,param_2,param_3,param_4,local_18);
    iVar1 = iVar1 + 4;
  } while (iVar2 != 0);
  return local_18[0];
}

