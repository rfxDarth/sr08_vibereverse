// rea decompile_all
// name: FUN_07fc6e7c
// address: 0x7fc6e7c
// body: available
// range: 0x7fc6e7c-0x7fc6f97 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc6e7c(int param_1)

{
  short sVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  iVar2 = DAT_07fc714c;
  if ((param_1 != 1) || (*(char *)(DAT_07fc714c + 0xe) != '\x01')) {
    *(char *)(DAT_07fc714c + 0xe) = (char)param_1;
    iVar5 = DAT_07fc6f98;
    if (param_1 == 1) {
      *(undefined2 *)(iVar2 + 0x2a) = 0;
      FUN_07fc6fa0(*(undefined4 *)(DAT_07fc6f9c + 0x14));
      return;
    }
    iVar3 = *(int *)(DAT_07fc6f98 + 0x28);
    if (*(int *)(iVar2 + 0x5c) != iVar3) {
      *(int *)(iVar2 + 0x5c) = iVar3;
      if (0xf < (uint)(iVar3 - *(int *)(iVar2 + 0x60))) {
        *(undefined2 *)(iVar2 + 0x2a) = 0;
      }
      iVar3 = DAT_07fc6f9c;
      FUN_07fc6fa0(*(undefined4 *)(DAT_07fc6f9c + 0x14));
      sVar1 = *(short *)(iVar2 + 0x2a);
      if (sVar1 != 0) {
        uVar4 = *(uint *)(iVar5 + 0x44);
        iVar3 = func_0x07f1dfe4(*(undefined4 *)(DAT_07fc6f98 + 0x40),10);
        iVar5 = DAT_07fc6f98;
        *(char *)(DAT_07fc6f9c + ((uVar4 & 1) * 6 + iVar3 & 0xff) + 0xa0) = (char)sVar1;
        *(undefined1 *)(DAT_07fc6f9c + 9) = 1;
        iVar3 = DAT_07fc6f9c;
      }
      uVar4 = *(uint *)(iVar3 + 0x14);
      if (((int)(uVar4 << 0x1d) < 0) &&
         (((0x2d < (uint)(*(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x18)) ||
           ((*(byte *)(iVar3 + 10) == 1 && (sVar1 != 0)))) ||
          ((*(byte *)(iVar3 + 10) - 1 < 2 && (*(char *)(iVar3 + 0xf) == '\x01')))))) {
        FUN_07fc3a14(0x40000);
        uVar4 = *(uint *)(iVar3 + 0x14);
      }
      if ((uVar4 & 0x22) != 0) {
        if ((2 < *(byte *)(iVar5 + 0x18)) &&
           (FUN_07fc4f28(*(undefined1 *)(iVar3 + 2),*(undefined1 *)(iVar2 + 10),
                         *(undefined1 *)(iVar2 + 0xb),*(undefined1 *)(iVar2 + 0xc),
                         *(undefined1 *)(iVar2 + 0xd)),
           0x2c < (uint)(*(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20)))) {
          FUN_07fc3a14(0x20000);
          FUN_07fc3ac4(0xd);
        }
        if (0x2c < (uint)(*(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20))) {
          FUN_07fc3ac4(0x16);
        }
      }
      if (((*(byte *)(iVar3 + 0x14) & 0x11) != 0) &&
         (uVar4 = *(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20), 0x16 < uVar4)) {
        if (*(short *)(iVar2 + 0x2a) != 0) {
          FUN_07fc3ac4(10);
          uVar4 = *(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20);
        }
        if (0x2d < uVar4) {
          FUN_07fc3ac4(0x16);
          return;
        }
      }
    }
  }
  return;
}

