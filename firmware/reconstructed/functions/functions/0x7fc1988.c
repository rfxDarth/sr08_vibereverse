// rea decompile_all
// name: FUN_07fc1988
// address: 0x7fc1988
// body: available
// range: 0x7fc1988-0x7fc1a29 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc1988(uint param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  uVar4 = param_1 ^ param_2;
  uVar1 = param_1;
  if ((param_1 & 0x7fffffff) < (param_2 & 0x7fffffff)) {
    uVar1 = param_2;
    param_2 = param_1;
  }
  if ((param_2 & 0x7fffffff) == 0) {
    return;
  }
  uVar7 = uVar1 >> 0x17;
  uVar8 = (uVar7 & 0xff) - ((param_2 & 0x7fffffff) >> 0x17);
  if ((int)uVar8 < 0x20) {
    iVar5 = (param_2 & 0x7fffff) + 0x800000;
    if ((int)uVar4 < 0) {
      iVar5 = -iVar5;
    }
    uVar3 = iVar5 << (0x20 - uVar8 & 0xff);
    uVar2 = (iVar5 >> (uVar8 & 0xff)) + uVar1;
    uVar6 = uVar2 >> 0x17;
    if (uVar6 != uVar7) {
      if ((int)uVar4 < 0) {
        if ((int)uVar8 < 2) {
          FUN_07fc1b98(uVar2 + uVar7 * -0x800000 + 0x800000,uVar3,uVar1 & 0x80000000,uVar7 & 0xff);
          return;
        }
        iVar5 = uVar7 * -0x800000;
        uVar7 = 0x1000000;
        uVar6 = uVar3 >> 0x1f;
        uVar2 = uVar2 * 2 + iVar5 | uVar6;
        uVar3 = uVar3 << 1;
      }
      else {
        uVar3 = uVar3 >> 1 | uVar2 * -0x80000000;
        uVar6 = uVar7 * 0x800000;
        uVar2 = (uVar2 + uVar7 * -0x800000 + 0x800000 >> 1) + uVar6;
      }
    }
  }
  else {
    uVar6 = 1;
    uVar3 = ((int)uVar4 >> 0x1f) * 2 + 1;
    uVar2 = uVar1 + ((int)uVar4 >> 0x1f);
  }
  FUN_07fc1b88(uVar2,uVar3,uVar6,uVar7,param_4);
  return;
}

