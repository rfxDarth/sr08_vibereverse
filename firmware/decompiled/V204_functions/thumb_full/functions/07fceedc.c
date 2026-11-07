/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fceedc(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined4 param_4,
                 undefined4 param_5,undefined1 param_6)

{
  undefined1 *puVar1;
  
  puVar1 = DAT_07fceef4;
  *DAT_07fceef4 = param_1;
  puVar1[1] = param_2;
  puVar1[2] = param_3;
  *(undefined4 *)(puVar1 + 8) = param_5;
  *(undefined4 *)(puVar1 + 4) = param_4;
  puVar1[0xc] = param_6;
  return;
}

