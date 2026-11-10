// rea decompile_all
// name: format_byte_span_spaced_hexadecimal_line_at_b178
// address: 0x7fcb178
// body: available
// range: 0x7fcb178-0x7fcb1a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void format_byte_span_spaced_hexadecimal_line_at_b178(int bytes_argument,uint length)

{
  uint uVar1;
  
  for (uVar1 = 0; length != uVar1; uVar1 = uVar1 + 1) {
    if ((uVar1 & 0xf) == 0) {
      format_and_send_uart_message(v204_hex_byte_format_data);
    }
    format_and_send_uart_message(s__02X_07fcb1a8,*(undefined1 *)(bytes_argument + uVar1));
  }
  format_and_send_uart_message(v204_hex_byte_format_data);
  return;
}

