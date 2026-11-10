// rea decompile_all
// name: quiesce_irq_source_wait_pending_bit_at_c4b0
// address: 0x7fcc4b0
// body: available
// range: 0x7fcc4b0-0x7fcc515 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void quiesce_irq_source_wait_pending_bit_at_c4b0(void)

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
  *DAT_07fcc518 = *DAT_07fcc518 | 0x40;
  puVar3 = DAT_07fcc520;
  puVar2 = DAT_07fcc51c;
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
  } while ((*DAT_07fcc51c & 1) != 0);
  DAT_07fcc520[6] = DAT_07fcc520[6] | 0x80;
  *DAT_07fcc524 = 1;
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

