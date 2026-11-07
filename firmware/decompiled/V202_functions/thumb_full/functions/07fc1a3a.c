/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fc1a3a(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  if (((param_1 & 0x7fffffff) != 0) && ((param_2 & 0x7fffffff) != 0)) {
    iVar3 = ((param_1 & 0x7fffffff) >> 0x17) + ((param_2 & 0x7fffffff) >> 0x17);
    uVar1 = param_1 & 0x7fffff;
    uVar5 = param_2 & 0x7fffff;
    uVar2 = uVar5 * uVar1 + (uVar1 + uVar5) * 0x800000 >> 0x10;
    uVar6 = ((~uVar2 + (uVar5 >> 8) * (uVar1 >> 8) + (uVar1 + uVar5) * 0x80 >> 0x10) + 0x4001) *
            0x10000;
    iVar4 = iVar3 + -0x7f;
    if ((uVar5 * uVar1 & 0xffff) != 0) {
      uVar6 = uVar6 + 1;
    }
    uVar2 = uVar2 | uVar6;
    if (-1 < (int)uVar2) {
      uVar2 = uVar2 << 1;
      iVar4 = iVar3 + -0x80;
    }
    uVar1 = iVar4 * 0x1000000 + (uVar2 >> 7) + 1;
    uVar5 = uVar1 >> 1;
    if ((uVar2 & 0xff) == 0x80) {
      uVar5 = (uVar1 >> 2) << 1;
    }
    if (iVar4 < 0) {
      uVar5 = 0;
    }
    return uVar5 | (param_1 ^ param_2) & 0x80000000;
  }
  return 0;
}

