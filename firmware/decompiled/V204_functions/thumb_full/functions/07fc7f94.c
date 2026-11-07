/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc7f94(void)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  iVar1 = DAT_07fc832c;
  uVar2 = 0;
  do {
    uVar4 = uVar2;
    if (9 < uVar4) break;
    FUN_07fc8850(1,0);
    FUN_07fc4458(5);
    iVar3 = FUN_07fc8584(0);
    *(char *)(iVar1 + 0x13) = (char)iVar3;
    uVar2 = uVar4 + 1;
  } while (iVar3 != 0x27);
  if (9 < uVar4) {
    return 0;
  }
  return 1;
}

