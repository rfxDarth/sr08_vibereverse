/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc046e(undefined1 *param_1,int param_2)

{
  undefined1 uVar1;
  byte bVar2;
  ushort uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined1 extraout_r1;
  
  *param_1 = 2;
  param_1[1] = 1;
  uVar1 = (**(code **)(DAT_07fc05fc + 0x1c))(*(undefined1 *)(param_2 + 6));
  param_1[0x2a] = uVar1;
  bVar2 = *(byte *)(param_2 + 4) & 0xf;
  param_1[2] = bVar2;
  func_0x07f1e154(bVar2,0);
  param_1[2] = extraout_r1;
  uVar3 = (*(ushort *)(param_2 + 4) >> 8) - 6;
  param_1[10] = (char)uVar3;
  if (0x1f < (uVar3 & 0xff)) {
    param_1[10] = extraout_r1;
  }
  iVar4 = func_0x07f02ae0(param_2);
  func_0x07f1e0ac(param_1 + 0xb,iVar4 + 6,param_1[10]);
  uVar5 = func_0x07f02ae0(param_2);
  func_0x07f1e0ac(param_1 + 4,uVar5,6);
  param_1[3] = (char)((*(byte *)(param_2 + 4) & 0x7f) >> 6);
  return;
}

