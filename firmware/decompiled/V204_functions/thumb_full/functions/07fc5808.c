/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc5808(undefined4 param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  short *psVar2;
  
  iVar1 = func_0x07f1bf1a(param_3);
  if (iVar1 == 0) {
    iVar1 = FUN_07fcb080(0xfd);
    psVar2 = (short *)func_0x07f1bbb0(_DAT_07fc5844,8,param_3,6);
    psVar2[1] = *(short *)(param_2 + 4);
    *(undefined1 *)(psVar2 + 2) = *(undefined1 *)(param_2 + 6);
    *psVar2 = *(short *)(param_2 + 2) + *(short *)(iVar1 + 4);
    func_0x07f1bbe2();
  }
  return 0;
}

