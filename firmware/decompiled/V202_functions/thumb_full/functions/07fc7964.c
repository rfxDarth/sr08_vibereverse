/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7964(ushort *param_1)

{
  byte bVar1;
  ushort uVar2;
  bool bVar3;
  ushort *puVar4;
  ushort *puVar5;
  byte bVar6;
  int iVar7;
  
  iVar7 = 0;
  bVar3 = (bool)isCurrentModePrivileged();
  if (bVar3) {
    iVar7 = isIRQinterruptsEnabled();
  }
  bVar3 = (bool)isCurrentModePrivileged();
  if (bVar3) {
    enableIRQinterrupts(1);
  }
  *DAT_07fc7a28 = *DAT_07fc7a28 | 0x20;
  puVar4 = DAT_07fc7a2c;
  if (iVar7 == 0) {
    bVar3 = (bool)isCurrentModePrivileged();
    if (bVar3) {
      enableIRQinterrupts(0);
    }
  }
  else {
    bVar3 = (bool)isCurrentModePrivileged();
    if (bVar3) {
      enableIRQinterrupts(1);
    }
  }
  *DAT_07fc7a2c = *DAT_07fc7a2c & 0xfffe;
  puVar5 = DAT_07fc7a30;
  do {
  } while ((*puVar4 & 1) != 0);
  DAT_07fc7a30[0x18] = 0;
  puVar5[10] = *param_1;
  puVar5[0xc] = param_1[1];
  puVar5[0xe] = param_1[2];
  puVar5[0x10] = param_1[3];
  *puVar5 = (ushort)*(byte *)((int)param_1 + 9) << 1 | *puVar5 & 0xfff9;
  puVar5[0x1e] = (byte)param_1[7] - 1 | puVar5[0x1e] & 0xffe0;
  puVar5[0x1c] = *(byte *)((int)param_1 + 0xf) - 1 | puVar5[0x1c] & 0xffe0;
  uVar2 = param_1[6];
  *puVar5 = *puVar5 | 1;
  *puVar5 = *puVar5 | 0x40;
  bVar1 = *(byte *)((int)param_1 + 0xb);
  if (bVar1 == 1) {
    bVar6 = 1;
  }
  else {
    bVar6 = (byte)param_1[4];
  }
  *puVar5 = *puVar5 & 0xffdf | (ushort)bVar6 << 5;
  *puVar5 = (ushort)bVar1 << 4 | *puVar5 & 0xffef;
  puVar5[2] = puVar5[2] & 0xfc00 | uVar2;
  *puVar4 = *puVar4 | 1;
  do {
  } while ((*puVar4 & 1) == 0);
  return;
}

