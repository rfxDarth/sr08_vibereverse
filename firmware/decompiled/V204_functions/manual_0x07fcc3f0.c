/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fcc3f0(undefined1 param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = func_0x07f0283e(0xfc);
  iVar2 = func_0x07f1bbb0(_DAT_07fcc410,uVar1,4,4);
  *(undefined1 *)(iVar2 + 2) = param_1;
  func_0x07f1bbe2();
  return;
}

