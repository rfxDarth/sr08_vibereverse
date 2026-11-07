/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc2e14(void)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar3 = FUN_07fc432c();
  iVar2 = DAT_07fc31dc;
  if (((0x1d < *(ushort *)(DAT_07fc2e9c + 0xc)) || (*(short *)(DAT_07fc2e9c + 0xe) != 0)) ||
     (*(ushort *)(DAT_07fc31dc + 0x42) >> 2 < 0x7d)) {
    uVar5 = uVar3;
    if (uVar3 < *(uint *)(DAT_07fc31dc + 0x70)) {
      uVar5 = uVar3 + 0x5000000;
    }
    if (DAT_07fc2e68 <= uVar5 - *(uint *)(DAT_07fc31dc + 0x70)) {
      uVar1 = *(undefined1 *)(DAT_07fc31dc + 7);
      uVar4 = FUN_07fc2df8();
      FUN_07fc3240(uVar1,uVar4,uVar4);
      *(uint *)(iVar2 + 0x70) = uVar3;
    }
  }
  FUN_07fc2ea0();
  return;
}

