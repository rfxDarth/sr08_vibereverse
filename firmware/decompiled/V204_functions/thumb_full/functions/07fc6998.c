/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


longlong FUN_07fc6998(undefined4 param_1,short *param_2,short **param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  undefined1 uVar3;
  undefined2 uVar4;
  short sVar5;
  int iVar6;
  short *psVar7;
  ushort uVar8;
  short *psStack_20;
  short **ppsStack_1c;
  uint uStack_18;
  
  psStack_20 = param_2;
  ppsStack_1c = param_3;
  uStack_18 = param_4;
  iVar6 = func_0x07f1bf1a(param_3);
  if (iVar6 != 0) {
    iVar6 = func_0x07f1bf1a(param_3);
    return CONCAT44(psStack_20,(uint)(iVar6 == 1) * 2);
  }
  iVar6 = FUN_07fcb080(0xfc);
  uVar1 = uStack_18;
  uVar3 = 0;
  uStack_18 = uStack_18 & 0xffff0000;
  uVar2 = uStack_18;
  ppsStack_1c = (short **)0x0;
  psStack_20 = (short *)((uint)psStack_20 & 0xffff0000);
  uVar8 = *param_2 - (ushort)*(byte *)(iVar6 + 6) & 0xff;
  uStack_18._2_2_ = SUB42(uVar1,2);
  if (uVar8 == 0x13) {
    uStack_18 = CONCAT22(uStack_18._2_2_,2);
    uVar4 = func_0x07f11b3a(param_4 >> 8);
    psStack_20 = (short *)CONCAT22(psStack_20._2_2_,uVar4);
    ppsStack_1c = &psStack_20;
  }
  else {
    if (uVar8 != 0xd) {
      uStack_18 = uVar2;
      uVar3 = func_0x07f10222(*param_2,&uStack_18,&ppsStack_1c);
      sVar5 = (short)uStack_18 + 6;
      goto LAB_07fc6a0e;
    }
    uStack_18 = CONCAT22(uStack_18._2_2_,2);
    ppsStack_1c = (short **)(iVar6 + 10);
  }
  sVar5 = 8;
LAB_07fc6a0e:
  psVar7 = (short *)func_0x07f1bbb0(DAT_07fc6bec,param_4,param_3,sVar5);
  *psVar7 = *param_2;
  *(undefined1 *)(psVar7 + 2) = uVar3;
  psVar7[1] = (short)uStack_18;
  if ((uStack_18 & 0xffff) != 0) {
    func_0x07f1e0ac((int)psVar7 + 5,ppsStack_1c);
  }
  func_0x07f1bbe2(psVar7);
  return ZEXT48(psStack_20) << 0x20;
}

