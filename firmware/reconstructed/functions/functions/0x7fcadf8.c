// rea decompile_all
// name: initialize_peripheral_state_and_interrupts
// address: 0x7fcadf8
// body: available
// range: 0x7fcadf8-0x7fcaf37 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_peripheral_state_and_interrupts(void)

{
  bool bVar1;
  ushort *puVar2;
  undefined2 *puVar3;
  undefined2 *puVar4;
  int iVar5;
  ushort *puVar6;
  int iVar7;
  int iVar8;
  
  puVar2 = DAT_07fcaf38;
  DAT_07fcaf38[6] = DAT_07fcaf38[6] & 0xfffd;
  do {
  } while (-1 < (int)((uint)puVar2[8] << 0x1c));
  puVar2[0xf] = puVar2[0xf] | 0x100;
  copy_two_initialized_state_blocks_and_install_pointers();
  puVar3 = DAT_07fcaf3c;
  DAT_07fcaf3c[1] = 0x10;
  puVar3[6] = 0x304;
  *puVar3 = 8;
  puVar3[5] = 0x308;
  puVar3[1] = 1;
  puVar3[2] = 0x307;
  puVar3[1] = 0x40;
  puVar3[8] = 0x306;
  puVar3[1] = 0x20;
  puVar3[7] = 5;
  puVar4 = DAT_07fcaf40;
  *DAT_07fcaf40 = 8;
  puVar4[5] = 0x109;
  *puVar4 = 0x10;
  puVar4[6] = 0x10a;
  *puVar3 = 0x80;
  puVar3[9] = 0;
  puVar3[0x11] = 0x20;
  puVar3[0x17] = 0x200;
  puVar3[1] = 2;
  puVar3[3] = 0xf;
  iVar8 = DAT_07fcaf44;
  for (iVar7 = 0; iVar5 = DAT_07fcaf48, iVar7 != 0xe; iVar7 = iVar7 + 2) {
    update_status_slots_for_group_bit(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x200,0,0);
  }
  for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
    update_status_slots_for_group_bit(*(undefined1 *)(iVar5 + iVar8),*(undefined1 *)(iVar5 + iVar8 + 1),0x200,0,0);
  }
  *puVar2 = *puVar2 | 8;
  *puVar2 = *puVar2 | 3;
  puVar3 = DAT_07fcaf4c;
  DAT_07fcaf4c[2] = 0;
  puVar3[3] = 0;
  *puVar3 = 2;
  *DAT_07fcaf50 = (*DAT_07fcaf50 & 0xffffff) + 0x80000000;
  *(undefined4 *)(DAT_07fcaf54 + 0x4c) = DAT_07fcaf58;
  puVar3[1] = 300;
  quiesce_irq_source_wait_pending_bit_at_c4b0();
  *(undefined1 *)(DAT_07fcaf54 + 2) = 1;
  *DAT_07fcaf3c = 8;
  iVar8 = 0;
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    iVar8 = isIRQinterruptsEnabled();
  }
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    enableIRQinterrupts(1);
  }
  *puVar2 = *puVar2 | 0x800;
  puVar6 = DAT_07fcaf5c;
  if (iVar8 == 0) {
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
  *DAT_07fcaf5c = 8;
  puVar6[4] = puVar6[4] & 0xfffc;
  puVar6[3] = 1;
  *puVar6 = *puVar6 | 1;
  puVar2[7] = puVar2[7] | 0x20;
  return;
}

