/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fcdb24(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short extraout_r1;
  int extraout_r1_00;
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  iVar3 = DAT_07fcdd30;
  iVar2 = DAT_07fcdd2c;
  *(int *)(DAT_07fcdd30 + 0x1c) = DAT_07fcdd2c;
  *(undefined1 *)(iVar2 + 2) = 1;
  uVar5 = 0;
  *(undefined4 *)(iVar2 + 4) = 0;
  *(undefined1 *)(iVar2 + 8) = 0;
  *(undefined1 *)(iVar2 + 10) = 0;
  *(undefined1 *)(iVar2 + 0xca0) = 4;
  *(undefined1 *)(iVar2 + 0xca1) = 0;
  func_0x07f1dfb8(*(undefined4 *)(iVar3 + 8),3,param_3,param_4,param_4);
  do {
    iVar1 = uVar5 * 4 + iVar2;
    *(undefined4 *)(iVar1 + 0x288) = 0;
    *(undefined4 *)(iVar1 + 0x2d4) = 0;
    iVar1 = uVar5 * 2;
    uVar5 = uVar5 + 1 & 0xffff;
    *(short *)(iVar1 + iVar2 + 0xc74) = extraout_r1 + 0x61;
  } while (uVar5 < 8);
  iVar2 = *(int *)(iVar3 + 0x1c);
  uVar5 = 0;
  do {
    iVar1 = uVar5 * 4 + iVar2;
    *(undefined4 *)(iVar1 + 0x2a8) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar1 + 0x2f4) = 0;
  } while (uVar5 < 8);
  iVar2 = *(int *)(iVar3 + 0x1c);
  uVar5 = 0;
  *(undefined4 *)(iVar2 + 0x34) = 0;
  *(undefined4 *)(iVar2 + 0x38) = 0;
  *(undefined4 *)(iVar2 + 0x3c) = 0;
  *(undefined4 *)(iVar2 + 0x40) = 0;
  *(undefined4 *)(iVar2 + 0x44) = 0;
  *(undefined4 *)(iVar2 + 0x48) = 0;
  *(undefined4 *)(iVar2 + 0x4c) = 0;
  *(undefined4 *)(iVar2 + 0x50) = 0;
  *(undefined4 *)(iVar2 + 0x54) = 0;
  *(undefined4 *)(iVar2 + 0x58) = 0;
  *(undefined4 *)(iVar2 + 0xc) = 0;
  *(undefined4 *)(iVar2 + 0x10) = 0;
  *(undefined4 *)(iVar2 + 0x14) = 0;
  *(undefined4 *)(iVar2 + 0x18) = 0;
  *(undefined4 *)(iVar2 + 0x1c) = 0;
  *(undefined4 *)(iVar2 + 0x20) = 0;
  *(undefined4 *)(iVar2 + 0x24) = 0;
  *(undefined4 *)(iVar2 + 0x28) = 0;
  *(undefined4 *)(iVar2 + 0x2c) = 0;
  *(undefined4 *)(iVar2 + 0x30) = 0;
  do {
    iVar3 = uVar5 * 4 + iVar2;
    *(undefined4 *)(iVar3 + 0x250) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar3 + 0x26c) = 0;
  } while (uVar5 < 7);
  iVar4 = *(int *)(DAT_07fcdd30 + 0x1c);
  *(undefined4 *)(iVar4 + 800) = 0;
  *(undefined4 *)(iVar4 + 0x324) = 0;
  *(undefined4 *)(iVar4 + 0x328) = 0;
  *(undefined4 *)(iVar4 + 0x32c) = 0;
  *(undefined4 *)(iVar4 + 0x330) = 0;
  *(undefined4 *)(iVar4 + 0x334) = 0;
  *(undefined4 *)(iVar4 + 0x338) = 0;
  *(undefined4 *)(iVar4 + 0x33c) = 0;
  *(undefined4 *)(iVar4 + 0x344) = 0;
  *(undefined4 *)(iVar4 + 0x348) = 0;
  *(undefined4 *)(iVar4 + 0x34c) = 0;
  *(undefined4 *)(iVar4 + 0x350) = 0;
  *(undefined4 *)(iVar4 + 0x354) = 0;
  *(undefined4 *)(iVar4 + 0x358) = 0;
  *(undefined4 *)(iVar4 + 0x35c) = 0;
  *(undefined4 *)(iVar4 + 0x360) = 0;
  *(undefined4 *)(iVar4 + 0x364) = 0;
  *(undefined4 *)(iVar4 + 0x36c) = 0;
  *(undefined4 *)(iVar4 + 0x370) = 0;
  *(undefined4 *)(iVar4 + 0x374) = 0;
  *(undefined4 *)(iVar4 + 0x378) = 0;
  *(undefined4 *)(iVar4 + 0x37c) = 0;
  iVar2 = DAT_07fcdd30;
  *(undefined4 *)(iVar4 + 0x380) = 0;
  func_0x07f1dfb8(*(undefined4 *)(iVar2 + 8),3,iVar3 + 0x200,iVar1 + 0x280,param_4);
  *(int *)(iVar4 + 900) = extraout_r1_00 + 0x61;
  *(undefined1 *)(iVar4 + 9) = 99;
  *(undefined4 *)(iVar4 + 0x388) = 0x1880;
  iVar2 = DAT_07fcdd34;
  iVar3 = *(int *)(DAT_07fcdd30 + 0x24);
  *(int *)(iVar4 + 0x390) = iVar3;
  *(int *)(iVar4 + 0x38c) = iVar3 + iVar2;
  *(undefined1 *)(DAT_07fcdd30 + 1) = 0;
  *(undefined4 *)(iVar4 + 0x394) = 0;
  *(undefined4 *)(iVar4 + 0x398) = 0;
  *(undefined4 *)(iVar4 + 0x39c) = 0;
  *(undefined4 *)(iVar4 + 0x3a0) = 0;
  uVar5 = 0;
  do {
    iVar2 = uVar5 * 4 + iVar4;
    *(undefined4 *)(iVar2 + 0x46c) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar2 + 0x4ec) = 0;
    iVar2 = DAT_07fcdd30;
  } while (uVar5 < 0x20);
  uVar5 = 0;
  iVar1 = *(int *)(DAT_07fcdd30 + 0x1c);
  do {
    iVar4 = uVar5 * 4 + iVar1;
    *(undefined4 *)(iVar4 + 0x3a4) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + 0x408) = 0;
  } while (uVar5 < 0x19);
  iVar1 = *(int *)(iVar2 + 0x1c);
  *(undefined1 *)(iVar1 + 0xc86) = 0;
  *(undefined1 *)(iVar1 + 0xc87) = 0;
  *(undefined1 *)(iVar1 + 0xc88) = 0;
  *(undefined1 *)(iVar1 + 0xc89) = 0;
  *(undefined1 *)(iVar1 + 0xc8a) = 0;
  *(undefined1 *)(iVar1 + 0xc8b) = 0;
  *(undefined4 *)(iVar1 + 0xc8c) = 0;
  uVar5 = 0;
  do {
    iVar4 = uVar5 * 2 + iVar1;
    *(undefined2 *)(iVar4 + 0x56c) = 0;
    *(undefined2 *)(iVar4 + 0x634) = 0;
    iVar4 = uVar5 * 8 + iVar1;
    *(undefined4 *)(iVar4 + 0x6fc) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + 0x700) = 0;
  } while (uVar5 < 100);
  uVar5 = 0;
  iVar1 = *(int *)(iVar2 + 0x1c);
  do {
    iVar4 = uVar5 * 4;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + iVar1 + 0xa1c) = 0;
  } while (uVar5 < 0x96);
  iVar1 = *(int *)(iVar2 + 0x1c);
  *(undefined1 *)(iVar1 + 0xc90) = 0;
  *(undefined2 *)(iVar1 + 0xc92) = 0;
  *(undefined1 *)(iVar1 + 0xc94) = 0;
  uVar5 = 0;
  do {
    iVar4 = iVar1 + uVar5;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined1 *)(iVar4 + 0x1ec) = 0x40;
  } while (uVar5 < 100);
  iVar1 = *(int *)(iVar2 + 0x1c);
  uVar5 = 0;
  do {
    iVar4 = uVar5 * 4 + iVar1;
    *(undefined4 *)(iVar4 + 0x5c) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + 0x124) = 0;
  } while (uVar5 < 0x32);
  iVar1 = *(int *)(iVar2 + 0x1c);
  *(undefined1 *)(iVar1 + 0xc95) = 0;
  *(undefined4 *)(iVar1 + 0x370) = 0x40;
  iVar2 = DAT_07fcdd38;
  *(undefined4 *)(iVar1 + 0xc9c) = 0;
  *(int *)(iVar1 + 0xc98) = iVar3 + iVar2;
  FUN_07fcddf0();
  return 1;
}

