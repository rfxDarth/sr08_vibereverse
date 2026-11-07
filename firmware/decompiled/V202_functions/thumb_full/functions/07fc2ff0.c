/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fc2ff0(void)

{
  return *(int *)(DAT_07fc3004 + 0x3c) - 1U &
         *(int *)(DAT_07fc3004 + 0x38) + ~*(uint *)(DAT_07fc3004 + 0x34);
}

