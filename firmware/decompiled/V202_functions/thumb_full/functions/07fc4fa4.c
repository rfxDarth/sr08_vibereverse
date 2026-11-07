/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4fa4(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 local_25;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  undefined1 local_1a;
  undefined1 local_19;
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  undefined1 local_15;
  
  local_28 = 3;
  iVar1 = *(int *)(DAT_07fc511c + 0x38);
  local_23 = (undefined1)iVar1;
  uVar3 = *(undefined4 *)(DAT_07fc5118 + 0x28);
  local_27 = (undefined1)uVar3;
  local_20 = (undefined1)((uint)iVar1 >> 0x18);
  local_21 = (undefined1)((uint)iVar1 >> 0x10);
  local_22 = (undefined1)((uint)iVar1 >> 8);
  local_24 = (undefined1)((uint)uVar3 >> 0x18);
  local_25 = (undefined1)((uint)uVar3 >> 0x10);
  local_26 = (undefined1)((uint)uVar3 >> 8);
  uVar6 = 0;
  if (DAT_07fc5084 <= *(uint *)(DAT_07fc511c + 0x44)) {
    uVar6 = *(uint *)(DAT_07fc511c + 0x44);
  }
  local_17 = (undefined1)uVar6;
  local_16 = (undefined1)(uVar6 >> 8);
  local_15 = (undefined1)(uVar6 >> 0x10);
  uVar6 = iVar1 * (uint)*(ushort *)(DAT_07fc511c + 0x36);
  uVar3 = func_0x07f1dfb8(uVar6 * *(byte *)(DAT_07fc511c + 0x8a) * 0xe,DAT_07fc5088);
  local_1b = (undefined1)uVar3;
  uVar2 = func_0x07f1dfb8((uVar6 & 0x7fffffff) >> 4,5);
  local_1f = (undefined1)uVar2;
  local_18 = (undefined1)((uint)uVar3 >> 0x18);
  local_19 = (undefined1)((uint)uVar3 >> 0x10);
  local_1a = (undefined1)((uint)uVar3 >> 8);
  local_1c = (undefined1)((uint)uVar2 >> 0x18);
  local_1d = (undefined1)((uint)uVar2 >> 0x10);
  local_1e = (undefined1)((uint)uVar2 >> 8);
  FUN_07fc2550(&local_28);
  local_15 = 0;
  local_16 = 0;
  local_17 = 0;
  local_28 = 0x13;
  uVar4 = *(undefined4 *)(DAT_07fc5118 + 0x28);
  local_27 = (undefined1)uVar4;
  uVar5 = *(undefined4 *)(DAT_07fc511c + 0x3c);
  uVar2 = *(undefined4 *)(DAT_07fc511c + 0x40);
  local_23 = (undefined1)uVar5;
  local_1f = (undefined1)uVar2;
  uVar3 = *(undefined4 *)(DAT_07fc511c + 0x48);
  local_1b = (undefined1)uVar3;
  local_24 = (undefined1)((uint)uVar4 >> 0x18);
  local_25 = (undefined1)((uint)uVar4 >> 0x10);
  local_26 = (undefined1)((uint)uVar4 >> 8);
  local_20 = (undefined1)((uint)uVar5 >> 0x18);
  local_21 = (undefined1)((uint)uVar5 >> 0x10);
  local_22 = (undefined1)((uint)uVar5 >> 8);
  local_1c = (undefined1)((uint)uVar2 >> 0x18);
  local_1d = (undefined1)((uint)uVar2 >> 0x10);
  local_1e = (undefined1)((uint)uVar2 >> 8);
  local_18 = (undefined1)((uint)uVar3 >> 0x18);
  local_19 = (undefined1)((uint)uVar3 >> 0x10);
  local_1a = (undefined1)((uint)uVar3 >> 8);
  FUN_07fc2550(&local_28);
  return;
}

