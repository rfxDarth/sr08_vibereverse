/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc2508(int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = FUN_07fc7604(0x2a);
  uVar2 = FUN_07fc7604(0x2b);
  if (param_1 == 2) {
    if (((uVar1 & 1) != 0) && ((uVar2 & 0x40) == 0)) goto LAB_07fc2536;
  }
  else if ((param_1 == 1) && (((uVar1 & 1) == 0 && ((int)(uVar2 << 0x19) < 0)))) {
LAB_07fc2536:
    FUN_07fc3a14(0x8000000);
    FUN_07fc3a14(0x4000000);
    return;
  }
  return;
}

