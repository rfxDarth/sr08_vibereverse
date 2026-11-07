/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc5484(undefined4 param_1,int param_2)

{
  undefined1 uVar1;
  int iVar2;
  
  for (iVar2 = 0; iVar2 != 0x20; iVar2 = iVar2 + 1) {
    uVar1 = ROM_dia_rand /* 0x07f02976 */();
    *(undefined1 *)(param_2 + iVar2) = uVar1;
  }
  return 0;
}

