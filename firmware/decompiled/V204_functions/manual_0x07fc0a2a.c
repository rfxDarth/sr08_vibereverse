/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc0a2a(void)

{
  undefined1 *puVar1;
  undefined4 uVar2;
  int in_r3;
  
  if (in_r3 == DAT_07fc0a70 + -0x22) {
    puVar1 = (undefined1 *)func_0x07f1bbb0(DAT_07fc0a74 + -3,0,DAT_07fc0a70 + -0x22,9);
    func_0x07f1e0ac(puVar1 + 1,_DAT_07fc0a90,8);
    puVar1[4] = puVar1[4] | 8;
    *puVar1 = 0;
    func_0x07f0eb10(puVar1);
    uVar2 = 0;
  }
  else {
    uVar2 = (*_DAT_07fc0a8c)();
  }
  return uVar2;
}

