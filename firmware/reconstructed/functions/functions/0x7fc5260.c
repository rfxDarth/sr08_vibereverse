// rea decompile_all
// name: set_pending_flag_while_preserving_caller_at_5260
// address: 0x7fc5260
// body: available
// range: 0x7fc5260-0x7fc528b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 set_pending_flag_while_preserving_caller_at_5260(void)

{
  bool bVar1;
  int iVar2;
  
  iVar2 = 0;
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    iVar2 = isIRQinterruptsEnabled();
  }
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    enableIRQinterrupts(1);
  }
  if (-1 < (int)((uint)*DAT_07fc528c << 0x18)) {
    *DAT_07fc5290 = *DAT_07fc5290 | 1;
  }
  if (iVar2 != 0) {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(1);
    }
    return 1;
  }
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    enableIRQinterrupts(0);
  }
  return 0;
}

