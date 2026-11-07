/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fc1b88(uint param_1,uint param_2)

{
  if (((int)param_2 < 0) && (param_1 = param_1 + 1, (param_2 & 0x7fffffff) == 0)) {
    param_1 = param_1 & 0xfffffffe;
  }
  return param_1;
}

