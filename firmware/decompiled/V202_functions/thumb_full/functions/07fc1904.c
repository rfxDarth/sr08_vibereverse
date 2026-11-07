/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


longlong FUN_07fc1904(void)

{
  longlong lVar1;
  uint uVar2;
  uint extraout_r2;
  uint extraout_r3;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  undefined1 in_q14 [16];
  longlong lVar6;
  undefined8 uVar7;
  longlong lVar8;
  undefined4 uStack_2c;
  
  for (puVar3 = &DAT_07fceff4; puVar3 < &DAT_07fcf014; puVar3 = puVar3 + 4) {
    (*(code *)puVar3[3])(*puVar3,puVar3[1],puVar3[2]);
  }
  lVar6 = thunk_FUN_07fc89c8();
  VectorShiftLeft(in_q14,0x34,0x40,0);
  lVar1 = 0;
  iVar4 = 0x40;
  while (uStack_2c = (undefined4)((ulonglong)lVar6 >> 0x20), iVar5 = iVar4 + -1, 0 < iVar4) {
    uVar7 = FUN_07fc1b66((int)lVar6,uStack_2c,iVar5);
    uVar2 = (uint)((ulonglong)uVar7 >> 0x20);
    iVar4 = iVar5;
    if (extraout_r3 < uVar2 || uVar2 - extraout_r3 < (uint)(extraout_r2 <= (uint)uVar7)) {
      lVar8 = func_0x07f1e134(extraout_r2,extraout_r3,iVar5);
      lVar6 = lVar6 - lVar8;
      lVar8 = func_0x07f1e134(1,0,iVar5);
      lVar1 = lVar8 + lVar1;
    }
  }
  return lVar1;
}

