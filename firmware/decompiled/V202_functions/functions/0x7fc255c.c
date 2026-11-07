// rea decompile_all
// name: FUN_07fc255c
// address: 0x7fc255c
// body: available
// range: 0x7fc255c-0x7fc25e7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc255c(undefined4 param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  uVar2 = *(uint *)(DAT_07fc25e8 + 0x34);
  uVar7 = *(uint *)(DAT_07fc25e8 + 0x38);
  iVar5 = *(int *)(DAT_07fc25e8 + 0x40);
  iVar9 = *(int *)(DAT_07fc25e8 + 0x44);
  uVar3 = *(int *)(DAT_07fc25e8 + 0x3c) - 1;
  uVar6 = 0;
  uVar8 = uVar7;
  do {
    if (uVar8 == uVar2) {
LAB_07fc25de:
      FUN_07fc2f4c(param_1);
      return;
    }
    iVar4 = func_0x07f1e0f4(iVar9 + iVar5 * uVar8,param_1,0x14);
    iVar1 = DAT_07fc25e8;
    if (iVar4 == 0) {
      if (uVar8 == uVar7) {
        return;
      }
      if (uVar6 < (uVar2 - uVar7 & uVar3)) {
        uVar8 = uVar7 + uVar6 & uVar3;
        uVar3 = uVar2 - 1 & uVar3;
        while (uVar8 != uVar3) {
          iVar5 = *(int *)(iVar1 + 0x40) * uVar8;
          uVar8 = *(int *)(iVar1 + 0x3c) - 1U & uVar8 + 1;
          func_0x07f1e0ac(*(int *)(iVar1 + 0x44) + iVar5,
                          *(int *)(iVar1 + 0x44) + uVar8 * *(int *)(iVar1 + 0x40));
        }
        *(uint *)(iVar1 + 0x34) = uVar3;
      }
      goto LAB_07fc25de;
    }
    uVar8 = uVar8 + 1 & uVar3;
    uVar6 = uVar6 + 1;
  } while( true );
}

