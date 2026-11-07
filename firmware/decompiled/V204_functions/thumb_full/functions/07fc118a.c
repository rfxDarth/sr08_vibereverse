/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc118a(int param_1,int param_2)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar3 = _DAT_07fc12dc;
  iVar5 = param_1 * 4;
  iVar4 = *(int *)(*(int *)(_DAT_07fc12dc + iVar5) + 4);
  sVar1 = *(short *)(param_2 + 6);
  func_0x07f0832c();
  sVar2 = *(short *)(iVar4 + 0x72);
  if (((ushort)(sVar1 - sVar2) < _DAT_07fc12e0) && (sVar2 != sVar1)) {
    func_0x07f0749e(*(undefined4 *)(*(int *)(iVar3 + iVar5) + 4),sVar1);
    func_0x07f1e0ac(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
    func_0x07f1beb6(param_1 * 0x100 + 1U & 0xffff,5);
    return;
  }
  func_0x07f1e0ac(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
  func_0x07f03484(*(undefined2 *)(iVar4 + 0x68));
  return;
}

