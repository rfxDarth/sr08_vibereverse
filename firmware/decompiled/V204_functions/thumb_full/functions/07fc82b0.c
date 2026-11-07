/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc82b0(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = DAT_07fc867c;
  *(undefined1 *)(DAT_07fc867c + 0x1d) = 0;
  *(undefined1 *)(iVar3 + 0x1b) = 0;
  iVar2 = DAT_07fc8338;
  iVar1 = DAT_07fc8330;
  if (*(char *)(iVar3 + 0x19) == '\0') {
    *(undefined1 *)(DAT_07fc8338 + 0x3b) = 0;
    FUN_07fc8680(iVar2 + 0x1c);
    FUN_07fc7fcc(1,DAT_07fc8334,iVar1 + 0xa7);
    FUN_07fc7fcc(0,iVar1,1000);
  }
  else {
    *(undefined1 *)(DAT_07fc8338 + 0x3b) = 2;
    FUN_07fc8680(iVar2 + 0x1c);
    FUN_07fc8838(*(undefined2 *)(iVar3 + 0x42));
    FUN_07fc7fcc(1,DAT_07fc8334,iVar1 + 0xa7);
    FUN_07fc7fcc(0,iVar1,1000);
    FUN_07fc8680(iVar2 + 0x10);
  }
  FUN_07fc8850(0x6a,2);
  return;
}

