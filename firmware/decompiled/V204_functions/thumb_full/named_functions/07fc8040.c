/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8040(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = DAT_07fc832c;
  iVar1 = DAT_07fc8130;
  switch(param_1) {
  case 0:
    FUN_07fc8134(*(undefined4 *)(DAT_07fc8130 + 0x20));
    iVar1 = DAT_07fc832c;
    *(undefined1 *)(DAT_07fc832c + 0x17) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 1:
    FUN_07fc82a0();
    *(undefined1 *)(DAT_07fc832c + 0x17) = 0;
    return;
  default:
    return;
  case 3:
    *(undefined1 *)(DAT_07fc8130 + 0x4c) = 0xf;
    *(undefined1 *)(iVar1 + 0x54) = 5;
    *(undefined4 *)(iVar1 + 0x50) = 0x40;
    *(undefined2 *)(iVar1 + 0x58) = 0x1900;
    *(undefined2 *)(iVar1 + 0x4e) = 0;
    break;
  case 4:
    *(undefined1 *)(DAT_07fc832c + 0x14) = 0;
    FUN_07fc8018(0);
    *(undefined1 *)(iVar2 + 0x18) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc8130 + 0x4c) = 2;
    *(undefined1 *)(iVar1 + 0x58) = 2;
    *(undefined1 *)(iVar1 + 0x4e) = 0;
  }
  FUN_07fc8004();
  FUN_07fc80d8();
  iVar1 = DAT_07fc832c;
  *(undefined1 *)(DAT_07fc832c + 0x18) = 1;
  *(undefined1 *)(iVar1 + 0x14) = 1;
  return;
}

