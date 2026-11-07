// rea decompile_all
// name: FUN_07fc7380
// address: 0x7fc7380
// body: available
// range: 0x7fc7380-0x7fc749f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc7380(int param_1)

{
  short sVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  
  iVar2 = DAT_07fc7520;
  if ((param_1 != 1) || (*(char *)(DAT_07fc7520 + 0xd) != '\x01')) {
    *(char *)(DAT_07fc7520 + 0xd) = (char)param_1;
    piVar5 = DAT_07fc74a0;
    if (param_1 == 1) {
      *(undefined2 *)(iVar2 + 0x2a) = 0;
      FUN_07fc74a8(*(undefined4 *)(DAT_07fc75c8 + 0x14));
      return;
    }
    iVar3 = *DAT_07fc74a0;
    if (*(int *)(iVar2 + 0x5c) != iVar3) {
      *(int *)(iVar2 + 0x5c) = iVar3;
      if (0xf < (uint)(iVar3 - *(int *)(iVar2 + 0x60))) {
        *(undefined2 *)(iVar2 + 0x2a) = 0;
      }
      iVar3 = DAT_07fc75c8;
      FUN_07fc74a8(*(undefined4 *)(DAT_07fc75c8 + 0x14));
      sVar1 = *(short *)(iVar2 + 0x2a);
      if (sVar1 != 0) {
        uVar4 = piVar5[7];
        iVar3 = func_0x07f1dfe4(DAT_07fc74a0[6],10);
        piVar5 = DAT_07fc74a0;
        *(char *)(DAT_07fc75c8 + ((uVar4 & 1) * 6 + iVar3 & 0xff) + 0xa0) = (char)sVar1;
        *(undefined1 *)(DAT_07fc75c8 + 9) = 1;
        iVar3 = DAT_07fc75c8;
      }
      uVar4 = *(uint *)(iVar3 + 0x14);
      if (((int)(uVar4 << 0x1d) < 0) &&
         (((0x2d < (uint)(*piVar5 - *(int *)(iVar3 + 0x18)) ||
           ((*(byte *)(iVar3 + 10) == 1 && (sVar1 != 0)))) ||
          ((*(byte *)(iVar3 + 10) - 1 < 2 && (*(char *)(iVar3 + 0xf) == '\x01')))))) {
        FUN_07fc3a38(0x40000);
        uVar4 = *(uint *)(iVar3 + 0x14);
      }
      if ((uVar4 & 0x22) != 0) {
        if ((2 < *(byte *)(DAT_07fc74a4 + 0x58)) &&
           (FUN_07fc5038(*(undefined1 *)(iVar3 + 2),*(undefined1 *)(iVar2 + 9),
                         *(undefined1 *)(iVar2 + 10),*(undefined1 *)(iVar2 + 0xb),
                         *(undefined1 *)(iVar2 + 0xc)),
           0x2c < (uint)(*piVar5 - *(int *)(iVar3 + 0x20)))) {
          FUN_07fc3a38(0x20000);
          FUN_07fc3b78(0xd);
        }
        if (0x2c < (uint)(*piVar5 - *(int *)(iVar3 + 0x20))) {
          FUN_07fc3b78(0x16);
        }
      }
      if (((*(byte *)(iVar3 + 0x14) & 0x11) != 0) &&
         (uVar4 = *piVar5 - *(int *)(iVar3 + 0x20), 0x16 < uVar4)) {
        if (*(short *)(iVar2 + 0x2a) != 0) {
          FUN_07fc3b78(10);
          uVar4 = *piVar5 - *(int *)(iVar3 + 0x20);
        }
        if (0x2d < uVar4) {
          FUN_07fc3b78(0x16);
          return;
        }
      }
    }
  }
  return;
}

