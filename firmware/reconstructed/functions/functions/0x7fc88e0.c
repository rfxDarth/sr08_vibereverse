// rea decompile_all
// name: program_peripheral_registers_from_descriptor
// address: 0x7fc88e0
// body: available
// range: 0x7fc88e0-0x7fc89a1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void program_peripheral_registers_from_descriptor(ushort *descriptor)

{
  byte bVar1;
  ushort uVar2;
  bool bVar3;
  ushort *puVar4;
  ushort *puVar5;
  byte bVar6;
  int iVar7;
  
  iVar7 = 0;
  bVar3 = (bool)isCurrentModePrivileged();
  if (bVar3) {
    iVar7 = isIRQinterruptsEnabled();
  }
  bVar3 = (bool)isCurrentModePrivileged();
  if (bVar3) {
    enableIRQinterrupts(1);
  }
  *DAT_07fc89a4 = *DAT_07fc89a4 | 0x20;
  puVar4 = DAT_07fc89a8;
  if (iVar7 == 0) {
    bVar3 = (bool)isCurrentModePrivileged();
    if (bVar3) {
      enableIRQinterrupts(0);
    }
  }
  else {
    bVar3 = (bool)isCurrentModePrivileged();
    if (bVar3) {
      enableIRQinterrupts(1);
    }
  }
  *DAT_07fc89a8 = *DAT_07fc89a8 & 0xfffe;
  puVar5 = DAT_07fc89ac;
  do {
  } while ((*puVar4 & 1) != 0);
  DAT_07fc89ac[0x18] = 0;
  puVar5[10] = *descriptor;
  puVar5[0xc] = descriptor[1];
  puVar5[0xe] = descriptor[2];
  puVar5[0x10] = descriptor[3];
  *puVar5 = (ushort)*(byte *)((int)descriptor + 9) << 1 | *puVar5 & 0xfff9;
  puVar5[0x1e] = (byte)descriptor[7] - 1 | puVar5[0x1e] & 0xffe0;
  puVar5[0x1c] = *(byte *)((int)descriptor + 0xf) - 1 | puVar5[0x1c] & 0xffe0;
  uVar2 = descriptor[6];
  *puVar5 = *puVar5 | 1;
  *puVar5 = *puVar5 | 0x40;
  bVar1 = *(byte *)((int)descriptor + 0xb);
  if (bVar1 == 1) {
    bVar6 = 1;
  }
  else {
    bVar6 = (byte)descriptor[4];
  }
  *puVar5 = *puVar5 & 0xffdf | (ushort)bVar6 << 5;
  *puVar5 = (ushort)bVar1 << 4 | *puVar5 & 0xffef;
  puVar5[2] = puVar5[2] & 0xfc00 | uVar2;
  *puVar4 = *puVar4 | 1;
  do {
  } while ((*puVar4 & 1) == 0);
  return;
}

