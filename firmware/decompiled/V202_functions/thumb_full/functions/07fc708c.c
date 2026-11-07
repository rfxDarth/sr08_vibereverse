/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc708c(int param_1)

{
  byte bVar1;
  
  if (param_1 == 0) {
    bVar1 = 0x7c;
  }
  else {
    bVar1 = 0x7f;
  }
  *(byte *)(DAT_07fc70b0 + 5) = ~bVar1;
  FUN_07fc7700();
  FUN_07fc732c();
  *(undefined1 *)(DAT_07fc73a8 + 0x12) = 1;
  return;
}

