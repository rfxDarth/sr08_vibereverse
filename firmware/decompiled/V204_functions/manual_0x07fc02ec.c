/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined4 FUN_07fc02ec(undefined4 param_1,undefined4 param_2,uint param_3)

{
  short sVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar2 = func_0x07f1bf1a(param_3);
  iVar3 = DAT_07fc05ec;
  if (((iVar2 != 0) && (iVar2 != 0x13)) && (iVar2 != 0x14)) {
    iVar4 = (param_3 >> 8) * 4;
    if (iVar2 == 0x15) {
      *(undefined1 *)(*(int *)(DAT_07fc05ec + iVar4) + 0xb7) = 1;
      return 2;
    }
    func_0x07f1c0e8(0x102,param_3);
    iVar2 = *(int *)(iVar3 + iVar4);
    if (((int)((uint)*(byte *)(iVar2 + 0x2d) << 0x1b) < 0) && (*(char *)(iVar2 + 0xb7) == '\0')) {
      func_0x07f063f4(param_3 >> 8,0x3d);
    }
    else {
      sVar1 = (short)(param_3 >> 8) * 0x100 + 1;
      iVar2 = func_0x07f1bf1a(sVar1);
      if (iVar2 == 0x19) {
        func_0x07f1beb6(sVar1,1);
      }
      iVar3 = *(int *)(iVar3 + iVar4);
      *(ushort *)(iVar3 + 0x18) = *(ushort *)(iVar3 + 0x18) & 0xfdff;
      func_0x07f03e6e(param_3 >> 8,param_2);
    }
  }
  return 0;
}

