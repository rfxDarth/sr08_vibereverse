/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5200(void)

{
  int iVar1;
  
  iVar1 = DAT_07fc54f4;
  *(undefined4 *)(DAT_07fc54f4 + 0x30) = *DAT_07fc5228;
  FUN_07fc3e90(0x3c000,0x2000);
  FUN_07fc3ea0(iVar1 + 0x30,0x3c000,0x70,1);
  return;
}

