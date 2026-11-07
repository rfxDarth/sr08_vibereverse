/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc5a88(uint param_1,char *param_2)

{
  ushort uVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar2 = FUN_07fcb080(0xfd);
  uVar1 = *(ushort *)(iVar2 + 4);
  uVar3 = 0x80;
  if ((uVar1 <= param_1) && (param_1 < (uint)*(byte *)(iVar2 + 6) + (uint)uVar1)) {
    *param_2 = (char)param_1 - (char)uVar1;
    uVar3 = 0;
  }
  return uVar3;
}

