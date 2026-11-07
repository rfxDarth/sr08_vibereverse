/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined4 FUN_07fc6804(undefined4 param_1,char *param_2,undefined4 param_3,uint param_4)

{
  short *psVar1;
  undefined1 *puVar2;
  uint uVar3;
  
  if (*param_2 == '\x12') {
    uVar3 = param_4;
    psVar1 = (short *)FUN_07fcb080(0x26);
    if ((char)psVar1[0x11] != '\0') {
      *(char *)(psVar1 + 0x11) = (char)psVar1[0x11] + -1;
    }
    puVar2 = (undefined1 *)
             func_0x07f1bbb0(DAT_07fc6868,
                             param_4 & (uint)(int)*psVar1 >> 0xf & 0xffffff00 |
                             DAT_07fc6be4 & (int)*psVar1,param_3,2,uVar3);
    *puVar2 = (char)(param_4 >> 8);
    puVar2[1] = param_2[1];
    func_0x07f1bbe2();
    uVar3 = func_0x07f1bf1a(param_3);
    func_0x07f1beb6(param_3,uVar3 & 0xfe);
  }
  return 0;
}

