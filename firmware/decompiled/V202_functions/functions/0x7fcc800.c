// rea decompile_all
// name: FUN_07fcc800
// address: 0x7fcc800
// body: available
// range: 0x7fcc800-0x7fcc87d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fcc800(void)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  
  puVar1 = DAT_07fcc880;
  *DAT_07fcc880 = 1;
  puVar2 = DAT_07fcc884;
  *(undefined1 **)(puVar1 + 4) = DAT_07fcc884;
  *puVar2 = 0;
  puVar2[1] = 0x48;
  puVar2[2] = 0x48;
  *(undefined2 *)(puVar2 + 4) = 0;
  *(undefined4 *)(puVar2 + 8) = 0;
  *(undefined4 *)(puVar2 + 0x20) = 0;
  *(undefined4 *)(puVar2 + 0x24) = 0;
  *(undefined4 *)(puVar2 + 0x14) = 0;
  *(undefined4 *)(puVar2 + 0x18) = 0;
  *(undefined4 *)(puVar2 + 0x1c) = 0;
  *(undefined4 *)(puVar2 + 0x28) = 0;
  *(undefined4 *)(puVar2 + 0x2c) = 0;
  *(undefined4 *)(puVar2 + 0x30) = 0;
  *(undefined4 *)(puVar2 + 0x40) = 0;
  *(undefined4 *)(puVar2 + 0x3c) = 0;
  *(undefined4 *)(puVar2 + 0x38) = 0;
  *(undefined4 *)(puVar2 + 0x34) = 0;
  *(undefined4 *)(puVar2 + 0x44) = 0;
  *(undefined4 *)(puVar2 + 0x4c) = 0;
  *(undefined4 *)(puVar2 + 0x48) = 0;
  puVar2[0x50] = 0;
  uVar4 = 0;
  do {
    *(undefined2 *)(puVar2 + uVar4 * 2 + 0x52) = 0;
    *(undefined2 *)(puVar2 + uVar4 * 2 + 0xa2) = 0;
    *(undefined4 *)(puVar2 + uVar4 * 8 + 0xf4) = 0;
    uVar3 = uVar4 + 1 & 0xffff;
    *(undefined4 *)(puVar2 + uVar4 * 8 + 0xf8) = 0;
    uVar4 = uVar3;
  } while (uVar3 < 0x28);
  uVar4 = 0;
  do {
    iVar5 = uVar4 * 4;
    uVar4 = uVar4 + 1 & 0xffff;
    *(undefined4 *)(puVar2 + iVar5 + 0x234) = 0;
  } while (uVar4 < 0x78);
  puVar2[0x414] = 1;
  return 1;
}

