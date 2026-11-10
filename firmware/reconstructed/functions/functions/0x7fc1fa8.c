// rea decompile_all
// name: append_bounded_bytes_and_terminate
// address: 0x7fc1fa8
// body: available
// range: 0x7fc1fa8-0x7fc1fcf inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void append_bounded_bytes_and_terminate(int *cursor,int buffer_start,undefined1 *source_argument,uint requested_count)

{
  uint uVar1;
  undefined1 *puVar2;
  
  puVar2 = (undefined1 *)*cursor;
  uVar1 = (buffer_start - (int)puVar2) + 0x5f;
  if (requested_count <= uVar1) {
    uVar1 = requested_count;
  }
  for (; uVar1 != 0; uVar1 = uVar1 - 1) {
    *puVar2 = *source_argument;
    puVar2 = (undefined1 *)(*cursor + 1);
    *cursor = (int)puVar2;
    source_argument = source_argument + 1;
  }
  *puVar2 = 0;
  return;
}

