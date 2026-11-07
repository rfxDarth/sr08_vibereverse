/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2efc(undefined4 param_1)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = DAT_07fc2f88;
  uVar2 = *(int *)(DAT_07fc2f88 + 0x3c) - 1;
  if ((uVar2 & *(int *)(DAT_07fc2f88 + 0x38) + ~*(uint *)(DAT_07fc2f88 + 0x34)) != 0) {
    uVar2 = uVar2 & *(int *)(DAT_07fc2f88 + 0x38) - 1U;
    ROM___aeabi_memcpy /* 0x07f1e0ac */(*(int *)(DAT_07fc2f88 + 0x44) + *(int *)(DAT_07fc2f88 + 0x40) * uVar2,param_1);
    *(uint *)(iVar1 + 0x38) = uVar2;
  }
  return;
}

