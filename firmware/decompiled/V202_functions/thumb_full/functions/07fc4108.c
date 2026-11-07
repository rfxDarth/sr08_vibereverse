/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4108(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
  uVar5 = DAT_07fc4248;
  iVar1 = DAT_07fc4244;
  iVar3 = param_1 - *(short *)(DAT_07fc4244 + 0x34);
  uVar4 = iVar3 >> 0x1f;
  uVar4 = iVar3 + uVar4 ^ uVar4;
  if (uVar4 < 0x12d) {
    if (uVar4 < 0xfb) goto LAB_07fc4164;
  }
  else if (DAT_07fc4248 + 0xc9 < (uint)(param_5 - *(int *)(DAT_07fc4244 + 0x78))) {
    *(int *)(DAT_07fc4244 + 0x78) = param_5;
  }
  if ((uVar5 + 1 < (uint)(param_5 - *(int *)(iVar1 + 0x74))) &&
     (*(int *)(iVar1 + 0x74) = param_5, *(char *)(DAT_07fc424c + 0xb) == '\x10')) {
    FUN_07fc25ec(6,2,0,param_2,param_2);
    uVar5 = DAT_07fc4248;
  }
LAB_07fc4164:
  *(short *)(iVar1 + 0x34) = (short)param_1;
  if (uVar5 < (uint)(param_5 - *(int *)(iVar1 + 0x68))) {
    iVar3 = param_2 - *(short *)(iVar1 + 0x2e);
    uVar4 = iVar3 >> 0x1f;
    uVar4 = iVar3 + uVar4 ^ uVar4;
    iVar3 = param_1 - *(short *)(iVar1 + 0x2c);
    uVar6 = iVar3 >> 0x1f;
    uVar6 = iVar3 + uVar6 ^ uVar6;
    if (uVar4 <= uVar6) {
      uVar4 = uVar6;
    }
    iVar3 = param_3 - *(short *)(iVar1 + 0x30);
    uVar6 = iVar3 >> 0x1f;
    uVar6 = iVar3 + uVar6 ^ uVar6;
    if (uVar6 <= uVar4) {
      uVar6 = uVar4;
    }
    iVar3 = param_4 - *(short *)(iVar1 + 0x32);
    uVar4 = iVar3 >> 0x1f;
    uVar4 = iVar3 + uVar4 ^ uVar4;
    if (uVar4 <= uVar6) {
      uVar4 = uVar6;
    }
    if (0x4f < uVar4) {
      *(uint *)(iVar1 + 0x6c) = *(uint *)(iVar1 + 0x6c) | 1;
      if (0x77 < uVar4) {
        *(undefined4 *)(DAT_07fc4250 + 0x18) = 0;
      }
      *(char *)(iVar1 + 0x11) = *(char *)(iVar1 + 0x11) + '\x01';
    }
    bVar2 = false;
    if (((uVar4 & 0xffff) < 0x50) &&
       ((*(char *)(iVar1 + 7) < '\0' ||
        (((param_4 + (param_4 >> 0xf) ^ param_4 >> 0xf) & 0xffffU) < 0xc9)))) {
      uVar4 = (param_2 + (param_2 >> 0xf) ^ param_2 >> 0xf) & 0xffff;
      if (uVar4 >> 3 < 0x7d) {
        iVar3 = (uVar5 - uVar4) + 1;
      }
      else {
        iVar3 = uVar4 + DAT_07fc4254;
      }
      bVar2 = ((param_3 + (param_3 >> 0xf) ^ param_3 >> 0xf) & 0xffffU) < 0xc9 && iVar3 < 0xc9;
    }
    *(int *)(iVar1 + 0x68) = param_5;
    *(short *)(iVar1 + 0x32) = (short)param_4;
    *(short *)(iVar1 + 0x30) = (short)param_3;
    *(short *)(iVar1 + 0x2e) = (short)param_2;
    *(short *)(iVar1 + 0x2c) = (short)param_1;
    *(bool *)(iVar1 + 0x10) = bVar2;
  }
  return;
}

