/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc5dd0(undefined4 param_1,byte *param_2,undefined4 param_3)

{
  undefined2 uVar1;
  int iVar2;
  undefined2 *puVar3;
  
  iVar2 = func_0x07f1bf1a(param_3);
  if (iVar2 == 1) {
    iVar2 = (uint)*param_2 * 0x100 + 8;
    if (param_2[6] == 0) {
      puVar3 = (undefined2 *)func_0x07f1bbb0(DAT_07fc5e44,iVar2,param_3,*(short *)(param_2 + 4) + 6)
      ;
      uVar1 = FUN_07fc5a64(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0;
      *puVar3 = uVar1;
      puVar3[1] = *(undefined2 *)(param_2 + 4);
      func_0x07f1e0ac((int)puVar3 + 5,param_2 + 7,*(undefined2 *)(param_2 + 4));
    }
    else {
      puVar3 = (undefined2 *)func_0x07f1bbb0(DAT_07fc5e44,iVar2,param_3,6);
      uVar1 = FUN_07fc5a64(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0x80;
      *puVar3 = uVar1;
    }
    func_0x07f1bbe2(puVar3);
    func_0x07f1beb6(param_3,0);
  }
  return 0;
}

