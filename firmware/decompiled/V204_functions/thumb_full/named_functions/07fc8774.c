/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8774(void)

{
  byte bVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  
  iVar2 = DAT_07fc87ec;
  bVar1 = *(byte *)(DAT_07fc87ec + 0x20);
  if ((bVar1 & 1) != 0) {
    FUN_07fc8850(0x27,*(undefined1 *)(DAT_07fc87ec + 0x2a));
    FUN_07fc8850(0x29,*(undefined1 *)(iVar2 + 0x2c));
    bVar1 = *(byte *)(iVar2 + 0x20);
  }
  uVar4 = (uint)bVar1;
  if ((int)(uVar4 << 0x1e) < 0) {
    FUN_07fc8850(0x2d,*(undefined1 *)(iVar2 + 0x25));
    FUN_07fc8850(0x2f,*(undefined1 *)(iVar2 + 0x26));
    uVar4 = (uint)*(byte *)(iVar2 + 0x20);
  }
  if ((int)(uVar4 << 0x1d) < 0) {
    FUN_07fc8850(0x2c,*(undefined1 *)(iVar2 + 0x27));
    uVar4 = (uint)*(byte *)(iVar2 + 0x20);
  }
  pcVar3 = DAT_07fc87f0;
  if ((int)(uVar4 << 0x1c) < 0) {
    (*DAT_07fc87f0)(0x1c,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1d,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1e,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1f,*(undefined1 *)(iVar2 + 0x2e));
  }
  FUN_07fc4458(10);
  return;
}

