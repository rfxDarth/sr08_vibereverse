/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


bool FUN_07fc0374(int param_1)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  ushort uVar4;
  int *piVar5;
  int iVar6;
  uint uVar7;
  ushort uVar8;
  undefined2 uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  int iVar13;
  
  iVar13 = param_1 * 4;
  iVar6 = *(int *)(DAT_07fc05ec + iVar13);
  uVar7 = (uint)*(ushort *)(iVar6 + 0xa2);
  uVar1 = *(ushort *)(iVar6 + 0xa4);
  if (uVar7 < 0x1b) {
    uVar7 = 0x1b;
  }
  if (*(ushort *)(iVar6 + 0x9c) < uVar7) {
    uVar7 = (uint)*(ushort *)(iVar6 + 0x9c);
  }
  *(short *)(iVar6 + 0xa4) = (short)uVar7;
  uVar8 = *(ushort *)(iVar6 + 0xa0);
  uVar2 = *(ushort *)(iVar6 + 0xa6);
  if (uVar8 < 0x1b) {
    uVar8 = 0x1b;
  }
  if (*(ushort *)(iVar6 + 0x9e) < uVar8) {
    uVar8 = *(ushort *)(iVar6 + 0x9e);
  }
  *(ushort *)(iVar6 + 0xa6) = uVar8;
  uVar3 = *(ushort *)(iVar6 + 0xb0);
  uVar11 = (uint)*(ushort *)(iVar6 + 0xae);
  if (uVar11 < 0x148) {
    uVar11 = 0x148;
  }
  uVar12 = (uint)*(ushort *)(iVar6 + 0xa8);
  if (uVar11 <= *(ushort *)(iVar6 + 0xa8)) {
    uVar12 = uVar11;
  }
  *(short *)(iVar6 + 0xb0) = (short)uVar12;
  uVar4 = *(ushort *)(iVar6 + 0xb2);
  uVar11 = (uint)*(ushort *)(iVar6 + 0xac);
  if (*(ushort *)(iVar6 + 0xac) < 0x148) {
    uVar11 = 0x148;
  }
  if (*(ushort *)(iVar6 + 0xaa) < uVar11) {
    uVar11 = (uint)*(ushort *)(iVar6 + 0xaa);
  }
  *(short *)(iVar6 + 0xb2) = (short)uVar11;
  uVar10 = (uVar12 >> 3) - 0xb;
  uVar9 = (short)uVar10;
  if (uVar7 < (uVar10 & 0xffff)) {
    uVar9 = (short)uVar7;
  }
  *(undefined2 *)(iVar6 + 0xb4) = uVar9;
  piVar5 = DAT_07fc05f0;
  iVar6 = DAT_07fc05ec;
  *(undefined2 *)(param_1 * 0x52 + *DAT_07fc05f0 + 0xae) =
       *(undefined2 *)(*(int *)(DAT_07fc05ec + iVar13) + 0xa6);
  *(undefined2 *)(param_1 * 0x52 + *piVar5 + 0xb0) =
       *(undefined2 *)(*(int *)(iVar6 + iVar13) + 0xb2);
  return uVar11 != uVar4 || (uVar12 != uVar3 || (uVar8 != uVar2 || uVar7 != uVar1));
}

