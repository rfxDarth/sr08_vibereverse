/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fcc31c(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (*(char *)(param_2 + 2) == '\0') {
    return 0;
  }
  uVar2 = *(uint *)(param_2 + 4);
  if ((uVar2 >> 0x1a < 5) &&
     (*(uint *)(_DAT_07fcc3c4 + 0x14) = uVar2 & 0xffff, 2 < (uVar2 & 0xffff))) {
    uVar3 = 0x11;
  }
  else {
    iVar1 = _DAT_07fcc56c;
    iVar4 = _DAT_07fcc3c4;
    uVar2 = uVar2 >> 0x18;
    if (uVar2 != 0xff) {
      if (uVar2 == 0xfd) {
        if (*(char *)(_DAT_07fcc3c4 + 0x5a) == -1) {
          func_0x07f027e4(_DAT_07fcc3c8);
        }
        else {
          *(undefined1 *)(_DAT_07fcc56c + 0x18) = 1;
          FUN_07fc3220();
        }
        goto LAB_07fcc3b2;
      }
      if (uVar2 == 0xfe) {
        if (*(char *)(_DAT_07fcc56c + 0x14) == '\0') {
          uVar3 = 2;
        }
        else {
          uVar3 = 4;
        }
        FUN_07fcc3f0(uVar3);
        iVar4 = _DAT_07fcc3c4;
        *(undefined1 *)(iVar1 + 0x14) = 0;
      }
      else {
        if (uVar2 != 0x13) {
          uVar3 = 8;
          goto LAB_07fcc398;
        }
        FUN_07fc2dc4();
        FUN_07fcc3f0(0x10);
        iVar4 = _DAT_07fcc3c4;
        *(undefined1 *)(_DAT_07fcc56c + 0x14) = 0;
      }
      *(undefined4 *)(iVar4 + 0x18) = 0;
      *(undefined4 *)(iVar4 + 0x1c) = 0;
      *(undefined4 *)(iVar4 + 0x20) = 0;
      *(undefined4 *)(iVar4 + 0x24) = 0;
      goto LAB_07fcc3b2;
    }
    *(undefined1 *)(_DAT_07fcc56c + 0x14) = 0;
    *(undefined4 *)(iVar4 + 0x18) = 0;
    *(undefined4 *)(iVar4 + 0x1c) = 0;
    *(undefined4 *)(iVar4 + 0x20) = 0;
    *(undefined4 *)(iVar4 + 0x24) = 0;
    uVar3 = 3;
  }
LAB_07fcc398:
  FUN_07fcc3f0(uVar3);
LAB_07fcc3b2:
  FUN_07fcc3cc(0);
  return 0;
}

