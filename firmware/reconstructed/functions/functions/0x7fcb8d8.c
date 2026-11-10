// rea decompile_all
// name: initializes_ring_s_display_sensor_configuration_at_b8d8
// address: 0x7fcb8d8
// body: available
// range: 0x7fcb8d8-0x7fcb905 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_ring_display_and_sensor_registers(void)

{
  undefined2 *puVar1;
  int iVar2;
  
  *v204_ring_s_register_40000080 = v204_ring_s_peripheral_init_value;
  *v204_ring_s_register_5000286a = (short)v204_ring_s_sensor_init_value;
  puVar1 = v204_ring_s_register_50002600;
  v204_ring_s_register_50002600[1] = v204_ring_s_register_50002600[1] & 0xfffb | 2;
  *v204_ring_s_register_50002c06 = 99;
  iVar2 = DAT_07fcbbbc;
  *v204_ring_s_register_50002810 = *(undefined2 *)(DAT_07fcbbbc + 0x3e);
  *puVar1 = *(undefined2 *)(iVar2 + 0x3c);
  return;
}

