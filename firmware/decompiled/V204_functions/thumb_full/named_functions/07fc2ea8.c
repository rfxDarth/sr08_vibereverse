/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2ea8(uint *param_1)

{
  if ((param_1[2] - 1 & param_1[1] + ~*param_1) != 0) {
    ROM___aeabi_memcpy /* 0x07f1e0ac */(param_1[4] + param_1[3] * *param_1);
    *param_1 = param_1[2] - 1 & *param_1 + 1;
  }
  return;
}

