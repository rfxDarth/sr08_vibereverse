/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc1894(int param_1)

{
  int iVar1;
  int iVar2;
  undefined1 auStack_30 [32];
  
  iVar2 = param_1 + 0xc;
  if (*(ushort *)(param_1 + 8) == _DAT_07fc18f0) {
    iVar1 = 0;
    do {
      auStack_30[iVar1] = *(undefined1 *)(iVar2 + (0x1f - iVar1));
      iVar1 = iVar1 + 1;
    } while (iVar1 < 0x20);
    ROM___aeabi_memcpy /* 0x07f1e0ac */(iVar2,auStack_30,0x20);
    iVar1 = 0;
    do {
      auStack_30[iVar1] = *(undefined1 *)(iVar2 + (0x3f - iVar1));
      iVar1 = iVar1 + 1;
    } while (iVar1 < 0x20);
    ROM___aeabi_memcpy /* 0x07f1e0ac */(param_1 + 0x2c,auStack_30);
  }
  ROM_llm_p256_start_func /* 0x07f0b2ea */(param_1);
  return;
}

