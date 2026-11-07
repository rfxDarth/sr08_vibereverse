/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined4 FUN_07fc022c(undefined4 param_1,int param_2,int param_3)

{
  byte bVar1;
  byte bVar2;
  undefined4 uVar3;
  int iVar4;
  
  uVar3 = 1;
  iVar4 = *(int *)(*(int *)(DAT_07fc05e8 + param_3 * 4) + 0x10);
  bVar1 = *(byte *)(iVar4 + 0x14) & *(byte *)(iVar4 + 0x1b);
  bVar2 = *(byte *)(iVar4 + 0x15) & *(byte *)(iVar4 + 0x1c);
  if ((((param_2 == 1) || (param_2 == 2)) &&
      (-1 < (int)((uint)(*(byte *)(iVar4 + 0x12) & *(byte *)(iVar4 + 0x19)) << 0x1c))) &&
     (((bVar1 | bVar2) & 1) == 0)) {
    uVar3 = 0;
  }
  if (((param_2 == 3) || (param_2 == 4)) &&
     ((-1 < (int)((uint)bVar1 << 0x1d) && (-1 < (int)((uint)bVar2 << 0x1d))))) {
    uVar3 = 0;
  }
  return uVar3;
}

