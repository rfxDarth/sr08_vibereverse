/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


int FUN_07fc7620(undefined4 param_1,int param_2)

{
  code *pcVar1;
  short sVar2;
  short sVar3;
  uint uVar4;
  
  FUN_07fc78d4(0x35,8);
  pcVar1 = DAT_07fc765c;
  uVar4 = (*DAT_07fc765c)(param_2 - 1U & 0xff);
  sVar2 = (*pcVar1)(param_2);
  sVar3 = (*pcVar1)(param_1);
  FUN_07fc78d4(0x35,0);
  return (int)(short)(sVar2 * 0x10 + (short)(uVar4 >> 4) + sVar3 * 0x1000);
}

