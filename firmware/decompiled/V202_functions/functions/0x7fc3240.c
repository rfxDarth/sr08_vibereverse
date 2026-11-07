// rea decompile_all
// name: FUN_07fc3240
// address: 0x7fc3240
// body: available
// range: 0x7fc3240-0x7fc3291 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc3240(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = *(int *)(DAT_07fc3294 + param_1 * 4);
  piVar3 = (int *)(DAT_07fc3294 + param_1 * 4);
  if (iVar2 == 0) {
    puVar1 = (undefined1 *)func_0x07f1bbb0(DAT_07fc3298,param_1 * 0x100 + 10,4,0xe,param_4);
    *puVar1 = 9;
    *piVar3 = (int)puVar1;
    FUN_07fc521c(s_rcp__d__d_07fc329c,param_2,param_3);
    *(undefined2 *)(puVar1 + 0xc) = 0;
    *(undefined2 *)(puVar1 + 10) = 0;
    *(undefined2 *)(puVar1 + 8) = 600;
    *(undefined2 *)(puVar1 + 6) = 0;
    *(short *)(puVar1 + 2) = (short)param_2;
    *(short *)(puVar1 + 4) = (short)param_3;
    iVar2 = *piVar3;
  }
  func_0x07f1bbe2(iVar2);
  *piVar3 = 0;
  return;
}

