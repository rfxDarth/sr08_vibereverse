// rea decompile_all
// name: FUN_07fc37d0
// address: 0x7fc37d0
// body: available
// range: 0x7fc37d0-0x7fc3831 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


uint FUN_07fc37d0(void)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  iVar2 = DAT_07fc3b54;
  iVar1 = DAT_07fc3aa4;
  uVar6 = *(uint *)(DAT_07fc3aa4 + 0x14);
  uVar5 = 0;
  if (((uVar6 != 0) && (*(char *)(DAT_07fc3b54 + 0xc) != '\x1e')) &&
     (iVar4 = FUN_07fcc494(), iVar4 == 0)) {
    if ((uVar6 & 0x7fff) >> 6 == 0) {
      if (*(char *)(iVar2 + 0x26) == '\0') {
        uVar5 = (uint)((uVar6 & 0x1d) != 0);
        if ((uVar6 & 0x22) != 0) {
          uVar5 = 2;
        }
      }
      else {
        uVar5 = 0;
        *(undefined4 *)(iVar1 + 0x14) = 0;
      }
    }
    else {
      uVar3 = 0x4000;
      do {
        uVar5 = uVar3;
        if (uVar5 < 0x40) break;
        uVar3 = uVar5 >> 1;
      } while ((uVar5 & uVar6) == 0);
    }
  }
  FUN_07fc3838(uVar5);
  return uVar5;
}

