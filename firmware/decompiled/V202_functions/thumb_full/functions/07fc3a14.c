/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3a14(uint param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  iVar1 = DAT_07fc3d58;
  uVar3 = *(uint *)(DAT_07fc3d58 + 0x14);
  if (*(char *)(DAT_07fc3ddc + 0xb) == '\x1e') {
    *(undefined4 *)(DAT_07fc3d58 + 0x14) = 0;
  }
  else {
    uVar2 = uVar3;
    if ((param_1 & 0xffff) != 0) {
      *(undefined4 *)(DAT_07fc3d58 + 0x20) = *(undefined4 *)(DAT_07fc3a84 + 0x28);
      uVar2 = uVar3 | param_1;
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (param_1 >> 0x10 != 0) {
      uVar2 = uVar2 & ~(param_1 >> 0x10);
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (uVar2 != 0) goto LAB_07fc3a6c;
  }
  if ((uVar3 & 1) != 0) {
    FUN_07fc4f60(*(undefined1 *)(DAT_07fc3d2c + 0x2a));
    FUN_07fc25ec(0x27,0,0);
  }
  if ((int)(uVar3 << 0x1e) < 0) {
    FUN_07fc25ec(0x28,0,0);
  }
LAB_07fc3a6c:
  if (uVar3 != *(uint *)(iVar1 + 0x14)) {
    FUN_07fc381c(0);
    FUN_07fc37b4();
  }
  return;
}

