/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc11f8(int param_1,int param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uStack_18;
  
  iVar3 = _DAT_07fc12e4;
  iVar4 = param_1 * 4;
  uStack_18 = param_4;
  if (*(char *)(*(int *)(_DAT_07fc12e4 + iVar4) + 0x48) == '$') {
    func_0x07f1e0ac(*(int *)(*(int *)(_DAT_07fc12e4 + iVar4) + 0x10) + 0x2e,param_2 + 5,0x10);
    *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 0x25;
    func_0x07f1425c(param_1,0);
  }
  if (*(char *)(*(int *)(iVar3 + iVar4) + 0x48) == '\f') {
    func_0x07f1e0ac(*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0x2e,param_2 + 5,0x10);
    iVar1 = *(int *)(*(int *)(iVar3 + iVar4) + 0x10);
    if ((int)((uint)*(byte *)(iVar1 + 0x5f) << 0x1c) < 0) {
      iVar1 = func_0x07f14c98(param_1);
      if (iVar1 == 1) {
        *(undefined1 *)(*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0xc6) = 0;
        func_0x07f13cc8(param_1,4,*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0x1e);
        iVar3 = *(int *)(iVar3 + iVar4);
        if (*(char *)(*(int *)(iVar3 + 0x10) + 0x5e) == '\0') {
          *(undefined1 *)(iVar3 + 0x48) = 0x1b;
          func_0x07f1441a(param_1);
        }
        else {
          *(undefined1 *)(iVar3 + 0x48) = 0x1a;
          func_0x07f14370(param_1,0);
        }
      }
      else {
        *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 7;
        func_0x07f1425c(param_1,0);
      }
      return;
    }
    iVar1 = func_0x07f1e0f4(iVar1 + 0x1e,iVar1 + 0x2e,0x10);
    if (iVar1 == 0) {
      uStack_18._0_1_ = 4;
      func_0x07f13cc8(param_1,5,&uStack_18);
      uStack_18 = CONCAT31(uStack_18._1_3_,(undefined1)uStack_18) | 0x60;
      uVar2 = func_0x07f14c98(param_1);
      func_0x07f13b9c(param_1,uVar2,uStack_18 & 0xff,1);
      return;
    }
    *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 9;
    uVar2 = func_0x07f14c98(param_1);
    func_0x07f13972(param_1,uVar2,0);
  }
  return;
}

