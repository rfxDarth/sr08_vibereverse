/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void write_two_bytes_from_packed_value(uint param_1)

{
  send_device_command_pair(99,(param_1 & 0xfff) >> 8);
  send_device_command_pair(0x62,param_1 & 0xff);
  return;
}

