// rea decompile_all
// name: FUN_07fc7660
// address: 0x7fc7660
// body: available
// range: 0x7fc7660-0x7fc76fb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc7660(void)

{
  short sVar1;
  short sVar2;
  short sVar3;
  int iVar4;
  undefined2 uVar5;
  short sVar6;
  char cVar7;
  
  uVar5 = FUN_07fc73b8(1);
  iVar4 = DAT_07fc7950;
  *(undefined2 *)(DAT_07fc7950 + 0x3e) = uVar5;
  uVar5 = FUN_07fc75ec(1);
  *(undefined2 *)(iVar4 + 0x40) = uVar5;
  cVar7 = '\0';
  FUN_07fc73b8(0);
  FUN_07fc75ec(0);
  sVar2 = *(short *)(iVar4 + 0x40);
  sVar1 = *(short *)(iVar4 + 0x3e);
  if (sVar2 == 0 && sVar1 == 0) {
    *(undefined1 *)(iVar4 + 0x1c) = 0;
    cVar7 = *(char *)(iVar4 + 0x1e);
  }
  else if (*(char *)(iVar4 + 0x1e) != '\0') {
    if (sVar1 == sVar2) {
      cVar7 = '\x01';
      goto LAB_07fc76d8;
    }
    *(undefined1 *)(iVar4 + 0x1c) = 1;
    sVar3 = *(short *)(iVar4 + 0x46);
    cVar7 = *(char *)(iVar4 + 0x1a);
    sVar6 = sVar3;
    if (cVar7 == '\0') {
      sVar6 = sVar2;
    }
    *(int *)(DAT_07fc7960 + 0x30) = (int)sVar1 - (int)sVar6;
    if ((cVar7 == '\x01') && ((int)sVar2 < sVar3 + -0x32)) {
      *(short *)(iVar4 + 0x46) = sVar2;
    }
    cVar7 = '\x01';
  }
  if (sVar1 != sVar2) {
    return;
  }
LAB_07fc76d8:
  if (((cVar7 == '\0') && (sVar1 != 0)) && (*(char *)(iVar4 + 0x1a) != '\0')) {
    FUN_07fc78d4(0x9c,7);
    FUN_07fc78d4(0x70,0);
    *(undefined1 *)(iVar4 + 0x1e) = 1;
  }
  return;
}

