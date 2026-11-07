/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc5a80(uint param_1,char *param_2)

{
  ushort uVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar2 = FUN_07fca05c(0xfd);
  uVar1 = *(ushort *)(iVar2 + 4);
  uVar3 = 0x80;
  if ((uVar1 <= param_1) && (param_1 < (uint)*(byte *)(iVar2 + 6) + (uint)uVar1)) {
    *param_2 = (char)param_1 - (char)uVar1;
    uVar3 = 0;
  }
  return uVar3;
}

