/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


int FUN_07fc04fc(int param_1,undefined4 param_2,int param_3)

{
  ushort uVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  undefined2 extraout_r1;
  int extraout_r1_00;
  int iVar8;
  
  iVar8 = *(int *)(param_1 + 4);
  iVar3 = func_0x07f0cd08();
  uVar1 = *(ushort *)((uint)*(ushort *)(param_1 + 0x68) * 0x52 + *DAT_07fc05f0 + 0xca);
  func_0x07f07b86(param_1,1);
  iVar4 = func_0x07f0c9f2();
  iVar5 = func_0x07f1dfb8((uint)(*(ushort *)(*(int *)(param_3 + 0x10) + 4) >> 8) * 8 + DAT_07fc0600
                          + (uint)*(ushort *)(param_1 + 0x2c),DAT_07fc0600 + 0x5b);
  iVar5 = *(int *)(param_1 + 0x28) + iVar5;
  uVar6 = (uint)*(ushort *)(iVar8 + 0x6c);
  func_0x07f1dfb8(iVar5 - *(int *)(iVar8 + 8) & 0x7ffffff,uVar6);
  uVar7 = (uVar6 + iVar5) - extraout_r1_00 & 0x7ffffff;
  *(uint *)(iVar8 + 8) = uVar7;
  if (uVar7 < ((uint)uVar1 * 2 + iVar5 + 2 & 0x7ffffff)) {
    uVar7 = uVar7 + uVar6 & 0x7ffffff;
    *(uint *)(iVar8 + 8) = uVar7;
  }
  uVar6 = DAT_07fc0604;
  if (DAT_07fc0604 < (uVar7 - iVar4 & 0x7ffffff)) {
    sVar2 = 0;
    do {
      sVar2 = sVar2 + 1;
      *(uint *)(iVar8 + 8) = *(int *)(iVar8 + 8) + (uint)*(ushort *)(iVar8 + 0x6c) & 0x7ffffff;
      *(short *)(iVar8 + 0x72) = *(short *)(iVar8 + 0x72) + 1;
    } while (uVar6 < (*(int *)(iVar8 + 8) - iVar4 & 0x7ffffffU));
    func_0x07f07cc8(param_2,(int)sVar2);
  }
  if ((*(int *)(iVar8 + 8) - iVar4 & 0x7ffffffU) <= (uint)*(byte *)(iVar8 + 0x15)) {
    *(uint *)(iVar8 + 8) = *(int *)(iVar8 + 8) + (uint)*(ushort *)(iVar8 + 0x6c) & 0x7ffffff;
    if ((uint)*(byte *)(iVar8 + 0x15) < (uint)*(ushort *)(iVar8 + 0x6c) - extraout_r1_00) {
      func_0x07f07cc8(param_2,1);
      *(short *)(iVar8 + 0x72) = *(short *)(iVar8 + 0x72) + 1;
    }
  }
  func_0x07f1dfb8(*(undefined4 *)(iVar8 + 8),*(undefined2 *)(iVar8 + 0x6c));
  *(undefined2 *)(iVar3 + 6) = extraout_r1;
  *(undefined2 *)(iVar3 + 4) = *(undefined2 *)(iVar8 + 0x6c);
  *(undefined2 *)(iVar3 + 8) = *(undefined2 *)(iVar8 + 0x10);
  *(undefined2 *)(iVar3 + 10) = *(undefined2 *)(iVar8 + 0x68);
  *(undefined2 *)(iVar3 + 0xc) = 0;
  *(byte *)(iVar3 + 0xe) = (byte)extraout_r1 & 1;
  *(short *)(iVar3 + 0x10) = *(short *)(iVar8 + 0x68) * 0x52 + 0x8e;
  func_0x07f0cd1e(iVar3);
  *(int *)(iVar8 + 0x58) = iVar3;
  return iVar8;
}

