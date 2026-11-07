/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2e6c(void)

{
  undefined4 uVar1;
  
  uVar1 = FUN_07fc4440();
  uVar1 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(uVar1,1000);
  *(undefined4 *)(DAT_07fc31f0 + 0x74) = uVar1;
  return;
}

