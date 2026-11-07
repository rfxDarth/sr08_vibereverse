// rea decompile_all
// name: FUN_07fcb79c
// address: 0x7fcb79c
// body: available
// range: 0x7fcb79c-0x7fcb87f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcb79c(void)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  byte bVar4;
  
  iVar1 = DAT_07fcb880;
  if (*(char *)(DAT_07fcb880 + 0x35) == '\x01') {
    bVar4 = *(char *)(DAT_07fcb880 + 0x36) + 1;
    *(byte *)(DAT_07fcb880 + 0x36) = bVar4;
    if (*(byte *)(iVar1 + 0x37) <= bVar4) {
      *(undefined1 *)(iVar1 + 0x35) = 0;
    }
    uVar3 = *DAT_07fcb888;
    *DAT_07fcb888 = uVar3 + 1;
    if ((uVar3 + 1 & 1) == 0) goto LAB_07fcb7e8;
    if (*(char *)(iVar1 + 0xf) != '\0') goto LAB_07fcb7fa;
    *(undefined1 *)(iVar1 + 0xf) = 1;
    uVar2 = 0x800;
  }
  else {
    *DAT_07fcb888 = *DAT_07fcb888 + 1;
LAB_07fcb7e8:
    if (*(char *)(iVar1 + 0xf) != '\x01') goto LAB_07fcb7fa;
    *(undefined1 *)(iVar1 + 0xf) = 0;
    uVar2 = 0x8000000;
  }
  FUN_07fc3a14(uVar2);
LAB_07fcb7fa:
  if (*(char *)(DAT_07fcb88c + 0xc4) == '\x01') {
    FUN_07fc2546();
  }
  return;
}

