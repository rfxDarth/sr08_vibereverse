/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc77f8(void)

{
  byte bVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  
  iVar2 = DAT_07fc7870;
  bVar1 = *(byte *)(DAT_07fc7870 + 0x40);
  if ((bVar1 & 1) != 0) {
    FUN_07fc78d4(0x27,*(undefined1 *)(DAT_07fc7870 + 0x4a));
    FUN_07fc78d4(0x29,*(undefined1 *)(iVar2 + 0x4c));
    bVar1 = *(byte *)(iVar2 + 0x40);
  }
  uVar4 = (uint)bVar1;
  if ((int)(uVar4 << 0x1e) < 0) {
    FUN_07fc78d4(0x2d,*(undefined1 *)(iVar2 + 0x45));
    FUN_07fc78d4(0x2f,*(undefined1 *)(iVar2 + 0x46));
    uVar4 = (uint)*(byte *)(iVar2 + 0x40);
  }
  if ((int)(uVar4 << 0x1d) < 0) {
    FUN_07fc78d4(0x2c,*(undefined1 *)(iVar2 + 0x47));
    uVar4 = (uint)*(byte *)(iVar2 + 0x40);
  }
  pcVar3 = DAT_07fc7874;
  if ((int)(uVar4 << 0x1c) < 0) {
    (*DAT_07fc7874)(0x1c,*(undefined1 *)(iVar2 + 0x4e));
    (*pcVar3)(0x1d,*(undefined1 *)(iVar2 + 0x4e));
    (*pcVar3)(0x1e,*(undefined1 *)(iVar2 + 0x4e));
    (*pcVar3)(0x1f,*(undefined1 *)(iVar2 + 0x4e));
  }
  FUN_07fc4344(10);
  return;
}

