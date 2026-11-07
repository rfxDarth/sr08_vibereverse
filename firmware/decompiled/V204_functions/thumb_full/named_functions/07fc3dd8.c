/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3dd8(undefined2 *param_1,undefined2 *param_2,short *param_3)

{
  int iVar1;
  
  *param_3 = -*param_3;
  iVar1 = DAT_07fc3e00;
  *(undefined2 *)(DAT_07fc3e00 + 0xce) = *param_1;
  *(undefined2 *)(iVar1 + 0xd0) = *param_2;
  *(short *)(iVar1 + 0xd2) = *param_3;
  FUN_07fc2ed6(DAT_07fc3e04 + 0x5c,param_3);
  return;
}

