/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc2dc4(void)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar3 = FUN_07fc4440();
  iVar2 = _DAT_07fc30d4;
  if (((0x4f < *(ushort *)(DAT_07fc2e4c + 0xc)) || (*(short *)(DAT_07fc2e4c + 0xe) != 0)) ||
     (*(ushort *)(_DAT_07fc30d4 + 0x42) >> 2 < 0x7d)) {
    uVar5 = uVar3;
    if (uVar3 < *(uint *)(_DAT_07fc30d4 + 0x70)) {
      uVar5 = uVar3 + 0x5000000;
    }
    if (DAT_07fc2e18 <= uVar5 - *(uint *)(_DAT_07fc30d4 + 0x70)) {
      uVar1 = *(undefined1 *)(_DAT_07fc30d4 + 8);
      uVar4 = FUN_07fc2da8();
      FUN_07fc3254(uVar1,uVar4,uVar4);
      *(uint *)(iVar2 + 0x70) = uVar3;
    }
  }
  FUN_07fc2e50();
  return;
}

