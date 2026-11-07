/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2e1c(uint param_1,undefined2 param_2,undefined2 param_3)

{
  int iVar1;
  
  FUN_07fc4440();
  iVar1 = DAT_07fc31f0;
  *(undefined2 *)(DAT_07fc31f0 + 0x42) = param_3;
  *(undefined4 *)(iVar1 + 0x70) = 0;
  iVar1 = DAT_07fc2e4c;
  *(undefined2 *)(DAT_07fc2e4c + 0xe) = param_2;
  *(short *)(iVar1 + 0xc) = (short)param_1;
  if (param_1 < *(ushort *)(iVar1 + 10)) {
    *(short *)(iVar1 + 10) = (short)param_1;
  }
  if (param_1 < 0x50) {
    FUN_07fc2e50();
  }
  return;
}

