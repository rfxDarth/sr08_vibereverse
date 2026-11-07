/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc97a0(int param_1,byte *param_2,undefined1 *param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  byte bVar3;
  
  switch(param_1) {
  case 0x40:
    if (1 < *param_2) {
      param_3[1] = 7;
      uVar1 = 0xd0;
LAB_07fc981a:
      *param_3 = uVar1;
      uVar2 = 0;
      bVar3 = 2;
      goto LAB_07fc983a;
    }
    break;
  case 0x41:
    if (*param_2 != 0) {
      uVar1 = 6;
LAB_07fc982e:
      *param_3 = uVar1;
      uVar2 = 0;
      bVar3 = 1;
      goto LAB_07fc983a;
    }
    break;
  case 0x42:
    if (*param_2 != 0) {
      uVar1 = 0x40;
      goto LAB_07fc982e;
    }
    break;
  case 0x43:
    if (*param_2 != 0) {
      uVar1 = 100;
      goto LAB_07fc982e;
    }
    break;
  case 0x44:
    if (*param_2 != 0) {
      uVar1 = 0x32;
      goto LAB_07fc982e;
    }
    break;
  default:
    if (param_1 != 7) {
      if (param_1 != 1) {
        return 1;
      }
      bVar3 = 6;
      func_0x07f1e0ac(param_3,DAT_07fc9840 + 2,6);
      uVar2 = 0;
      goto LAB_07fc983a;
    }
    if (1 < *param_2) {
      param_3[1] = 1;
      uVar1 = 0xf4;
      goto LAB_07fc981a;
    }
  }
  uVar2 = 4;
  bVar3 = 0;
LAB_07fc983a:
  *param_2 = bVar3;
  return uVar2;
}

