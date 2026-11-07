// rea decompile_all
// name: FUN_07fc3148
// address: 0x7fc3148
// body: available
// range: 0x7fc3148-0x7fc31bf inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc3148(uint param_1,undefined1 *param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  byte *pbVar2;
  byte extraout_r1;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  undefined4 local_20;
  byte local_1c [8];
  
  local_20 = -param_3;
  uVar6 = 1;
  uVar5 = 0;
  while (local_20 != uVar5) {
    uVar1 = func_0x07f1dfb8(param_1,uVar6);
    func_0x07f1dfb8(uVar1,10);
    bVar3 = extraout_r1;
    if (param_1 < uVar6) {
      bVar3 = 0x10;
    }
    bVar4 = extraout_r1;
    if (uVar5 - 1 < uVar5) {
      bVar4 = bVar3;
    }
    if (param_4 != 1) {
      bVar4 = extraout_r1;
    }
    local_1c[uVar5 + param_3 + -1] = bVar4;
    uVar6 = uVar6 * 10;
    uVar5 = uVar5 - 1;
  }
  pbVar2 = local_1c;
  for (; param_3 != 0; param_3 = param_3 + -1) {
    *param_2 = (&DAT_07fc31c0)[*pbVar2];
    param_2 = param_2 + 1;
    pbVar2 = pbVar2 + 1;
  }
  return;
}

