/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fcca2c(void)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = DAT_07fcca64;
  uVar3 = *(uint *)(DAT_07fcca64 + 0x34);
  uVar1 = uVar3 + 1;
  *(uint *)(DAT_07fcca64 + 0x34) = uVar1;
  if (3 < uVar1) {
    FUN_07fc3a38(0x400000);
  }
  if (*(int *)(iVar2 + 0x20) == 0x40) {
    uVar3 = uVar3 & 3;
    if (uVar3 == 0) {
      iVar2 = 0x400;
    }
    else {
      iVar2 = (uint)(uVar3 == 2) * 0x800;
    }
    FUN_07fc8e58(iVar2);
  }
  return;
}

