// rea decompile_all
// name: FUN_07fc5848
// address: 0x7fc5848
// body: available
// range: 0x7fc5848-0x7fc58a9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc5848(uint param_1,uint param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  iVar1 = FUN_07fcb080(0xfd);
  piVar3 = (int *)(iVar1 + 0x10);
  piVar2 = piVar3;
  do {
    piVar2 = (int *)*piVar2;
    if (piVar2 == (int *)0x0) goto LAB_07fc5880;
  } while (*(byte *)(piVar2 + 1) != param_1);
  if (*(byte *)((int)piVar2 + 5) != param_2) {
    func_0x07f02c04(piVar3,piVar2,0);
    func_0x07f1ba8a(piVar2);
LAB_07fc5880:
    piVar2 = (int *)func_0x07f1b994(param_2 + 8,1);
    func_0x07f1e0de(piVar2,param_2 + 8);
    func_0x07f02b5c(piVar3,piVar2);
  }
  *(char *)((int)piVar2 + 5) = (char)param_2;
  *(char *)((int)piVar2 + 4) = (char)param_1;
  func_0x07f1e0ac((int)piVar2 + 6,param_3);
  return;
}

