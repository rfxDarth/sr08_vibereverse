/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb04c(undefined4 param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar2 = DAT_07fcb16c;
  iVar4 = DAT_07fcb168;
  for (iVar5 = 0x20; iVar5 != 0; iVar5 = iVar5 + -1) {
    cVar1 = *(char *)(iVar4 + 0x16);
    iVar3 = iVar2;
    if (((cVar1 == '&') || (iVar3 = DAT_07fcb170, cVar1 == -3)) ||
       (iVar3 = DAT_07fcb174, cVar1 == -4)) {
      (**(code **)(iVar3 + 8))(iVar4,param_1);
    }
    iVar4 = iVar4 + 0x18;
  }
  return;
}

