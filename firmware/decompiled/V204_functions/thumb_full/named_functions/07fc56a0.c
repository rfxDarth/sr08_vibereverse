/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fc56a0(uint param_1,byte *param_2,int param_3)

{
  code *pcVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  
  pcVar1 = DAT_07fc573c;
  if (param_2 != (byte *)0x0) {
    param_1 = ~param_1;
    for (; 7 < param_3; param_3 = param_3 + -8) {
      uVar2 = (*pcVar1)(param_1 & 0xff ^ (uint)*param_2);
      uVar2 = param_1 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[1] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[2] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[3] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[4] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[5] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[6] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      param_1 = (*pcVar1)((uint)param_2[7] ^ uVar2 & 0xff);
      param_1 = uVar2 >> 8 ^ param_1;
      param_2 = param_2 + 8;
    }
    if (param_3 != 0) {
      iVar4 = 0;
      do {
        uVar2 = FUN_07fc5740(param_1 & 0xff ^ (uint)param_2[iVar4]);
        param_1 = param_1 >> 8 ^ uVar2;
        iVar4 = iVar4 + 1;
      } while (param_3 != iVar4);
    }
    return ~param_1;
  }
  return 0;
}

