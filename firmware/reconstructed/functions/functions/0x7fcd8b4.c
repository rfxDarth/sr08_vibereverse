// rea decompile_all
// name: build_copy_compact_sensor_status_reply_at_d8b4
// address: 0x7fcd8b4
// body: available
// range: 0x7fcd8b4-0x7fcd901 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void build_and_copy_compact_sensor_status_reply(undefined4 param_1)

{
  undefined1 *puVar1;
  char local_20 [4];
  undefined4 local_1c;
  undefined1 local_18;
  undefined2 local_16;
  
  __aeabi_memclr(local_20,0x14);
  local_20[0] = *DAT_07fcd904;
  puVar1 = *(undefined1 **)(DAT_07fcd904 + 4);
  local_1c = *(undefined4 *)(puVar1 + 8);
  if (local_20[0] == '\x02') {
    local_18 = *puVar1;
    local_16 = (undefined2)((*(uint *)(puVar1 + 0x418) & 0x3ffffff) >> 10);
  }
  else {
    local_18 = 0;
    local_16 = 0;
  }
  __aeabi_memcpy(param_1,local_20,0x14);
  return;
}

