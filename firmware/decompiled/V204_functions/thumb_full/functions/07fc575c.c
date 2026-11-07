/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc575c(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined1 *puVar2;
  
  iVar1 = DAT_07fc57a8;
  if ((((int)((uint)*DAT_07fc57a4 << 0x18) < 0) && (-1 < *DAT_07fc57ac << 0x10)) &&
     ((*DAT_07fc57b0 & 1) == 0)) {
    func_0x07f1c054(DAT_07fc57a8 + param_1 + 2,4,param_2);
    return;
  }
  FUN_07fc5260();
  puVar2 = (undefined1 *)func_0x07f1bbb0(iVar1,4,4,8);
  *(undefined4 *)(puVar2 + 4) = param_2;
  *puVar2 = (char)param_1;
  func_0x07f1bbe2();
  return;
}

