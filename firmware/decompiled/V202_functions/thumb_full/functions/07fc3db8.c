/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3db8(int param_1,uint param_2)

{
  if (param_1 == 0) {
    param_2 = *(uint *)(DAT_07fc3fe8 + 0x78) | param_2;
  }
  else {
    param_2 = *(uint *)(DAT_07fc3fe8 + 0x78) & ~param_2;
  }
  *(uint *)(DAT_07fc3fe8 + 0x78) = param_2;
  *(bool *)DAT_07fc3de0 = param_2 == 0;
  *(bool *)(DAT_07fc3de4 + 3) = param_2 == 0;
  return;
}

