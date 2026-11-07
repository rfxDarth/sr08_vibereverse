/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc5738(uint param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  for (iVar2 = 8; iVar2 != 0; iVar2 = iVar2 + -1) {
    uVar3 = param_1 >> 1;
    uVar1 = param_1 & 1;
    param_1 = uVar3;
    if (uVar1 != 0) {
      param_1 = uVar3 ^ DAT_07fc5750;
    }
  }
  return;
}

