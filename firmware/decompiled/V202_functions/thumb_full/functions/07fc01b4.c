/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc01b4(undefined4 param_1,int param_2)

{
  undefined2 uVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = func_0x07f11956(param_1,3,0);
  uVar1 = func_0x07f12cf4();
  *(undefined2 *)(iVar2 + 2) = uVar1;
  func_0x07f11978(iVar2);
  uVar3 = func_0x07f12cf4();
  if (*(ushort *)(param_2 + 2) <= uVar3) {
    uVar3 = (uint)*(ushort *)(param_2 + 2);
  }
  func_0x07f11b46(param_1,uVar3);
  return 0;
}

