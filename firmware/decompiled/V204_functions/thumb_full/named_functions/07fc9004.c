/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc9004(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int extraout_r1;
  uint uVar5;
  
  iVar1 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_1,DAT_07fc90dc,param_3,param_4,param_2,param_3,param_4);
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar1 + 4U & 0xffff,7);
  param_2[6] = extraout_r1;
  iVar2 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_1,DAT_07fc90e0);
  uVar5 = iVar2 + DAT_07fc90e4;
  iVar3 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar5,400);
  iVar2 = iVar2 * DAT_07fc90e8;
  iVar4 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar5,100);
  iVar2 = (iVar1 + iVar2 + iVar4 + 0x16d) - ((uVar5 >> 2) + iVar3);
  iVar3 = iVar2 + 0x70;
  iVar1 = iVar1 * DAT_07fc90ec;
  if (iVar3 < 0) {
    iVar3 = FUN_07fc8c3c(uVar5);
    iVar3 = iVar2 + 0x1dd + iVar3;
  }
  else {
    uVar5 = uVar5 + 1;
  }
  iVar1 = iVar1 + param_1;
  param_2[7] = iVar3 + 1;
  param_2[5] = uVar5 + DAT_07fc90f0;
  for (iVar2 = 0; iVar2 != 0xb; iVar2 = iVar2 + 1) {
    iVar4 = FUN_07fc8c3c(uVar5);
    iVar4 = iVar3 - ((uint)(iVar2 == 1 && iVar4 != 0) + (uint)(byte)(&DAT_07fc90f4)[iVar2]);
    if (iVar4 < 0) goto LAB_07fc90aa;
    iVar3 = iVar4;
  }
  iVar2 = 0xb;
LAB_07fc90aa:
  param_2[3] = iVar3 + 1;
  param_2[4] = iVar2;
  iVar3 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar1,0xe10);
  param_2[2] = iVar3;
  iVar1 = iVar3 * DAT_07fc9100 + iVar1;
  iVar3 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar1,0x3c);
  *param_2 = iVar3 * -0x3c + iVar1;
  param_2[1] = iVar3;
  return;
}

