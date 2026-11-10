// rea decompile_all
// name: emit_event_packet_active_mode_byte_at_5070
// address: 0x7fc5070
// body: available
// range: 0x7fc5070-0x7fc50ab inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void emit_event_packet_when_active_mode_changes(uint mode)

{
  undefined4 uVar1;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 auStack_1e [14];
  
  if (*(byte *)(v204_shared_context_bytes_for_step_accumulator + 2) != mode) {
    *(char *)(v204_shared_context_bytes_for_step_accumulator + 2) = (char)mode;
    __aeabi_memclr(auStack_1e,0xe);
    local_24 = 0x14;
    uVar1 = *DAT_07fc5228;
    local_23 = (undefined1)uVar1;
    local_20 = (undefined1)((uint)uVar1 >> 0x18);
    local_21 = (undefined1)((uint)uVar1 >> 0x10);
    local_22 = (undefined1)((uint)uVar1 >> 8);
    local_1f = (char)mode;
    search_queue_and_insert_limit_one(&local_24);
  }
  return;
}

