/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcbb94(void)

{
  int iVar1;
  undefined2 *puVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  
  puVar2 = DAT_07fcbbc0;
  iVar1 = DAT_07fcbbbc;
  uVar4 = 8;
  uVar3 = 8;
  if (*(char *)(DAT_07fcbbbc + 2) == '\0') {
    uVar3 = 1;
  }
  DAT_07fcbbc0[1] = uVar3;
  FUN_07fcba98();
  if (*(char *)(iVar1 + 2) == '\0') {
    uVar4 = 1;
  }
  *puVar2 = uVar4;
  return;
}

