/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcac7c(void)

{
  byte bVar1;
  int iVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  
  iVar2 = DAT_07fcad74;
  bVar1 = *(byte *)(DAT_07fcaf54 + 0x30);
  if ((bVar1 & 2) == 0) {
    uVar3 = 0x52;
  }
  else {
    uVar3 = 0x77;
  }
  *(undefined1 *)(DAT_07fcad74 + 0x40) = uVar3;
  uVar3 = 0x1b;
  if ((bVar1 & 2) == 0) {
    uVar4 = 0x7c;
  }
  else {
    uVar4 = 0x1b;
  }
  *(undefined1 *)(iVar2 + 0x42) = uVar4;
  if ((bVar1 & 2) == 0) {
    uVar3 = 0x53;
  }
  *(undefined1 *)(iVar2 + 0x41) = uVar3;
  return;
}

