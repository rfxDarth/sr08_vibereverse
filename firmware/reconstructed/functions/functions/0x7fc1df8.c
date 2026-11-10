// rea decompile_all
// name: handle_nmi_and_report_context
// address: 0x7fc1df8
// body: available
// range: 0x7fc1df8-0x7fc1e3f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void handle_nmi_and_report_context(undefined4 exception_context)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fc1e40;
  *DAT_07fc1e40 = *DAT_07fc1e40 | 4;
  *puVar1 = *puVar1 | 2;
  puVar1[-4] = puVar1[-4] | 0x40;
  *DAT_07fc1e44 = 1;
  *puVar1 = *puVar1 & 0xfffd;
  do {
  } while (-1 < (int)((uint)puVar1[2] << 0x1c));
  print_exception_context_to_uart(0,exception_context);
  puVar1[1] = (puVar1[1] & (ushort)DAT_07fc1e48) + (ushort)DAT_07fc1e48 + 4;
  return;
}

