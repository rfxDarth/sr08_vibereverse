// rea decompile_all
// name: FUN_07fc5600
// address: 0x7fc5600
// body: available
// range: 0x7fc5600-0x7fc564b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


int FUN_07fc5600(uint param_1,int param_2,uint *param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int extraout_r1;
  uint uVar3;
  char cVar4;
  
  uVar1 = func_0x07f1dfb8(param_1,DAT_07fc564c);
  func_0x07f1dfb8(uVar1,7);
  cVar4 = '\0';
  FUN_07fc3ea0(param_3,param_2 * 0x24 + extraout_r1 * 0x2000 + 0x2e000,0x24,0);
  uVar3 = *param_3;
  uVar2 = param_1 - uVar3;
  if (param_1 < uVar3) {
    uVar2 = uVar3 - param_1;
  }
  if ((uVar3 == 0xffffffff) || (DAT_07fc5650 <= uVar2)) {
    func_0x07f1e0de(param_3,0x24);
    cVar4 = -1;
  }
  return (int)cVar4;
}

