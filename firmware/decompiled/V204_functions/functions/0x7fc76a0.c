// rea decompile_all
// name: FUN_07fc76a0
// address: 0x7fc76a0
// body: available
// range: 0x7fc76a0-0x7fc77f3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc76a0(byte *param_1,uint param_2,byte *param_3,char *param_4,undefined1 *param_5)

{
  ushort uVar1;
  byte bVar2;
  char cVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  byte *pbVar8;
  uint uVar9;
  
  uVar1 = *(ushort *)(param_1 + 0x1a);
  *param_4 = '\x17';
  uVar9 = 0;
  uVar7 = (uint)uVar1;
  pbVar8 = param_1;
  do {
    uVar6 = uVar7;
    pbVar8 = pbVar8 + 0x16;
    *param_3 = (byte)uVar9;
    uVar5 = uVar6 & 0xffff;
    if (param_2 < uVar5) {
      return 0x80;
    }
    if (param_1[0x21] <= uVar9) {
      return 0x80;
    }
    uVar9 = uVar9 + 1;
    uVar7 = *pbVar8 + uVar5;
  } while (*pbVar8 + uVar5 <= param_2);
  uVar7 = 0;
  *param_5 = 0;
  uVar9 = param_1[(uint)*param_3 * 0x16 + 0x18] + uVar5;
  bVar2 = (byte)param_2;
  if (uVar9 <= param_2) {
    do {
      *param_5 = (char)uVar7;
      if (param_1[(uint)*param_3 * 0x16 + 0x17] <= uVar7) {
        cVar3 = *param_4;
LAB_07fc778a:
        if (cVar3 != '\x17') {
          return 0;
        }
        *DAT_07fc77f4 = 200;
        *DAT_07fc77f8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      uVar9 = (uVar9 & 0xffff) + 3;
      if (param_2 <= (uVar9 & 0xffff)) {
        cVar3 = '\x15' - ((char)uVar9 + ~bVar2);
        *param_4 = cVar3;
        goto LAB_07fc778a;
      }
      if (((int)((uint)(*(ushort *)(param_1 + (uint)*param_3 * 0x16 + 4) >> (uVar7 & 0xff)) << 0x19)
           < 0) && (uVar9 = (uVar9 & 0xffff) + 1, (uVar9 & 0xffff) == param_2)) {
        *param_4 = '\x16';
        return 0;
      }
      uVar7 = uVar7 + 1;
    } while( true );
  }
  if (uVar5 == param_2) {
    *param_4 = '\0';
    return 0;
  }
  uVar7 = (uint)*(ushort *)(param_1 + (uint)*param_3 * 0x16 + 4);
  if ((int)(uVar7 << 0x1c) < 0) {
    if ((uVar6 + 1 & 0xffff) == param_2) {
      cVar3 = '\x01';
      goto LAB_07fc77d0;
    }
    uVar9 = uVar6 + 8;
    if (param_2 <= (uVar9 & 0xffff)) goto LAB_07fc77c8;
    uVar9 = uVar6 + 9;
    if ((uVar9 & 0xffff) == param_2) {
      cVar3 = '\b';
      goto LAB_07fc77d0;
    }
LAB_07fc7746:
    if (((int)(uVar7 << 0x1d) < 0) && (uVar9 = uVar9 + 2, param_2 <= (uVar9 & 0xffff))) {
      cVar4 = (char)uVar9 + ~bVar2;
      cVar3 = '\n';
    }
    else if (((*(ushort *)(param_1 + (uint)*param_3 * 0x16 + 4) & 1) == 0) ||
            (uVar9 = uVar9 + 5, (uVar9 & 0xffff) < param_2)) {
      if ((-1 < (int)(uVar7 << 0x1e)) || ((uVar9 + 3 & 0xffff) < param_2)) {
        *DAT_07fc77f4 = 200;
        *DAT_07fc77f8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      cVar4 = (char)(uVar9 + 3) + ~bVar2;
      cVar3 = '\x12';
    }
    else {
      cVar4 = (char)uVar9 + ~bVar2;
      cVar3 = '\x0f';
    }
  }
  else {
    uVar9 = uVar6 + 7;
    if ((uVar9 & 0xffff) < param_2) goto LAB_07fc7746;
LAB_07fc77c8:
    cVar4 = (char)uVar9 + ~bVar2;
    cVar3 = '\a';
  }
  cVar3 = cVar3 - cVar4;
LAB_07fc77d0:
  *param_4 = cVar3;
  return 0;
}

