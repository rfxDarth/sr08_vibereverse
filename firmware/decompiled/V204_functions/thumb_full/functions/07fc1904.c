/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


longlong FUN_07fc1904(void)

{
  longlong lVar1;
  uint uVar2;
  int extraout_r1;
  uint uVar3;
  uint extraout_r2;
  uint extraout_r3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  undefined8 uVar8;
  longlong lVar9;
  int iStack_2c;
  
  for (puVar4 = &DAT_07fd0340; puVar4 < &DAT_07fd0360; puVar4 = puVar4 + 4) {
    (*(code *)puVar4[3])(*puVar4,puVar4[1],puVar4[2]);
  }
  thunk_FUN_07fc98d4();
  uVar2 = (int)puVar4 << 0xd;
  lVar1 = 0;
  iVar5 = 0x40;
  iStack_2c = extraout_r1;
  while (iVar6 = iVar5 + -1, 0 < iVar5) {
    uVar8 = FUN_07fc1b66(uVar2,iStack_2c,iVar6);
    uVar3 = (uint)((ulonglong)uVar8 >> 0x20);
    iVar5 = iVar6;
    if (extraout_r3 < uVar3 || uVar3 - extraout_r3 < (uint)(extraout_r2 <= (uint)uVar8)) {
      uVar8 = func_0x07f1e134(extraout_r2,extraout_r3,iVar6);
      bVar7 = uVar2 < (uint)uVar8;
      uVar2 = uVar2 - (uint)uVar8;
      iStack_2c = (iStack_2c - (int)((ulonglong)uVar8 >> 0x20)) - (uint)bVar7;
      lVar9 = func_0x07f1e134(1,0,iVar6);
      lVar1 = lVar9 + lVar1;
    }
  }
  return lVar1;
}

