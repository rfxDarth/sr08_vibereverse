// rea decompile_all
// name: signed_radix_formatting_minimum_width_zero_at_5294
// address: 0x7fc5294
// body: available
// range: 0x7fc5294-0x7fc532b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void format_integer_radix_zero_padded(int value,int radix,int uppercase_hex,undefined1 *buffer,uint minimum_width)

{
  undefined1 uVar1;
  char cVar2;
  int iVar3;
  char cVar4;
  undefined1 *puVar5;
  uint uVar6;
  bool bVar7;
  
  uVar6 = 0;
  bVar7 = value < 0;
  if (radix == 10 && bVar7) {
    value = -value;
  }
  if (uppercase_hex == 0) {
    cVar2 = 'W';
  }
  else {
    cVar2 = '7';
  }
  do {
    iVar3 = __aeabi_uidiv(value,radix);
    value = value - iVar3 * radix;
    cVar4 = cVar2;
    if (value < 10) {
      cVar4 = '0';
    }
    buffer[uVar6] = (char)value + cVar4;
    uVar6 = uVar6 + 1;
    value = iVar3;
  } while (0 < iVar3);
  for (; uVar6 < minimum_width; uVar6 = uVar6 + 1) {
    buffer[uVar6] = 0x30;
  }
  if (radix == 10 && bVar7) {
    buffer[uVar6] = 0x2d;
    uVar6 = uVar6 + 1;
  }
  puVar5 = buffer + uVar6;
  *puVar5 = 0;
  for (uVar6 = (uint)((int)puVar5 - (int)buffer) >> 1; puVar5 = puVar5 + -1, uVar6 != 0;
      uVar6 = uVar6 - 1) {
    uVar1 = *buffer;
    *buffer = *puVar5;
    *puVar5 = uVar1;
    buffer = buffer + 1;
  }
  return;
}

