// rea decompile_all
// name: FUN_07fc2f7c
// address: 0x7fc2f7c
// body: available
// range: 0x7fc2f7c-0x7fc2fd7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc2f7c(undefined4 param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  uVar1 = *(uint *)(DAT_07fc3004 + 0x34);
  uVar5 = *(uint *)(DAT_07fc3004 + 0x38);
  iVar2 = *(int *)(DAT_07fc3004 + 0x3c);
  iVar4 = *(int *)(DAT_07fc3004 + 0x40);
  iVar7 = *(int *)(DAT_07fc3004 + 0x44);
  do {
    if (uVar5 == uVar1) {
LAB_07fc2fca:
      FUN_07fc2ef8(DAT_07fc3004 + 0x34,param_1);
      return;
    }
    iVar6 = iVar7 + iVar4 * uVar5;
    iVar3 = func_0x07f1e0f4(iVar6,param_1,param_2);
    if (iVar3 == 0) {
      func_0x07f1e0ac(iVar6,param_1,iVar4);
      if (uVar5 != *(uint *)(DAT_07fc3004 + 0x34)) {
        return;
      }
      goto LAB_07fc2fca;
    }
    uVar5 = uVar5 + 1 & iVar2 - 1U;
  } while( true );
}

