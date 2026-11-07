// rea decompile_all
// name: FUN_07fc1144
// address: 0x7fc1144
// body: available
// range: 0x7fc0346-0x7fc0349 inclusive
// range: 0x7fc0adc-0x7fc0add inclusive
// range: 0x7fc1144-0x7fc1189 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc1144(undefined4 param_1,char *param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = func_0x07f1bf1a(param_3);
  uVar2 = 0;
  if ((iVar1 == 0x3f) || (*(short *)(param_2 + 8) != 6)) {
    uVar2 = func_0x07f156aa(param_1,param_2,param_3,param_4);
  }
  else if (iVar1 << 0x1c < 0) {
    uVar2 = 2;
  }
  else if (*param_2 == '\0') {
    func_0x07f026ca(param_3 >> 8,param_2 + 6);
  }
  return uVar2;
}

