/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fca148(int param_1,uint param_2)

{
  uint uVar1;
  
  for (uVar1 = 0; param_2 != uVar1; uVar1 = uVar1 + 1) {
    if ((uVar1 & 0xf) == 0) {
      FUN_07fc521c(DAT_07fca174);
    }
    FUN_07fc521c(s__02X_07fca178,*(undefined1 *)(param_1 + uVar1));
  }
  FUN_07fc521c(DAT_07fca174);
  return;
}

