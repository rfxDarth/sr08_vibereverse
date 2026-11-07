// rea decompile_all
// name: FUN_07fc4eb8
// address: 0x7fc4eb8
// body: available
// range: 0x7fc4eb8-0x7fc4f0d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc4eb8(int param_1)

{
  char *pcVar1;
  int iVar2;
  
  pcVar1 = DAT_07fc4f10;
  if ((((param_1 != 1) || (*DAT_07fc4f10 != '\0')) && (param_1 == 0)) && (*DAT_07fc4f10 == '\x01'))
  {
    FUN_07fc3a14(DAT_07fc4f14);
    iVar2 = DAT_07fc4f18;
    if (*(char *)(DAT_07fc4f18 + 0xb) != '\x16') {
      FUN_07fc3ac4(0);
    }
    *(undefined2 *)(iVar2 + 0x42) = 0;
    pcVar1[0xc4] = '\0';
    pcVar1[1] = '\0';
    pcVar1[0x12] = '\0';
    pcVar1[0x11] = '\0';
    iVar2 = DAT_07fc4f1c;
    *(undefined2 *)(DAT_07fc4f1c + 0xe) = 0xffff;
    *(undefined2 *)(iVar2 + 0xc) = 0xffff;
    *(undefined2 *)(iVar2 + 10) = 500;
  }
  *pcVar1 = (char)param_1;
  FUN_07fc521c(s_c__d_07fc4f20,param_1);
  return;
}

