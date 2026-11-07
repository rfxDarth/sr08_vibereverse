// rea decompile_all
// name: FUN_07fc7fc8
// address: 0x7fc7fc8
// body: available
// range: 0x7fc7fc8-0x7fc8023 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc7fc8(undefined4 param_1,undefined1 param_2)

{
  int iVar1;
  code *pcVar2;
  undefined1 uVar3;
  uint uVar4;
  
  iVar1 = DAT_07fc8024;
  *(undefined1 *)(DAT_07fc8024 + 0x16) = 0;
  *(undefined1 *)(iVar1 + 0x13) = param_2;
  *(undefined2 *)(iVar1 + 0x18) = 0;
  *(undefined1 *)(iVar1 + 0x15) = 0;
  FUN_07fcc798();
  *(undefined1 *)(iVar1 + 0x20) = 0;
  *(undefined1 *)(iVar1 + 0x1f) = 0;
  FUN_07fcdabc();
  FUN_07fc7008();
  uVar4 = FUN_07fc7604(0x47);
  if (uVar4 < 0x40) {
    FUN_07fc7700(DAT_07fc8028);
    pcVar2 = DAT_07fc802c;
    uVar3 = (*DAT_07fc802c)(0x45);
    iVar1 = DAT_07fc8030;
    *(undefined1 *)(DAT_07fc8030 + 3) = uVar3;
    uVar3 = (*pcVar2)(0x46);
    *(undefined1 *)(iVar1 + 5) = uVar3;
    uVar3 = (*pcVar2)(0x47);
    *(undefined1 *)(iVar1 + 7) = uVar3;
    uVar3 = (*pcVar2)(0x48);
    *(undefined1 *)(iVar1 + 9) = uVar3;
    FUN_07fc7700(iVar1);
  }
  FUN_07fc71ac(param_1);
  return;
}

