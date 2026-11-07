// rea decompile_all
// name: FUN_07fc4108
// address: 0x7fc4108
// body: available
// range: 0x7fc4108-0x7fc4241 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc4108(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
  uVar5 = DAT_07fc4248;
  iVar1 = DAT_07fc4244;
  iVar3 = param_1 - *(short *)(DAT_07fc4244 + 0x34);
  uVar4 = iVar3 >> 0x1f;
  uVar4 = iVar3 + uVar4 ^ uVar4;
  if (uVar4 < 0x12d) {
    if (uVar4 < 0xfb) goto LAB_07fc4164;
  }
  else if (DAT_07fc4248 + 0xc9 < (uint)(param_5 - *(int *)(DAT_07fc4244 + 0x78))) {
    *(int *)(DAT_07fc4244 + 0x78) = param_5;
  }
  if ((uVar5 + 1 < (uint)(param_5 - *(int *)(iVar1 + 0x74))) &&
     (*(int *)(iVar1 + 0x74) = param_5, *(char *)(DAT_07fc424c + 0xb) == '\x10')) {
    FUN_07fc25ec(6,2,0,param_2,param_2);
    uVar5 = DAT_07fc4248;
  }
LAB_07fc4164:
  *(short *)(iVar1 + 0x34) = (short)param_1;
  if (uVar5 < (uint)(param_5 - *(int *)(iVar1 + 0x68))) {
    iVar3 = param_2 - *(short *)(iVar1 + 0x2e);
    uVar4 = iVar3 >> 0x1f;
    uVar4 = iVar3 + uVar4 ^ uVar4;
    iVar3 = param_1 - *(short *)(iVar1 + 0x2c);
    uVar6 = iVar3 >> 0x1f;
    uVar6 = iVar3 + uVar6 ^ uVar6;
    if (uVar4 <= uVar6) {
      uVar4 = uVar6;
    }
    iVar3 = param_3 - *(short *)(iVar1 + 0x30);
    uVar6 = iVar3 >> 0x1f;
    uVar6 = iVar3 + uVar6 ^ uVar6;
    if (uVar6 <= uVar4) {
      uVar6 = uVar4;
    }
    iVar3 = param_4 - *(short *)(iVar1 + 0x32);
    uVar4 = iVar3 >> 0x1f;
    uVar4 = iVar3 + uVar4 ^ uVar4;
    if (uVar4 <= uVar6) {
      uVar4 = uVar6;
    }
    if (0x4f < uVar4) {
      *(uint *)(iVar1 + 0x6c) = *(uint *)(iVar1 + 0x6c) | 1;
      if (0x77 < uVar4) {
        *(undefined4 *)(DAT_07fc4250 + 0x18) = 0;
      }
      *(char *)(iVar1 + 0x11) = *(char *)(iVar1 + 0x11) + '\x01';
    }
    bVar2 = false;
    if (((uVar4 & 0xffff) < 0x50) &&
       ((*(char *)(iVar1 + 7) < '\0' ||
        (((param_4 + (param_4 >> 0xf) ^ param_4 >> 0xf) & 0xffffU) < 0xc9)))) {
      uVar4 = (param_2 + (param_2 >> 0xf) ^ param_2 >> 0xf) & 0xffff;
      if (uVar4 >> 3 < 0x7d) {
        iVar3 = (uVar5 - uVar4) + 1;
      }
      else {
        iVar3 = uVar4 + DAT_07fc4254;
      }
      bVar2 = ((param_3 + (param_3 >> 0xf) ^ param_3 >> 0xf) & 0xffffU) < 0xc9 && iVar3 < 0xc9;
    }
    *(int *)(iVar1 + 0x68) = param_5;
    *(short *)(iVar1 + 0x32) = (short)param_4;
    *(short *)(iVar1 + 0x30) = (short)param_3;
    *(short *)(iVar1 + 0x2e) = (short)param_2;
    *(short *)(iVar1 + 0x2c) = (short)param_1;
    *(bool *)(iVar1 + 0x10) = bVar2;
  }
  return;
}

