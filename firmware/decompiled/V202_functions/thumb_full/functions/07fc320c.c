/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc320c(int param_1)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)func_0x07f1bbb0(DAT_07fc323c,param_1 * 0x100 + 10,4,2);
  *(undefined1 *)(DAT_07fc33cc + param_1 * 0xe + 0x5b) = 0;
  puVar1[1] = 0x13;
  *puVar1 = 1;
  func_0x07f1bbe2();
  return;
}

