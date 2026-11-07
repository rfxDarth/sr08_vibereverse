/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fcc894(int param_1,uint param_2)

{
  undefined4 uVar1;
  uint uVar2;
  
  uVar2 = 0;
  uVar1 = 0;
  if (*(int *)(DAT_07fcc8bc + 4) != 0) {
    for (; uVar2 < param_2; uVar2 = uVar2 + 1 & 0xff) {
      FUN_07fcc3f0(*(undefined4 *)(param_1 + uVar2 * 4));
    }
    uVar1 = 1;
  }
  return uVar1;
}

