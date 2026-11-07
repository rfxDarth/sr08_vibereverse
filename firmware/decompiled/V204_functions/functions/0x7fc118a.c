// rea decompile_all
// name: FUN_07fc118a
// address: 0x7fc118a
// body: available
// range: 0x7fc118a-0x7fc11f7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc118a(int param_1,int param_2)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar3 = DAT_07fc12dc;
  iVar5 = param_1 * 4;
  iVar4 = *(int *)(*(int *)(DAT_07fc12dc + iVar5) + 4);
  sVar1 = *(short *)(param_2 + 6);
  func_0x07f0832c();
  sVar2 = *(short *)(iVar4 + 0x72);
  if (((ushort)(sVar1 - sVar2) < DAT_07fc12e0) && (sVar2 != sVar1)) {
    func_0x07f0749e(*(undefined4 *)(*(int *)(iVar3 + iVar5) + 4),sVar1);
    func_0x07f1e0ac(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
    func_0x07f1beb6(param_1 * 0x100 + 1U & 0xffff,5);
    return;
  }
  func_0x07f1e0ac(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
  func_0x07f03484(*(undefined2 *)(iVar4 + 0x68));
  return;
}

