/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc80d8(void)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = DAT_07fc8130;
  bVar1 = *(byte *)(DAT_07fc8130 + 0x4c);
  if ((bVar1 & 1) != 0) {
    FUN_07fc8850(0x28,*(undefined1 *)(DAT_07fc8130 + 0x50));
    bVar1 = *(byte *)(iVar2 + 0x4c);
  }
  uVar3 = (uint)bVar1;
  if ((int)(uVar3 << 0x1e) < 0) {
    FUN_07fc8850(0x2e,*(undefined1 *)(iVar2 + 0x52));
    uVar3 = (uint)*(byte *)(iVar2 + 0x4c);
  }
  if ((int)(uVar3 << 0x1d) < 0) {
    FUN_07fc8850(0x2f,*(undefined1 *)(iVar2 + 0x53));
    uVar3 = (uint)*(byte *)(iVar2 + 0x4c);
  }
  if ((int)(uVar3 << 0x1c) < 0) {
    FUN_07fc8850(0x1e,*(undefined1 *)(iVar2 + 0x54));
    FUN_07fc8850(0x1f,*(undefined1 *)(iVar2 + 0x54));
  }
  return;
}

