/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint32_t dispatch_measurement_record_type(uint32_t event_context,
                                          const uint8_t *record)
{
  (void)event_context;

  if ((record[0] & 0xfeu) == 0x12u) {
    append_or_finalize_measurement_record_chunk();
  }

  return 0;
}

