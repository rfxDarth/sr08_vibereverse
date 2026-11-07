/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined8 FUN_07fc7afc(ushort *param_1,uint param_2,int param_3,uint param_4)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_20;
  
  piVar1 = DAT_07fc7b54;
  *DAT_07fc7b54 = 1;
  do {
  } while (*piVar1 != 0);
  uVar2 = *DAT_07fc7b58;
  local_20 = param_2;
  do {
    uVar3 = *param_1 & param_2;
    if (param_3 != 0) {
      uVar3 = (uint)((*param_1 & param_2) == 0);
    }
    if (uVar3 != 0) break;
    *piVar1 = 1;
    do {
    } while (*piVar1 != 0);
    local_20 = *DAT_07fc7b58;
    uVar3 = local_20;
    if (local_20 < uVar2) {
      uVar3 = local_20 + 0x5000000;
    }
  } while (uVar3 - uVar2 < param_4);
  return CONCAT44(local_20,param_4);
}

