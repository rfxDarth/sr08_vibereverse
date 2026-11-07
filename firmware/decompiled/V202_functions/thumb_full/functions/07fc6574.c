/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc6574(undefined4 param_1,char *param_2,undefined4 param_3,uint param_4)

{
  undefined2 uVar1;
  int iVar2;
  char *pcVar3;
  char cVar4;
  
  iVar2 = DAT_07fc65cc;
  if (*param_2 == '\x01') {
    *(undefined2 *)(DAT_07fc65cc + 0x6a) = *(undefined2 *)(param_2 + 2);
  }
  else {
    if (*param_2 != '\0') {
      cVar4 = 'H';
      goto LAB_07fc65a8;
    }
    uVar1 = *(undefined2 *)(param_2 + 2);
    *(char *)(DAT_07fc65cc + 0x48) = (char)uVar1;
    func_0x07f1e0ac(iVar2 + 0x49,param_2 + 4,(char)uVar1);
  }
  cVar4 = '\0';
LAB_07fc65a8:
  pcVar3 = (char *)func_0x07f1bbb0(DAT_07fc65d0,param_4 & 0xffffff0a | 10,4,2);
  pcVar3[1] = cVar4;
  *pcVar3 = *param_2;
  func_0x07f1bbe2();
  return 0;
}

