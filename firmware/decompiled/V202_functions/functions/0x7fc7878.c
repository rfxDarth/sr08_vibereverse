// rea decompile_all
// name: FUN_07fc7878
// address: 0x7fc7878
// body: available
// range: 0x7fc7878-0x7fc78b7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


int FUN_07fc7878(void)

{
  char cVar1;
  uint in_r3;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint local_18;
  
  cVar1 = '\0';
  local_18 = in_r3 & 0xffffff00;
  uVar4 = *(int *)(DAT_07fc78b8 + 0x44) - 1U &
          *(int *)(DAT_07fc78b8 + 0x3c) - *(int *)(DAT_07fc78b8 + 0x40);
  if (6 < uVar4) {
    uVar3 = 0;
    iVar2 = DAT_07fc78b8 + 0x3c;
    do {
      if (uVar4 == uVar3) {
        cVar1 = '\x01';
        goto LAB_07fc78b4;
      }
      FUN_07fc3008(iVar2,uVar3,&local_18);
      uVar3 = uVar3 + 1;
    } while ((char)local_18 == '\x01');
    cVar1 = -1;
  }
LAB_07fc78b4:
  return (int)cVar1;
}

