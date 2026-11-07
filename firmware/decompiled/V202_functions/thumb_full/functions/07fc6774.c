/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc6774(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined1 *puVar2;
  uint uVar3;
  
  uVar3 = param_4;
  iVar1 = func_0x07f1bf1a(param_3);
  if (iVar1 == 0) {
    iVar1 = FUN_07fca05c(0xfd);
    puVar2 = (undefined1 *)func_0x07f1bbb0(DAT_07fc67c0,4,param_3,4,uVar3);
    *puVar2 = (char)(param_4 >> 8);
    if (param_4 >> 0xb != 0) {
      *DAT_07fc6b68 = 200;
      *DAT_07fc6b6c = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    *(short *)(puVar2 + 2) = *param_2 - *(short *)(iVar1 + 4);
    func_0x07f1bbe2();
  }
  return 0;
}

