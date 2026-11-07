/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc1144(undefined4 param_1,char *param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = func_0x07f1bf1a(param_3);
  uVar2 = 0;
  if ((iVar1 == 0x3f) || (*(short *)(param_2 + 8) != 6)) {
    uVar2 = func_0x07f156aa(param_1,param_2,param_3,param_4);
  }
  else if (iVar1 << 0x1c < 0) {
    uVar2 = 2;
  }
  else if (*param_2 == '\0') {
    func_0x07f026ca(param_3 >> 8,param_2 + 6);
  }
  return uVar2;
}

