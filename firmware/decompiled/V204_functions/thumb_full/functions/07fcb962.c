/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fcb962(uint param_1)

{
  uint value = param_1 >> 1;
#if defined(__clang__)
  __asm__ volatile ("subs %0, %0, #112" : "+l"(value) : : "cc");
#else
  value -= 112;
#endif
  return (byte)value;
}

