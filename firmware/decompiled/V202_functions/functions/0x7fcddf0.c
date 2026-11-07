// rea decompile_all
// name: FUN_07fcddf0
// address: 0x7fcddf0
// body: available
// range: 0x7fcddf0-0x7fcdf07 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fcddf0(void)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = DAT_07fcdf08;
  uVar1 = 0;
  iVar4 = *(int *)(DAT_07fcdf08 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xca4) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xcba) = 0;
  } while (uVar1 < 0xb);
  uVar1 = 0;
  iVar4 = *(int *)(iVar3 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xd48) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xd58) = 0;
  } while (uVar1 < 8);
  uVar1 = 0;
  iVar4 = *(int *)(iVar3 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xcd0) = 0;
    *(undefined2 *)(iVar2 + 0xcda) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xce4) = 0;
  } while (uVar1 < 5);
  uVar1 = 0;
  iVar4 = *(int *)(iVar3 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xd04) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xd14) = 0;
  } while (uVar1 < 4);
  iVar4 = *(int *)(iVar3 + 0x1c);
  uVar1 = 0;
  do {
    iVar2 = uVar1 * 2;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + iVar4 + 0xd1c) = 0;
  } while (uVar1 < 6);
  iVar4 = *(int *)(iVar3 + 0x1c);
  uVar1 = 0;
  do {
    iVar2 = uVar1 * 2;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + iVar4 + 0xd28) = 0;
  } while (uVar1 < 4);
  iVar3 = *(int *)(iVar3 + 0x1c);
  *(undefined2 *)(iVar3 + 0xcf8) = 0;
  *(undefined2 *)(iVar3 + 0xcfa) = 0;
  *(undefined2 *)(iVar3 + 0xcfc) = 0;
  *(undefined4 *)(iVar3 + 0xd34) = 0;
  *(undefined2 *)(iVar3 + 0xd38) = 0;
  *(undefined2 *)(iVar3 + 0xd3a) = 0;
  *(undefined2 *)(iVar3 + 0xd3c) = 0;
  *(undefined2 *)(iVar3 + 0xd3e) = 0;
  *(undefined2 *)(iVar3 + 0xd40) = 0x1e;
  *(undefined4 *)(iVar3 + 0xd44) = 0;
  *(undefined4 *)(iVar3 + 0xd68) = 0;
  *(undefined1 *)(iVar3 + 0xd6c) = 0;
  *(undefined1 *)(iVar3 + 0xd6d) = 0;
  *(undefined1 *)(iVar3 + 0xd6e) = 0;
  *(undefined1 *)(iVar3 + 0xd6f) = 0;
  *(undefined1 *)(iVar3 + 0xd75) = 0;
  *(undefined1 *)(iVar3 + 0xd72) = 0;
  *(undefined1 *)(iVar3 + 0xd73) = 0;
  *(undefined1 *)(iVar3 + 0xd74) = 0;
  *(undefined1 *)(iVar3 + 0xd71) = 0;
  *(undefined1 *)(iVar3 + 0xd76) = 0;
  *(undefined4 *)(iVar3 + 0xd80) = 0;
  *(undefined4 *)(iVar3 + 0xd84) = 0;
  *(undefined4 *)(iVar3 + 0xd88) = 0;
  *(undefined4 *)(iVar3 + 0xd8c) = 0;
  *(undefined4 *)(iVar3 + 0xd90) = 0;
  *(undefined4 *)(iVar3 + 0xd94) = 0;
  *(undefined4 *)(iVar3 + 0xd98) = 0;
  *(undefined4 *)(iVar3 + 0xd9c) = 0;
  *(undefined4 *)(iVar3 + 0xda0) = 0;
  *(undefined4 *)(iVar3 + 0xda4) = 0;
  *(undefined4 *)(iVar3 + 0xda8) = 0;
  *(undefined4 *)(iVar3 + 0xdac) = 0;
  *(undefined4 *)(iVar3 + 0xdb0) = 0;
  *(undefined4 *)(iVar3 + 0xdb4) = 0;
  *(undefined4 *)(iVar3 + 0xdb8) = 0;
  *(undefined4 *)(iVar3 + 0xdbc) = 0;
  *(undefined4 *)(iVar3 + 0xdc0) = 0;
  *(undefined4 *)(iVar3 + 0xdc4) = 0;
  *(undefined4 *)(iVar3 + 0xdc8) = 0;
  *(undefined4 *)(iVar3 + 0xdcc) = 0;
  *(undefined4 *)(iVar3 + 0xdd0) = 0;
  *(undefined4 *)(iVar3 + 0xdd4) = 0;
  *(undefined4 *)(iVar3 + 0xdd8) = 0;
  *(undefined4 *)(iVar3 + 0xddc) = 0;
  *(undefined4 *)(iVar3 + 0xde0) = 0;
  *(undefined4 *)(iVar3 + 0xde4) = 0;
  *(undefined4 *)(iVar3 + 0xde8) = 0;
  *(undefined4 *)(iVar3 + 0xdec) = 0;
  *(undefined4 *)(iVar3 + 0xdf0) = 0;
  *(undefined4 *)(iVar3 + 0xdf4) = 0;
  return 1;
}

