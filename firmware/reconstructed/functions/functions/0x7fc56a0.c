// rea decompile_all
// name: FUN_07fc56a0
// address: 0x7fc56a0
// body: available
// range: 0x7fc56a0-0x7fc5739 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


uint FUN_07fc56a0(uint param_1,byte *param_2,int param_3)

{
  code *pcVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  
  pcVar1 = DAT_07fc573c;
  if (param_2 != (byte *)0x0) {
    param_1 = ~param_1;
    for (; 7 < param_3; param_3 = param_3 + -8) {
      uVar2 = (*pcVar1)(param_1 & 0xff ^ (uint)*param_2);
      uVar2 = param_1 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[1] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[2] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[3] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[4] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[5] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[6] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      param_1 = (*pcVar1)((uint)param_2[7] ^ uVar2 & 0xff);
      param_1 = uVar2 >> 8 ^ param_1;
      param_2 = param_2 + 8;
    }
    if (param_3 != 0) {
      iVar4 = 0;
      do {
        uVar2 = FUN_07fc5740(param_1 & 0xff ^ (uint)param_2[iVar4]);
        param_1 = param_1 >> 8 ^ uVar2;
        iVar4 = iVar4 + 1;
      } while (param_3 != iVar4);
    }
    return ~param_1;
  }
  return 0;
}

