// rea decompile_all
// name: FUN_07fc6d80
// address: 0x7fc6d80
// body: available
// range: 0x7fc6d80-0x7fc6de5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


ushort FUN_07fc6d80(ushort param_1)

{
  int iVar1;
  undefined1 auStack_30 [8];
  char local_28 [4];
  ushort local_24 [8];
  
  iVar1 = func_0x07f0ff28();
  while( true ) {
    if ((param_1 < *(ushort *)(iVar1 + 4)) || (*(ushort *)(iVar1 + 6) < param_1)) {
      return 0;
    }
    func_0x07f0ff66(param_1,auStack_30);
    func_0x07f1014c(auStack_30,local_28,local_24,0,0);
    if (((uint)local_24[0] == DAT_07fc6de8 + 0xff) && (local_28[0] == '\x02')) break;
    if ((local_24[0] == DAT_07fc6de8) && (local_28[0] == '\x02')) {
      return 0;
    }
    param_1 = param_1 + 1;
  }
  return param_1;
}

