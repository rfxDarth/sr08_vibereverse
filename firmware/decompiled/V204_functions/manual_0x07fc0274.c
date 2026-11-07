/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined4 FUN_07fc0274(undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  iVar1 = func_0x07f1bf1a(param_3);
  iVar2 = DAT_07fc05ec;
  param_3 = param_3 >> 8;
  if (iVar1 != 0) {
    iVar4 = *(int *)(DAT_07fc05ec + param_3 * 4);
    *(ushort *)(iVar4 + 0x18) = *(ushort *)(iVar4 + 0x18) | 0x400;
    if ((iVar1 != 0x13) && (iVar1 != 0x14)) {
      if (iVar1 == 0x15) {
        return 2;
      }
      iVar2 = *(int *)(iVar2 + param_3 * 4);
      uVar3 = (uint)*(byte *)(iVar2 + 0x2d);
      if (((int)(uVar3 * 0x8000000) < 0) && (*(char *)(iVar2 + 0xb6) != '\0')) {
        *(undefined1 *)(iVar2 + 0xb6) = 1;
        func_0x07f063f4(param_3,0x3d,uVar3,1,param_4);
      }
      else {
        if ((int)(uVar3 << 0x1c) < 0) {
          *(undefined1 *)(iVar2 + 0xb6) = 0;
          return 2;
        }
        *(undefined1 *)(iVar2 + 0xb6) = 1;
        func_0x07f03de8(param_3);
        func_0x07f03e6e(param_3,param_2);
      }
    }
  }
  return 0;
}

