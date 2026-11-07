/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcab60(void)

{
  int iVar1;
  undefined2 *puVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  
  puVar2 = DAT_07fcab8c;
  iVar1 = DAT_07fcab88;
  uVar4 = 8;
  uVar3 = 8;
  if (*(char *)(DAT_07fcab88 + 2) == '\0') {
    uVar3 = 1;
  }
  DAT_07fcab8c[1] = uVar3;
  FUN_07fcaa64();
  if (*(char *)(iVar1 + 2) == '\0') {
    uVar4 = 1;
  }
  *puVar2 = uVar4;
  return;
}

