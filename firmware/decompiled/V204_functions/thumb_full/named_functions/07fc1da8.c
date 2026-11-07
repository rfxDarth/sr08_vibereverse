/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc1da8(void)

{
  int iVar1;
  int iVar2;
  
  FUN_07fc1e50();
  iVar1 = FUN_07fc8a0c(0xf);
  iVar2 = FUN_07fc8a0c(0x70);
  if (iVar1 == 0x11) {
    FUN_07fc8a54(DAT_07fc1df0);
    FUN_07fc4458(10);
    if (iVar2 == 0x28) {
      *(undefined1 *)(DAT_07fc20ec + 0x11) = 3;
    }
    else {
      *(undefined1 *)(DAT_07fc20ec + 0x11) = 2;
      FUN_07fc8ad8(0x1e,5);
    }
    FUN_07fc8a54(DAT_07fc1df4);
  }
  return;
}

