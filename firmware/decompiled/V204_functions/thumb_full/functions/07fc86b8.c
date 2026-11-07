/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc86b8(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = DAT_07fc88cc;
  iVar1 = DAT_07fc87ec;
  switch(param_1) {
  case 0:
    FUN_07fc8134(2);
    iVar1 = DAT_07fc88cc;
    *(undefined1 *)(DAT_07fc88cc + 0x1e) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 1:
    FUN_07fc82a0();
    break;
  case 2:
    FUN_07fc869c();
    break;
  case 3:
    *(undefined1 *)(DAT_07fc87ec + 0x20) = 0xf;
    *(undefined1 *)(iVar1 + 0x2e) = 5;
    *(undefined2 *)(iVar1 + 0x2c) = 0x10;
    *(undefined4 *)(iVar1 + 0x24) = 0;
    *(undefined4 *)(iVar1 + 0x28) = 0x40000;
    *(undefined2 *)(iVar1 + 0x22) = 0;
    *(undefined4 *)(iVar1 + 0x30) = 0;
    *(undefined4 *)(iVar1 + 0x34) = 0;
    *(undefined4 *)(iVar1 + 0x38) = 0;
    *(undefined1 *)(iVar1 + 0x3c) = 0;
    *(short *)(iVar1 + 0x3e) = (short)DAT_07fc8770;
    FUN_07fc8004();
    FUN_07fc8774();
    iVar1 = DAT_07fc88cc;
    *(undefined1 *)(DAT_07fc88cc + 0x1f) = 1;
    *(undefined1 *)(iVar1 + 0x14) = 1;
    return;
  case 4:
    *(undefined1 *)(DAT_07fc88cc + 0x14) = 0;
    FUN_07fc8018(1);
    *(undefined1 *)(iVar2 + 0x1f) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc87ec + 0x20) = 2;
    *(undefined1 *)(iVar1 + 0x3c) = 2;
    *(undefined1 *)(iVar1 + 0x22) = 0;
    FUN_07fc8004();
    FUN_07fc8774();
    iVar1 = DAT_07fc88cc;
    *(undefined1 *)(DAT_07fc88cc + 0x1f) = 1;
    *(undefined1 *)(iVar1 + 0x14) = 1;
    return;
  default:
    return;
  }
  *(undefined1 *)(DAT_07fc88cc + 0x1e) = 0;
  return;
}

