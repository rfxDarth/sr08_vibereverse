/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


ushort FUN_07fc6d80(ushort param_1)

{
  int iVar1;
  undefined1 auStack_30 [8];
  char local_28 [4];
  ushort local_24 [8];
  
  iVar1 = func_0x07f0ff28();
  while( true ) {
    if ((param_1 < *(ushort *)(iVar1 + 4)) || (*(ushort *)(iVar1 + 6) < param_1)) {
      return 0;
    }
    func_0x07f0ff66(param_1,auStack_30);
    func_0x07f1014c(auStack_30,local_28,local_24,0,0);
    if (((uint)local_24[0] == DAT_07fc6de8 + 0xff) && (local_28[0] == '\x02')) break;
    if ((local_24[0] == DAT_07fc6de8) && (local_28[0] == '\x02')) {
      return 0;
    }
    param_1 = param_1 + 1;
  }
  return param_1;
}

