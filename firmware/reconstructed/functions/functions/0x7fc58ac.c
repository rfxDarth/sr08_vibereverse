// rea decompile_all
// name: FUN_07fc58ac
// address: 0x7fc58ac
// body: available
// range: 0x7fc58ac-0x7fc58f9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc58ac(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  uint uVar4;
  
  uVar2 = DAT_07fc5c40;
  iVar1 = *(int *)(param_1 + 0x10);
  puVar3 = DAT_07fc5c38;
  for (uVar4 = 1; puVar3 = puVar3 + 5, uVar4 != 6; uVar4 = uVar4 + 1) {
    if (((0x2aU >> (uVar4 & 0xff) & 1) != 0) && (*(ushort *)*puVar3 == uVar2)) {
      FUN_07fc5c44(param_2,uVar4 & 0xff,0);
    }
  }
  uVar2 = (uint)*(short *)(iVar1 + 2);
  func_0x07f1beb6(param_2 << 8 & uVar2 >> 0xf | DAT_07fc5a68 & uVar2,0);
  return;
}

