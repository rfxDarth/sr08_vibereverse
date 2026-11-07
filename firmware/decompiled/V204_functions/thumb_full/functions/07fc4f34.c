/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc4f34(int param_1,int param_2)

{
  int iVar1;
  undefined1 auStack_1f [15];
  
  iVar1 = DAT_07fc522c;
  *(int *)(DAT_07fc522c + 0x38) = *(int *)(DAT_07fc522c + 0x38) + param_1;
  func_0x07f1e0de(auStack_1f,0xf);
  if ((((int)((uint)*(byte *)(iVar1 + 0x14) << 0x1c) < 0) && (*(byte *)(iVar1 + 0x10) < 5)) &&
     ((1 << (uint)*(byte *)(iVar1 + 0x10) & 0x16U) != 0)) {
    *(int *)(iVar1 + 0x2c) = *(int *)(iVar1 + 0x2c) + param_1;
    FUN_07fc24d0();
  }
  *(uint *)(DAT_07fc4fc4 + 0x70) = *(uint *)(DAT_07fc4fc4 + 0x70) | 2;
  if (param_2 != 0) {
    *(int *)(iVar1 + 0x3c) = *(int *)(iVar1 + 0x3c) + param_1;
  }
  FUN_07fc50b4();
  return;
}

