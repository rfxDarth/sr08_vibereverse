/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc045a(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  
  iVar2 = 0;
  do {
    uVar1 = ROM_dia_rand /* 0x07f02976 */();
    *(undefined1 *)(param_1 + iVar2) = uVar1;
    iVar2 = iVar2 + 1;
  } while (iVar2 < 8);
  return;
}

