// rea decompile_all
// name: FUN_07fc1ab4
// address: 0x7fc1ab4
// body: available
// range: 0x7fc1ab4-0x7fc1b2f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc1ab4(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  if (((param_1 & 0x7fffffff) != 0) && ((param_2 & 0x7fffffff) != 0)) {
    uVar1 = 0x800000;
    iVar6 = ((param_1 & 0x7fffffff) >> 0x17) - ((param_2 & 0x7fffffff) >> 0x17);
    uVar2 = (param_1 & 0x7fffff) + 0x800000;
    uVar4 = (param_2 & 0x7fffff) + 0x800000;
    iVar7 = iVar6 + 0x7d;
    if (uVar2 < uVar4) {
      uVar2 = uVar2 * 2;
    }
    else {
      iVar7 = iVar6 + 0x7e;
    }
    if (-1 < iVar7) {
      uVar5 = 0;
      do {
        if (uVar4 <= uVar2) {
          uVar2 = uVar2 - uVar4;
          uVar5 = uVar5 | uVar1;
        }
        uVar1 = uVar1 >> 1;
        uVar2 = uVar2 * 2;
      } while (uVar1 != 0);
      uVar3 = 0;
      if (uVar2 != 0) {
        if (uVar2 - uVar4 == 0) {
          uVar3 = 0x80000000;
        }
        else if (uVar2 < uVar4) {
          uVar3 = 1;
        }
        else {
          uVar3 = 0xfffffffe;
        }
      }
      uVar3 = FUN_07fc1b88(iVar7 * 0x800000 + uVar5 + ((param_1 ^ param_2) & 0x80000000),uVar3);
      return uVar3;
    }
  }
  return 0;
}

