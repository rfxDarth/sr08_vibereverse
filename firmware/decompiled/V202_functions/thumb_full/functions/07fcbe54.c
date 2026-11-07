/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcbe54(byte *param_1,int param_2)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fcbe74;
  for (; param_2 != 0; param_2 = param_2 + -1) {
    do {
    } while (-1 < (int)((uint)puVar1[10] << 0x1a));
    *puVar1 = (ushort)*param_1;
    do {
    } while (-1 < (int)((uint)puVar1[10] << 0x19));
    param_1 = param_1 + 1;
  }
  return;
}

