/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4
FUN_07fcdd44(int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,int param_6,
            int param_7,int param_8)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar3 = 0;
  uVar2 = 0;
  iVar4 = param_1;
  iVar5 = param_2;
  if (*(int *)(DAT_07fcdd88 + 0x1c) != 0) {
    for (; uVar3 < param_5; uVar3 = uVar3 + 1 & 0xff) {
      iVar1 = uVar3 * 2;
      FUN_07fccc60(*(undefined4 *)(param_1 + uVar3 * 4),*(undefined4 *)(param_2 + uVar3 * 4),param_3
                   ,param_4,(int)*(short *)(param_6 + iVar1),(int)*(short *)(param_7 + iVar1),
                   (int)*(short *)(param_8 + iVar1),iVar4,iVar5);
    }
    uVar2 = 1;
  }
  return uVar2;
}

