/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2fa4(int *param_1,uint param_2,undefined4 param_3)

{
  if (param_2 < (*param_1 - param_1[1] & param_1[2] - 1U)) {
    ROM___aeabi_memcpy /* 0x07f1e0ac */(param_3,param_1[4] + param_1[3] * (param_1[2] - 1U & param_1[1] + param_2),
                    param_1[3]);
  }
  return;
}

