/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc552c(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int extraout_r1;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint local_48;
  char local_44;
  uint local_24 [4];
  
  uVar4 = DAT_07fc564c;
  local_24[3] = 0;
  local_24[2] = 0;
  local_24[1] = 0;
  local_24[0] = 0;
  iVar6 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_1,DAT_07fc564c);
  uVar4 = iVar6 * uVar4;
  FUN_07fc9004(uVar4,&local_48);
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(iVar6,7);
  FUN_07fc3ea0(local_24,extraout_r1 * 0x2000 + DAT_07fc55fc,0x10,0);
  for (iVar6 = 0; iVar6 != 0x10; iVar6 = iVar6 + 4) {
    *(uint *)((int)local_24 + iVar6) = ~*(uint *)((int)local_24 + iVar6);
  }
  uVar1 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_2,0xf);
  uVar2 = ROM___aeabi_uidiv /* 0x07f1dfb8 */(param_3,0xf);
  iVar5 = uVar1 * 0x24 + extraout_r1 * 0x2000 + 0x2e000;
  iVar6 = 0;
  for (; uVar1 < uVar2; uVar1 = uVar1 + 1) {
    iVar3 = iVar6;
    if ((*(uint *)((int)local_24 + (uVar1 >> 3 & 0x3fc)) >> (uVar1 & 0x1f) & 1) != 0) {
      FUN_07fc3ea0(&local_48,iVar5,8,0);
      if (local_44 == '\x01') {
        iVar3 = iVar6 + 900;
      }
      if (DAT_07fc564c <= local_48 - uVar4) {
        iVar3 = iVar6;
      }
      if (local_48 < uVar4) {
        iVar3 = iVar6;
      }
    }
    iVar5 = iVar5 + 0x24;
    iVar6 = iVar3;
  }
  return iVar6;
}

