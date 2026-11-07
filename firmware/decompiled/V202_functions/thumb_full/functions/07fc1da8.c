/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc1da8(void)

{
  int iVar1;
  int iVar2;
  
  FUN_07fc1e50();
  iVar1 = FUN_07fc7a90(0xf);
  iVar2 = FUN_07fc7a90(0x70);
  if (iVar1 == 0x11) {
    FUN_07fc7ad8(DAT_07fc1df0);
    FUN_07fc4344(10);
    if (iVar2 == 0x28) {
      *(undefined1 *)(DAT_07fc20f4 + 0x10) = 3;
    }
    else {
      *(undefined1 *)(DAT_07fc20f4 + 0x10) = 2;
      FUN_07fc7b5c(0x1e,5);
    }
    FUN_07fc7ad8(DAT_07fc1df4);
  }
  return;
}

