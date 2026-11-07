/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8e58(int param_1)

{
  undefined2 *puVar1;
  int iVar2;
  
  func_0x07f1e0de(DAT_07fc8f28 + 0x40,0x28);
  if (param_1 == 2) {
    FUN_07fc8f48(2,1);
    FUN_07fceedc(0x1e,0x28,0x32,DAT_07fc8f30,DAT_07fc8f2c,0x96);
    FUN_07fceeac(0x20,DAT_07fc8f34,DAT_07fc8f34,DAT_07fc8f38,0x96,500,200,200,1,0x25,3);
    iVar2 = FUN_07fc7f94();
    if (((iVar2 != 0) && (*(char *)(DAT_07fc8fa0 + 0x1e) == '\0')) &&
       (iVar2 = FUN_07fcec2c(), puVar1 = DAT_07fc8f3c, iVar2 != 0)) {
      *(undefined1 *)(DAT_07fc8f3c + 2) = 2;
      *(undefined1 *)((int)puVar1 + 3) = 2;
      FUN_07fc86b8(0);
    }
  }
  else {
    if (((param_1 == 0x400) || (param_1 == 0x1000)) || (param_1 == 0x800)) {
      FUN_07fc8f48(param_1,7);
      return;
    }
    FUN_07fc8f48(param_1,0);
    if (*(char *)(DAT_07fc8fa0 + 0x17) == '\0') {
      FUN_07fcd908();
      *DAT_07fc8f3c = (short)DAT_07fc8f40;
      FUN_07fc8040(0);
    }
    if (1 < param_1 - 1U) {
      return;
    }
  }
  FUN_07fccf38(0,0x28,DAT_07fc8f44);
  return;
}

