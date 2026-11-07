// rea decompile_all
// name: FUN_07fc6574
// address: 0x7fc6574
// body: available
// range: 0x7fc6574-0x7fc65c9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc6574(undefined4 param_1,char *param_2,undefined4 param_3,uint param_4)

{
  undefined2 uVar1;
  int iVar2;
  char *pcVar3;
  char cVar4;
  
  iVar2 = DAT_07fc65cc;
  if (*param_2 == '\x01') {
    *(undefined2 *)(DAT_07fc65cc + 0x6a) = *(undefined2 *)(param_2 + 2);
  }
  else {
    if (*param_2 != '\0') {
      cVar4 = 'H';
      goto LAB_07fc65a8;
    }
    uVar1 = *(undefined2 *)(param_2 + 2);
    *(char *)(DAT_07fc65cc + 0x48) = (char)uVar1;
    func_0x07f1e0ac(iVar2 + 0x49,param_2 + 4,(char)uVar1);
  }
  cVar4 = '\0';
LAB_07fc65a8:
  pcVar3 = (char *)func_0x07f1bbb0(DAT_07fc65d0,param_4 & 0xffffff0a | 10,4,2);
  pcVar3[1] = cVar4;
  *pcVar3 = *param_2;
  func_0x07f1bbe2();
  return 0;
}

