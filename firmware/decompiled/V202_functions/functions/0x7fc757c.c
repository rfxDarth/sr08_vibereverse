// rea decompile_all
// name: FUN_07fc757c
// address: 0x7fc757c
// body: available
// range: 0x7fc757c-0x7fc75e1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc757c(void)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  short sVar4;
  
  iVar3 = DAT_07fc7950;
  iVar2 = DAT_07fc78b8;
  if (*(int *)(DAT_07fc78b8 + 0x50) == 1) {
    uVar1 = *(ushort *)(DAT_07fc78b8 + 0x54);
    if (uVar1 == 0) {
      sVar4 = *(short *)(DAT_07fc78b8 + 0x58);
      if (sVar4 == 0) goto LAB_07fc75ce;
    }
    else {
      if (uVar1 == DAT_07fc75e4) goto LAB_07fc75ce;
      sVar4 = *(short *)(DAT_07fc78b8 + 0x58);
    }
    *(ushort *)(DAT_07fc7950 + 0x42) = uVar1;
    *(short *)(iVar3 + 0x46) = sVar4;
    *(undefined2 *)(iVar3 + 0x44) = *(undefined2 *)(iVar2 + 0x56);
    *(undefined2 *)(iVar3 + 0x48) = *(undefined2 *)(iVar2 + 0x5a);
    FUN_07fca148(iVar2 + 0x54,8);
    *(undefined1 *)(iVar3 + 0x1b) = 0;
    *(undefined1 *)(iVar3 + 0x1a) = 1;
    return;
  }
LAB_07fc75ce:
  *(undefined2 *)(DAT_07fc7950 + 0x42) = 0;
  *(undefined2 *)(iVar3 + 0x48) = 0;
  *(undefined4 *)(iVar3 + 0x44) = 0;
  *(undefined1 *)(iVar3 + 0x1b) = 1;
  *(undefined1 *)(iVar3 + 0x1a) = 0;
  return;
}

