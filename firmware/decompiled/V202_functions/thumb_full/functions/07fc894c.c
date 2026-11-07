/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fc894c(uint param_1)

{
  undefined8 uVar1;
  
  if (param_1 >> 0xf != 0) {
    uVar1 = func_0x07f1e00c(*(undefined4 *)(DAT_07fc8988 + 0x10),0,param_1,0);
    return ((uint)uVar1 >> 10) + (int)((ulonglong)uVar1 >> 0x20) * 0x400000;
  }
  return *(int *)(DAT_07fc8988 + 0x10) * param_1 >> 10;
}

