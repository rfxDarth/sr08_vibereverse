/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc118a(int param_1,int param_2)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar3 = DAT_07fc12dc;
  iVar5 = param_1 * 4;
  iVar4 = *(int *)(*(int *)(DAT_07fc12dc + iVar5) + 4);
  sVar1 = *(short *)(param_2 + 6);
  func_0x07f0832c();
  sVar2 = *(short *)(iVar4 + 0x72);
  if (((ushort)(sVar1 - sVar2) < DAT_07fc12e0) && (sVar2 != sVar1)) {
    func_0x07f0749e(*(undefined4 *)(*(int *)(iVar3 + iVar5) + 4),sVar1);
    func_0x07f1e0ac(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
    func_0x07f1beb6(param_1 * 0x100 + 1U & 0xffff,5);
    return;
  }
  func_0x07f1e0ac(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
  func_0x07f03484(*(undefined2 *)(iVar4 + 0x68));
  return;
}

