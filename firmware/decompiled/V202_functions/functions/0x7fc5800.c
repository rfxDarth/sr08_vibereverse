// rea decompile_all
// name: FUN_07fc5800
// address: 0x7fc5800
// body: available
// range: 0x7fc5800-0x7fc583b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc5800(undefined4 param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  short *psVar2;
  
  iVar1 = func_0x07f1bf1a(param_3);
  if (iVar1 == 0) {
    iVar1 = FUN_07fca05c(0xfd);
    psVar2 = (short *)func_0x07f1bbb0(DAT_07fc583c,8,param_3,6);
    psVar2[1] = *(short *)(param_2 + 4);
    *(undefined1 *)(psVar2 + 2) = *(undefined1 *)(param_2 + 6);
    *psVar2 = *(short *)(param_2 + 2) + *(short *)(iVar1 + 4);
    func_0x07f1bbe2();
  }
  return 0;
}

