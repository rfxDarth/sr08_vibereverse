/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcab78(void)

{
  int iVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined1 uVar6;
  
  iVar1 = DAT_07fcad74;
  if ((int)((uint)*(byte *)(DAT_07fcaf54 + 0x30) << 0x1e) < 0) {
    uVar2 = 0x6b;
    uVar3 = 0x5b;
    uVar4 = 0x37;
    uVar6 = 0x13;
    uVar5 = 0x6b;
  }
  else {
    uVar5 = 0x3e;
    uVar2 = 0x6f;
    uVar3 = 0x24;
    uVar4 = 0x18;
    uVar6 = 0x3a;
  }
  *(undefined1 *)(DAT_07fcad74 + 0x40) = uVar6;
  *(undefined1 *)(iVar1 + 0x44) = uVar5;
  *(undefined1 *)(iVar1 + 0x43) = uVar2;
  *(undefined1 *)(iVar1 + 0x42) = uVar3;
  *(undefined1 *)(iVar1 + 0x41) = uVar4;
  return;
}

