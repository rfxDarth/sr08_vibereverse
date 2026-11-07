/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc85a0(undefined4 param_1,int param_2)

{
  code *pcVar1;
  short sVar2;
  short sVar3;
  uint uVar4;
  
  FUN_07fc8850(0x35,8);
  pcVar1 = DAT_07fc85dc;
  uVar4 = (*DAT_07fc85dc)(param_2 - 1U & 0xff);
  sVar2 = (*pcVar1)(param_2);
  sVar3 = (*pcVar1)(param_1);
  FUN_07fc8850(0x35,0);
  return (int)(short)(sVar2 * 0x10 + (short)(uVar4 >> 4) + sVar3 * 0x1000);
}

