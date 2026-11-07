/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3254(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = *(int *)(DAT_07fc32a8 + param_1 * 4);
  piVar3 = (int *)(DAT_07fc32a8 + param_1 * 4);
  if (iVar2 == 0) {
    puVar1 = (undefined1 *)func_0x07f1bbb0(DAT_07fc32ac,param_1 * 0x100 + 10,4,0xe,param_4);
    *puVar1 = 9;
    *piVar3 = (int)puVar1;
    FUN_07fc532c(s_rcp__d__d_07fc32b0,param_2,param_3);
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

