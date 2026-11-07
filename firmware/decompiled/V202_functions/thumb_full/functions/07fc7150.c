/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7150(void)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = DAT_07fc71a8;
  bVar1 = *(byte *)(DAT_07fc71a8 + 0x44);
  if ((bVar1 & 1) != 0) {
    FUN_07fc78d4(0x28,*(undefined1 *)(DAT_07fc71a8 + 0x48));
    bVar1 = *(byte *)(iVar2 + 0x44);
  }
  uVar3 = (uint)bVar1;
  if ((int)(uVar3 << 0x1e) < 0) {
    FUN_07fc78d4(0x2e,*(undefined1 *)(iVar2 + 0x4a));
    uVar3 = (uint)*(byte *)(iVar2 + 0x44);
  }
  if ((int)(uVar3 << 0x1d) < 0) {
    FUN_07fc78d4(0x2f,*(undefined1 *)(iVar2 + 0x4b));
    uVar3 = (uint)*(byte *)(iVar2 + 0x44);
  }
  if ((int)(uVar3 << 0x1c) < 0) {
    FUN_07fc78d4(0x1e,*(undefined1 *)(iVar2 + 0x4c));
    FUN_07fc78d4(0x1f,*(undefined1 *)(iVar2 + 0x4c));
  }
  return;
}

