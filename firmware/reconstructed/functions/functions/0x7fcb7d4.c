// rea decompile_all
// name: wait_sensor_readiness_combine_counter_words_at_b7d4
// address: 0x7fcb7d4
// body: available
// range: 0x7fcb7d4-0x7fcb819 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void wait_sensor_readiness_combine_counter_words_at_b7d4(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined8 uVar6;
  
  if (*DAT_07fcbbbc == '\x01') {
    do {
    } while ((int)((uint)*DAT_07fcb81c << 0x1d) < 0);
    uVar1 = DAT_07fcb81c[3];
    uVar2 = DAT_07fcb81c[2];
    *DAT_07fcbbbc = '\0';
    iVar5 = (uint)uVar1 * 0x10000 + (uint)uVar2;
    uVar6 = divide_u64_restoring(0xd4000000,0x30,iVar5);
    iVar3 = DAT_07fcb820;
    *(undefined8 *)(DAT_07fcb820 + 0x50) = uVar6;
    uVar4 = __aeabi_uidiv(DAT_07fcb824,iVar5);
    *(undefined4 *)(iVar3 + 8) = uVar4;
    uVar4 = __aeabi_uidiv(iVar5 * 0x40,0x14);
    *(undefined4 *)(iVar3 + 0x10) = uVar4;
  }
  return;
}

