/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3240(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = *(int *)(DAT_07fc3294 + param_1 * 4);
  piVar3 = (int *)(DAT_07fc3294 + param_1 * 4);
  if (iVar2 == 0) {
    puVar1 = (undefined1 *)func_0x07f1bbb0(DAT_07fc3298,param_1 * 0x100 + 10,4,0xe,param_4);
    *puVar1 = 9;
    *piVar3 = (int)puVar1;
    FUN_07fc521c(s_rcp__d__d_07fc329c,param_2,param_3);
    *(undefined2 *)(puVar1 + 0xc) = 0;
    *(undefined2 *)(puVar1 + 10) = 0;
    *(undefined2 *)(puVar1 + 8) = 600;
    *(undefined2 *)(puVar1 + 6) = 0;
    *(short *)(puVar1 + 2) = (short)param_2;
    *(short *)(puVar1 + 4) = (short)param_3;
    iVar2 = *piVar3;
  }
  func_0x07f1bbe2(iVar2);
  *piVar3 = 0;
  return;
}

