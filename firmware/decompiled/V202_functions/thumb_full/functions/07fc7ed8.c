/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7ed8(int param_1)

{
  undefined2 *puVar1;
  int iVar2;
  
  func_0x07f1e0de(DAT_07fc7fa8,0x28);
  if (param_1 == 2) {
    FUN_07fc7fc8(2,1);
    FUN_07fcddd4(0x1e,0x28,0x32,DAT_07fc7fb0,DAT_07fc7fac,0x96);
    FUN_07fcdda4(0x20,DAT_07fc7fb4,DAT_07fc7fb4,DAT_07fc7fb8,0x96,500,200,200,1,0x25,3);
    iVar2 = FUN_07fc7008();
    if (((iVar2 != 0) && (*(char *)(DAT_07fc8024 + 0x1f) == '\0')) &&
       (iVar2 = FUN_07fcdb24(), puVar1 = DAT_07fc7fbc, iVar2 != 0)) {
      *(undefined1 *)(DAT_07fc7fbc + 2) = 2;
      *(undefined1 *)((int)puVar1 + 3) = 2;
      FUN_07fc7738(0);
    }
  }
  else {
    if (((param_1 == 0x400) || (param_1 == 0x1000)) || (param_1 == 0x800)) {
      FUN_07fc7fc8(param_1,7);
      return;
    }
    FUN_07fc7fc8(param_1,0);
    if (*(char *)(DAT_07fc8024 + 0x18) == '\0') {
      FUN_07fcc800();
      *DAT_07fc7fbc = (short)DAT_07fc7fc0;
      FUN_07fc70b4(0);
    }
    if (1 < param_1 - 1U) {
      return;
    }
  }
  FUN_07fcbe30(0,0x28,1,DAT_07fc7fc4);
  return;
}

