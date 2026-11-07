/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fcc2f0(undefined4 param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  
  if (*(char *)(param_2 + 2) != '\0') {
    uVar1 = (uint)*(ushort *)(param_2 + 4);
    if (uVar1 == 0) {
      uVar2 = 5;
    }
    else {
      if (uVar1 < _DAT_07fcc318) {
        *(uint *)(_DAT_07fcc3c4 + 0x18) = uVar1;
        return 0;
      }
      uVar2 = 7;
    }
    FUN_07fcc3f0(uVar2);
  }
  return 0;
}

