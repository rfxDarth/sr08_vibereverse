/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc5938(int param_1)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = *(int *)(param_1 + 0x10);
  piVar2 = (int *)(iVar1 + 0x10);
  while (*piVar2 != 0) {
    func_0x07f02b24(piVar2);
    func_0x07f1ba8a();
  }
  *(undefined4 *)(param_1 + 0x10) = 0;
  func_0x07f1ba8a(iVar1);
  return;
}

