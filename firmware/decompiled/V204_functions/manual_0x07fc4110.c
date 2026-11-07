/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc4110(void)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  
  puVar2 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc4140,9,4,9);
  *puVar2 = 0x1b;
  uVar1 = FUN_07fc7358(0xfc);
  puVar2[8] = 0;
  *(undefined4 *)(puVar2 + 4) = 4;
  *(undefined2 *)(puVar2 + 2) = 0xfc;
  puVar2[1] = uVar1;
  func_0x07f1bbe2(puVar2);
  return;
}

