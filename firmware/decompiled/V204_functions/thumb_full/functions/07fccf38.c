/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fccf38(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = DAT_07fccf58;
  *(undefined2 *)(DAT_07fccf58 + param_1 * 0x10) = 0x101;
  iVar2 = iVar2 + param_1 * 0x10;
  *(undefined4 *)(iVar2 + 0xc) = param_3;
  *(undefined4 *)(iVar2 + 4) = param_2;
  uVar1 = FUN_07fc4440();
  *(undefined4 *)(iVar2 + 8) = uVar1;
  return param_1;
}

