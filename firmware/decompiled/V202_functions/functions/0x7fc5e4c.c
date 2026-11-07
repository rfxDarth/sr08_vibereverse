// rea decompile_all
// name: FUN_07fc5e4c
// address: 0x7fc5e4c
// body: available
// range: 0x7fc5e4c-0x7fc5ee5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc5e4c(int param_1,int param_2)

{
  int iVar1;
  char *pcVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  char cVar7;
  int iVar8;
  int iVar9;
  char local_24 [14];
  undefined2 local_16;
  
  if (-1 < (int)((uint)*_DAT_07fc5ee8 << 0x18)) {
    do {
    } while (-1 < (int)((uint)_DAT_07fc5ee8[5] << 0x18));
    *_DAT_07fc5ee8 = *_DAT_07fc5ee8 & 0xfffc;
  }
  FUN_07fcb47c();
  if (param_1 == 0) {
    pcVar2 = s_____NMI_STATUS_07fc5f00;
    uVar4 = 0x11;
  }
  else {
    pcVar2 = s_P_____HF_STATUS_07fc5eeb + 1;
    uVar4 = 0x10;
  }
  FUN_07fcbe54(pcVar2,uVar4);
  FUN_07fc0194(DAT_07fc5f14);
  uVar4 = DAT_07fc5f1c;
  iVar1 = DAT_07fc5f18;
  for (iVar9 = 0; iVar9 != 8; iVar9 = iVar9 + 1) {
    local_24[5] = 0x78;
    local_24[4] = 0x30;
    local_24[3] = 0x3d;
    iVar5 = iVar9 * 4;
    local_24[0] = *(char *)(iVar1 + iVar5);
    iVar8 = iVar1 + iVar5;
    local_24[2] = *(undefined1 *)(iVar8 + 2);
    local_24[1] = *(undefined1 *)(iVar8 + 1);
    uVar3 = *(uint *)(param_2 + iVar5);
    for (uVar6 = 0xd; 5 < uVar6; uVar6 = uVar6 - 1) {
      cVar7 = (char)(uVar3 & 0xf);
      if ((uVar3 & 0xf) < 10) {
        cVar7 = cVar7 + '0';
      }
      else {
        cVar7 = cVar7 + 'W';
      }
      local_24[uVar6] = cVar7;
      uVar3 = (int)uVar3 >> 4;
    }
    local_16 = (undefined2)uVar4;
    FUN_07fcbe54(local_24,0x10);
    FUN_07fc0194(DAT_07fc5f14);
  }
  return;
}

