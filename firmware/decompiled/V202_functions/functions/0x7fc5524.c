// rea decompile_all
// name: FUN_07fc5524
// address: 0x7fc5524
// body: available
// range: 0x7fc5524-0x7fc55f3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


int FUN_07fc5524(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int extraout_r1;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint local_48;
  char local_44;
  uint local_24 [4];
  
  uVar4 = DAT_07fc5644;
  local_24[3] = 0;
  local_24[2] = 0;
  local_24[1] = 0;
  local_24[0] = 0;
  iVar6 = func_0x07f1dfb8(param_1,DAT_07fc5644);
  uVar4 = iVar6 * uVar4;
  FUN_07fc8088(uVar4,&local_48);
  func_0x07f1dfb8(iVar6,7);
  FUN_07fc3df8(local_24,extraout_r1 * 0x2000 + DAT_07fc55f4,0x10,0);
  for (iVar6 = 0; iVar6 != 0x10; iVar6 = iVar6 + 4) {
    *(uint *)((int)local_24 + iVar6) = ~*(uint *)((int)local_24 + iVar6);
  }
  uVar1 = func_0x07f1dfb8(param_2,0xf);
  uVar2 = func_0x07f1dfb8(param_3,0xf);
  iVar5 = uVar1 * 0x24 + extraout_r1 * 0x2000 + 0x2e000;
  iVar6 = 0;
  for (; uVar1 < uVar2; uVar1 = uVar1 + 1) {
    iVar3 = iVar6;
    if ((*(uint *)((int)local_24 + (uVar1 >> 3 & 0x3fc)) >> (uVar1 & 0x1f) & 1) != 0) {
      FUN_07fc3df8(&local_48,iVar5,8,0);
      if (local_44 == '\x01') {
        iVar3 = iVar6 + 900;
      }
      if (DAT_07fc5644 <= local_48 - uVar4) {
        iVar3 = iVar6;
      }
      if (local_48 < uVar4) {
        iVar3 = iVar6;
      }
    }
    iVar5 = iVar5 + 0x24;
    iVar6 = iVar3;
  }
  return iVar6;
}

