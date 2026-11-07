/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc43a4(int param_1)

{
  int iVar1;
  undefined2 uVar2;
  
  FUN_07fc4400(*DAT_07fc43ec,1);
  FUN_07fc3838(0);
  iVar1 = DAT_07fc4434;
  *(short *)(DAT_07fc4434 + 0x98) = (short)DAT_07fc43f0;
  *(undefined4 *)(iVar1 + 0x9c) = *(undefined4 *)(DAT_07fc4438 + 0x2c);
  if (param_1 == 2) {
    uVar2 = (undefined2)DAT_07fc43f4;
  }
  else {
    uVar2 = 0;
  }
  if (param_1 == 1) {
    uVar2 = (undefined2)DAT_07fc43f8;
  }
  FUN_07fc5200();
  *DAT_07fc43fc = uVar2;
  func_0x07f027e4(0);
  return;
}

