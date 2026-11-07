/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


bool FUN_07fc8c3c(uint param_1)

{
  int extraout_r1;
  int extraout_r1_00;
  
  if (((param_1 & 3) == 0) && (ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_1,100), extraout_r1_00 != 0)) {
    return true;
  }
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_1,400);
  return extraout_r1 == 0;
}

