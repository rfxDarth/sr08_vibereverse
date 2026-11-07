/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc5754(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined1 *puVar2;
  
  iVar1 = DAT_07fc57a0;
  if ((((int)((uint)*DAT_07fc579c << 0x18) < 0) && (-1 < *DAT_07fc57a4 << 0x10)) &&
     ((*DAT_07fc57a8 & 1) == 0)) {
    func_0x07f1c054(DAT_07fc57a0 + param_1 + 2,4,param_2);
    return;
  }
  FUN_07fc5150();
  puVar2 = (undefined1 *)func_0x07f1bbb0(iVar1,4,4,8);
  *(undefined4 *)(puVar2 + 4) = param_2;
  *puVar2 = (char)param_1;
  func_0x07f1bbe2();
  return;
}

