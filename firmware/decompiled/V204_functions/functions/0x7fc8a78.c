// rea decompile_all
// name: FUN_07fc8a78
// address: 0x7fc8a78
// body: available
// range: 0x7fc8a78-0x7fc8acd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined8 FUN_07fc8a78(ushort *param_1,uint param_2,int param_3,uint param_4)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_20;
  
  piVar1 = DAT_07fc8ad0;
  *DAT_07fc8ad0 = 1;
  do {
  } while (*piVar1 != 0);
  uVar2 = *DAT_07fc8ad4;
  local_20 = param_2;
  do {
    uVar3 = *param_1 & param_2;
    if (param_3 != 0) {
      uVar3 = (uint)((*param_1 & param_2) == 0);
    }
    if (uVar3 != 0) break;
    *piVar1 = 1;
    do {
    } while (*piVar1 != 0);
    local_20 = *DAT_07fc8ad4;
    uVar3 = local_20;
    if (local_20 < uVar2) {
      uVar3 = local_20 + 0x5000000;
    }
  } while (uVar3 - uVar2 < param_4);
  return CONCAT44(local_20,param_4);
}

