/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


ushort FUN_07fc75d4(byte *param_1,uint param_2,uint param_3,uint param_4)

{
  ushort uVar1;
  short sVar2;
  short sVar3;
  byte *pbVar4;
  uint uVar5;
  
  if (0x16 < param_3) {
    return 0;
  }
  if (param_1[0x21] <= param_2) {
    return 0;
  }
  if ((0x12 < param_3) && (param_1[param_2 * 0x16 + 0x17] <= param_4)) {
    return 0;
  }
  sVar2 = *(short *)(param_1 + 0x1a);
  pbVar4 = param_1;
  for (uVar5 = param_2; pbVar4 = pbVar4 + 0x16, uVar5 != 0; uVar5 = uVar5 - 1) {
    sVar2 = sVar2 + (ushort)*pbVar4;
  }
  if (param_3 < 0x13) {
    uVar1 = sVar2 + (short)param_3;
    uVar5 = (uint)*(ushort *)(param_1 + param_2 * 0x16 + 4);
    if ((*(ushort *)(param_1 + param_2 * 0x16 + 4) & 1) == 0) {
      if (param_3 < 0x10) {
        if (10 < param_3) {
          uVar1 = 0;
        }
      }
      else {
        uVar1 = uVar1 - 5;
      }
    }
    if (0xf < param_3) {
      uVar1 = (ushort)((int)(uVar5 << 0x1e) >> 0x1f) & uVar1;
    }
    if (-1 < (int)(uVar5 << 0x1d)) {
      if (param_3 < 0xb) {
        if (8 < param_3) {
          uVar1 = 0;
        }
      }
      else {
        uVar1 = uVar1 - 2;
      }
    }
    if ((int)(uVar5 << 0x1c) < 0) {
      return uVar1;
    }
    if (8 < param_3) {
      return uVar1 - 2;
    }
    if (1 < param_3) {
      return uVar1 - 1;
    }
    if (param_3 != 1) {
      return uVar1;
    }
  }
  else {
    sVar2 = sVar2 + (ushort)param_1[param_2 * 0x16 + 0x18];
    for (uVar5 = 0; param_4 != uVar5; uVar5 = uVar5 + 1) {
      if ((int)((uint)(*(ushort *)(param_1 + param_2 * 0x16 + 4) >> (uVar5 & 0xff)) << 0x19) < 0) {
        sVar3 = 4;
      }
      else {
        sVar3 = 3;
      }
      sVar2 = sVar3 + sVar2;
    }
    if ((param_3 != 0x16) ||
       (-1 < (int)((uint)(*(ushort *)(param_1 + param_2 * 0x16 + 4) >> (param_4 & 0xff)) << 0x19)))
    {
      return ((short)param_3 + sVar2) - 0x13;
    }
  }
  return 0;
}

