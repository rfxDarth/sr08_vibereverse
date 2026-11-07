/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4
FUN_07fc677c(undefined4 param_1,undefined2 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined2 *puVar3;
  undefined2 uVar4;
  uint uVar5;
  undefined1 auStack_20 [4];
  byte abStack_1c [4];
  undefined1 auStack_18 [4];
  
  uVar1 = FUN_07fcb080(0x26);
  iVar2 = FUN_07fc76a0(uVar1,*param_2,auStack_18,abStack_1c,auStack_20);
  puVar3 = (undefined2 *)func_0x07f1bbb0(_DAT_07fc67e4,param_4,param_3,6);
  *puVar3 = *param_2;
  if (iVar2 != 0) goto LAB_07fc67d8;
  if (abStack_1c[0] < 0x17) {
    iVar2 = 0;
    uVar5 = 1 << (uint)abStack_1c[0];
    if ((uVar5 & _DAT_07fc67e8) == 0) {
      if ((uVar5 & _DAT_07fc67ec) == 0) goto LAB_07fc67d2;
      uVar4 = 2;
    }
    else {
      uVar4 = 0;
    }
  }
  else {
LAB_07fc67d2:
    iVar2 = 3;
    uVar4 = 0;
  }
  puVar3[1] = uVar4;
LAB_07fc67d8:
  *(char *)(puVar3 + 2) = (char)iVar2;
  func_0x07f1bbe2();
  return 0;
}

