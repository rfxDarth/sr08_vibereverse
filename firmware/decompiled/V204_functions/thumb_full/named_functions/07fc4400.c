/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc4400(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = DAT_07fc443c;
  if (param_2 == 1) {
    uVar2 = 0x3b;
  }
  else {
    uVar2 = 0xab;
  }
  uVar3 = *(undefined4 *)(DAT_07fc4434 + 0x44);
  uVar4 = *(undefined4 *)(DAT_07fc4438 + 0x2c);
  *DAT_07fc443c = uVar2;
  puVar1[1] = (char)uVar4;
  puVar1[2] = (char)uVar3;
  puVar1[3] = (char)((uint)uVar3 >> 8);
  puVar1[4] = (char)param_1;
  puVar1[5] = (char)((uint)param_1 >> 8);
  puVar1[6] = (char)((uint)param_1 >> 0x10);
  puVar1[7] = (char)((uint)param_1 >> 0x18);
  return;
}

