/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc174c(int param_1)

{
  int iVar1;
  
  *_DAT_07fc17f8 = 0x100;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *_DAT_07fc17fc = 0x100;
  *_DAT_07fc1800 = *_DAT_07fc1800 & 0xffffff00 | 0x40;
  _DAT_07fc17f8[-0x20] = 0x100;
  iVar1 = DAT_07fc17f4;
  *(ushort *)(DAT_07fc17f4 + 2) = (*(ushort *)(DAT_07fc17f4 + 2) & 0xfff9) + 4;
  *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 1;
  *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x38;
  *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) & 0xffbf;
  if (param_1 == 1) {
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x600;
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x100;
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x3800;
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) & 0xbfff;
  }
  return;
}

