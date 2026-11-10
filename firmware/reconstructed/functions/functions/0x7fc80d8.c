// rea decompile_all
// name: dispatch_enabled_indicator_fields_device_status_at_80d8
// address: 0x7fc80d8
// body: available
// range: 0x7fc80d8-0x7fc812d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void dispatch_enabled_indicator_fields_for_device_status(void)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = DAT_07fc8130;
  bVar1 = *(byte *)(DAT_07fc8130 + 0x4c);
  if ((bVar1 & 1) != 0) {
    send_device_command_pair(0x28,*(undefined1 *)(DAT_07fc8130 + 0x50));
    bVar1 = *(byte *)(iVar2 + 0x4c);
  }
  uVar3 = (uint)bVar1;
  if ((int)(uVar3 << 0x1e) < 0) {
    send_device_command_pair(0x2e,*(undefined1 *)(iVar2 + 0x52));
    uVar3 = (uint)*(byte *)(iVar2 + 0x4c);
  }
  if ((int)(uVar3 << 0x1d) < 0) {
    send_device_command_pair(0x2f,*(undefined1 *)(iVar2 + 0x53));
    uVar3 = (uint)*(byte *)(iVar2 + 0x4c);
  }
  if ((int)(uVar3 << 0x1c) < 0) {
    send_device_command_pair(0x1e,*(undefined1 *)(iVar2 + 0x54));
    send_device_command_pair(0x1f,*(undefined1 *)(iVar2 + 0x54));
  }
  return;
}

