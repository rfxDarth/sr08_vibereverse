/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc4fc8(int param_1)

{
  char *pcVar1;
  int iVar2;
  
  pcVar1 = DAT_07fc5020;
  if ((((param_1 != 1) || (*DAT_07fc5020 != '\0')) && (param_1 == 0)) && (*DAT_07fc5020 == '\x01'))
  {
    FUN_07fc3a38(_DAT_07fc5024);
    iVar2 = DAT_07fc5028;
    if (*(char *)(DAT_07fc5028 + 0xc) != '\x16') {
      FUN_07fc3b78(0);
    }
    *(undefined2 *)(iVar2 + 0x42) = 0;
    pcVar1[0xc4] = '\0';
    pcVar1[1] = '\0';
    pcVar1[0x12] = '\0';
    pcVar1[0x11] = '\0';
    iVar2 = _DAT_07fc502c;
    *(undefined2 *)(_DAT_07fc502c + 0xe) = 0xffff;
    *(undefined2 *)(iVar2 + 0xc) = 0xffff;
    *(undefined2 *)(iVar2 + 10) = 500;
  }
  *pcVar1 = (char)param_1;
  FUN_07fc532c(0x7fc5030,param_1);
  return;
}

