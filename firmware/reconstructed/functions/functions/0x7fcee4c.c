// rea decompile_all
// name: FUN_07fcee4c
// address: 0x7fcee4c
// body: available
// range: 0x7fcee4c-0x7fcee8f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4
FUN_07fcee4c(int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,int param_6,
            int param_7,int param_8)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar3 = 0;
  uVar2 = 0;
  iVar4 = param_1;
  iVar5 = param_2;
  if (*(int *)(DAT_07fcee90 + 0x1c) != 0) {
    for (; uVar3 < param_5; uVar3 = uVar3 + 1 & 0xff) {
      iVar1 = uVar3 * 2;
      FUN_07fcdd68(*(undefined4 *)(param_1 + uVar3 * 4),*(undefined4 *)(param_2 + uVar3 * 4),param_3
                   ,param_4,(int)*(short *)(param_6 + iVar1),(int)*(short *)(param_7 + iVar1),
                   (int)*(short *)(param_8 + iVar1),iVar4,iVar5);
    }
    uVar2 = 1;
  }
  return uVar2;
}

