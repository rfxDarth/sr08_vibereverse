// rea decompile_all
// name: FUN_07fc3a14
// address: 0x7fc3a14
// body: available
// range: 0x7fc3a14-0x7fc3a7d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc3a14(uint param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  iVar1 = DAT_07fc3d58;
  uVar3 = *(uint *)(DAT_07fc3d58 + 0x14);
  if (*(char *)(DAT_07fc3ddc + 0xb) == '\x1e') {
    *(undefined4 *)(DAT_07fc3d58 + 0x14) = 0;
  }
  else {
    uVar2 = uVar3;
    if ((param_1 & 0xffff) != 0) {
      *(undefined4 *)(DAT_07fc3d58 + 0x20) = *(undefined4 *)(DAT_07fc3a84 + 0x28);
      uVar2 = uVar3 | param_1;
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (param_1 >> 0x10 != 0) {
      uVar2 = uVar2 & ~(param_1 >> 0x10);
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (uVar2 != 0) goto LAB_07fc3a6c;
  }
  if ((uVar3 & 1) != 0) {
    FUN_07fc4f60(*(undefined1 *)(DAT_07fc3d2c + 0x2a));
    FUN_07fc25ec(0x27,0,0);
  }
  if ((int)(uVar3 << 0x1e) < 0) {
    FUN_07fc25ec(0x28,0,0);
  }
LAB_07fc3a6c:
  if (uVar3 != *(uint *)(iVar1 + 0x14)) {
    FUN_07fc381c(0);
    FUN_07fc37b4();
  }
  return;
}

