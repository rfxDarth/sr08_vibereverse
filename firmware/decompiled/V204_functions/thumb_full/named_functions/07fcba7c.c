/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined1 FUN_07fcba7c(void)

{
  undefined1 uVar1;
  int iVar2;
  
  iVar2 = FUN_07fcb080(0xfd);
  uVar1 = 0;
  if ((iVar2 != 0) && (*(int *)(iVar2 + 0x10) != 0)) {
    uVar1 = *(undefined1 *)(*(int *)(iVar2 + 0x10) + 6);
  }
  return uVar1;
}

