/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc519c(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 auStack_25 [6];
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  undefined1 local_1a;
  undefined1 local_19;
  undefined4 local_18;
  
  piVar1 = DAT_07fc51f4;
  *DAT_07fc51f4 = 1;
  local_28 = 0xc;
  do {
  } while (*piVar1 != 0);
  uVar2 = *DAT_07fc51f8;
  FUN_07fc72f0(auStack_25);
  local_1a = (undefined1)((uint)uVar2 >> 8);
  local_1b = (undefined1)uVar2;
  local_19 = (undefined1)((uint)uVar2 >> 0x10);
  local_1c = 0;
  local_1d = 0x17;
  local_1e = 0;
  local_1f = 1;
  local_26 = 0;
  local_27 = 0xcc;
  local_18 = FUN_07fc56a0(DAT_07fc51fc,&local_27,0xf);
  FUN_07fc24dc(&local_28);
  return;
}

