// rea decompile_all
// name: FUN_07fc40a0
// address: 0x7fc40a0
// body: available
// range: 0x7fc40a0-0x7fc4101 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4
FUN_07fc40a0(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined1 *param_5,int param_6,int param_7)

{
  undefined1 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  ushort *puVar4;
  ushort *puVar5;
  int iVar6;
  uint uVar7;
  
  uVar3 = 1;
  if (param_7 != 0) {
    iVar6 = param_7 + 1;
    puVar4 = (ushort *)(param_7 * 8 + param_6);
    do {
      puVar5 = puVar4;
      puVar4 = puVar5 + -4;
      iVar6 = iVar6 + -1;
      if (iVar6 < 1) {
        return 1;
      }
      uVar7 = (uint)*puVar4;
    } while ((uVar7 != param_1) && (uVar7 != DAT_07fc4104));
    pcVar2 = *(code **)(puVar5 + -2);
    if (pcVar2 == (code *)0x0) {
      *DAT_07fc4108 = 200;
      *DAT_07fc410c = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar1 = (*pcVar2)(param_1,param_2,param_4,param_3);
    *param_5 = uVar1;
    uVar3 = 0;
  }
  return uVar3;
}

