// rea decompile_all
// name: send_byte_buffer_through_memory_mapped_at_cf5c
// address: 0x7fccf5c
// body: available
// range: 0x7fccf5c-0x7fccf7b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void transmit_uart_buffer(byte *buffer,int byte_count)

{
  ushort *puVar1;
  
  puVar1 = v204_uart_registers_50001100;
  for (; byte_count != 0; byte_count = byte_count + -1) {
    do {
    } while (-1 < (int)((uint)puVar1[10] << 0x1a));
    *puVar1 = (ushort)*buffer;
    do {
    } while (-1 < (int)((uint)puVar1[10] << 0x19));
    buffer = buffer + 1;
  }
  return;
}

