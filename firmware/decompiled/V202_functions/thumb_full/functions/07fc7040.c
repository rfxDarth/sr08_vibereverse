/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7040(char param_1,uint param_2,uint param_3,undefined4 param_4)

{
  code *pcVar1;
  
  pcVar1 = DAT_07fc7074;
  (*DAT_07fc7074)(param_1 + -99,param_2 >> 5 & 0xff,param_3,param_4,param_4);
  (*pcVar1)(param_1 + -0x60,0);
  (*pcVar1)(param_1 + -0x5b,param_3 >> 5 & 0xff);
  (*pcVar1)(param_1 + -0x58,0);
  return;
}

