/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fc1b88(uint param_1,uint param_2)

{
  if (((int)param_2 < 0) && (param_1 = param_1 + 1, (param_2 & 0x7fffffff) == 0)) {
    param_1 = param_1 & 0xfffffffe;
  }
  return param_1;
}

