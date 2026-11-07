// rea decompile_all
// name: FUN_07fc575c
// address: 0x7fc575c
// body: available
// range: 0x7fc575c-0x7fc57a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc575c(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined1 *puVar2;
  
  iVar1 = DAT_07fc57a8;
  if ((((int)((uint)*DAT_07fc57a4 << 0x18) < 0) && (-1 < *DAT_07fc57ac << 0x10)) &&
     ((*DAT_07fc57b0 & 1) == 0)) {
    func_0x07f1c054(DAT_07fc57a8 + param_1 + 2,4,param_2);
    return;
  }
  FUN_07fc5260();
  puVar2 = (undefined1 *)func_0x07f1bbb0(iVar1,4,4,8);
  *(undefined4 *)(puVar2 + 4) = param_2;
  *puVar2 = (char)param_1;
  func_0x07f1bbe2();
  return;
}

