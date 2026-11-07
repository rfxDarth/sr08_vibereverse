/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb014(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = DAT_07fcb168;
  for (iVar4 = 0x20; iVar4 != 0; iVar4 = iVar4 + -1) {
    cVar1 = *(char *)(iVar3 + 0x16);
    iVar2 = DAT_07fcb16c;
    if (((cVar1 == '&') || (iVar2 = DAT_07fcb170, cVar1 == -3)) ||
       (iVar2 = DAT_07fcb174, cVar1 == -4)) {
      (**(code **)(iVar2 + 0xc))(iVar3,param_1,param_2,*(code **)(iVar2 + 0xc),param_4);
    }
    iVar3 = iVar3 + 0x18;
  }
  return;
}

