/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fca7a0(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined8 uVar6;
  
  if (*DAT_07fcab88 == '\x01') {
    do {
    } while ((int)((uint)*DAT_07fca7e8 << 0x1d) < 0);
    uVar1 = DAT_07fca7e8[3];
    uVar2 = DAT_07fca7e8[2];
    *DAT_07fcab88 = '\0';
    iVar5 = (uint)uVar1 * 0x10000 + (uint)uVar2;
    uVar6 = FUN_07fc1928(0xd4000000,0x30,iVar5);
    iVar3 = DAT_07fca7ec;
    *(undefined8 *)(DAT_07fca7ec + 0x50) = uVar6;
    uVar4 = func_0x07f1dfb8(DAT_07fca7f0,iVar5);
    *(undefined4 *)(iVar3 + 8) = uVar4;
    uVar4 = func_0x07f1dfb8(iVar5 * 0x40,0x14);
    *(undefined4 *)(iVar3 + 0x10) = uVar4;
  }
  return;
}

