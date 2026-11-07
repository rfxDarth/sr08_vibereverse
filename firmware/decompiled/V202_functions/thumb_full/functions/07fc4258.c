/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4258(int param_1)

{
  int iVar1;
  int iVar2;
  undefined2 uVar3;
  
  FUN_07fc42ec(*(undefined4 *)(DAT_07fc42ac + 0x28),1);
  FUN_07fc381c(0);
  iVar1 = DAT_07fc42b0;
  *(short *)(DAT_07fc42b0 + 0x98) = (short)DAT_07fc42b4;
  iVar2 = DAT_07fc42b8;
  *(undefined4 *)(iVar1 + 0x9c) = *(undefined4 *)(DAT_07fc42b8 + 0x2c);
  FUN_07fc50f0();
  FUN_07fc53c0(s__s_type__d__d_07fc42bc,s_app_system_reset_07fc42cc,param_1,
               *(undefined4 *)(iVar2 + 0x2c));
  if (param_1 == 2) {
    uVar3 = (undefined2)DAT_07fc42e0;
  }
  else {
    uVar3 = 0;
  }
  if (param_1 == 1) {
    uVar3 = (undefined2)DAT_07fc42e4;
  }
  *DAT_07fc42e8 = uVar3;
  func_0x07f027e4(0);
  return;
}

