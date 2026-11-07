/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3a38(uint param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  iVar1 = DAT_07fc3e00;
  uVar3 = *(uint *)(DAT_07fc3e00 + 0x14);
  if (*(char *)(DAT_07fc3d1c + 0xc) == '\x1e') {
    *(undefined4 *)(DAT_07fc3e00 + 0x14) = 0;
  }
  else {
    uVar2 = uVar3;
    if ((param_1 & 0xffff) != 0) {
      *(undefined4 *)(DAT_07fc3e00 + 0x20) = *DAT_07fc3aa8;
      uVar2 = uVar3 | param_1;
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (param_1 >> 0x10 != 0) {
      uVar2 = uVar2 & ~(param_1 >> 0x10);
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (uVar2 != 0) goto LAB_07fc3a90;
  }
  if ((uVar3 & 1) != 0) {
    FUN_07fc5070(*(undefined1 *)(DAT_07fc3dd4 + 0x2a));
    FUN_07fc259c(0x27,0,0);
  }
  if ((int)(uVar3 << 0x1e) < 0) {
    FUN_07fc259c(0x28,0,0);
  }
LAB_07fc3a90:
  if (uVar3 != *(uint *)(iVar1 + 0x14)) {
    FUN_07fc3838(0);
    FUN_07fc37d0();
  }
  return;
}

