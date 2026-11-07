/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc7fcc(char param_1,uint param_2,uint param_3,undefined4 param_4)

{
  code *pcVar1;
  
  pcVar1 = DAT_07fc8000;
  (*DAT_07fc8000)(param_1 + -99,param_2 >> 5 & 0xff,param_3,param_4,param_4);
  (*pcVar1)(param_1 + -0x60,0);
  (*pcVar1)(param_1 + -0x5b,param_3 >> 5 & 0xff);
  (*pcVar1)(param_1 + -0x58,0);
  return;
}

