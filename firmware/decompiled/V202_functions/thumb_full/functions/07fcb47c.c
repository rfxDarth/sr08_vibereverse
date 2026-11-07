/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcb47c(void)

{
  bool bVar1;
  ushort *puVar2;
  undefined2 *puVar3;
  int iVar4;
  
  iVar4 = 0;
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    iVar4 = isIRQinterruptsEnabled();
  }
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    enableIRQinterrupts(1);
  }
  *DAT_07fcb4e4 = *DAT_07fcb4e4 | 0x40;
  puVar3 = DAT_07fcb4ec;
  puVar2 = DAT_07fcb4e8;
  if (iVar4 == 0) {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(0);
    }
  }
  else {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(1);
    }
  }
  do {
  } while ((*DAT_07fcb4e8 & 1) != 0);
  DAT_07fcb4ec[6] = DAT_07fcb4ec[6] | 0x80;
  *DAT_07fcb4f0 = 1;
  *puVar3 = 1;
  puVar3[2] = 0;
  puVar3[6] = puVar3[6] & 0xff7f;
  puVar3[6] = 3;
  puVar2[0xe] = 1;
  puVar3[8] = puVar3[8] & 0xffdf;
  puVar3[8] = puVar3[8] & 0xfffd;
  puVar2[0x10] = 0;
  puVar2[0x12] = 0;
  return;
}

