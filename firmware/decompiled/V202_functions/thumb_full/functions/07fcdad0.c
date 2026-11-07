/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined8 FUN_07fcdad0(uint *param_1)

{
  byte bVar1;
  int iVar2;
  undefined1 uVar3;
  uint uVar4;
  uint local_20;
  undefined4 local_18;
  
  uVar3 = 0;
  iVar2 = *(int *)(DAT_07fcdb20 + 0x1c);
  bVar1 = *(byte *)(iVar2 + 2);
  local_20 = (uint)bVar1;
  uVar4 = *(uint *)(iVar2 + 4);
  local_18 = (uint)CONCAT11(*(undefined1 *)(iVar2 + 0xca0),*(undefined1 *)(iVar2 + 0xc95)) << 0x10;
  if ((bVar1 == 3) || (bVar1 == 4)) {
    local_18 = CONCAT31(local_18._1_3_,*(undefined1 *)(iVar2 + 8));
    uVar3 = *(undefined1 *)(iVar2 + 0xc88);
  }
  else {
    local_18 = (uint)local_18._1_3_ << 8;
  }
  local_18._0_2_ = CONCAT11(uVar3,(undefined1)local_18);
  *param_1 = local_20;
  param_1[1] = uVar4;
  param_1[2] = local_18;
  param_1[3] = 0;
  return CONCAT44(uVar4,local_20);
}

