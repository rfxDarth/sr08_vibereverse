/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined4 FUN_07fc65d0(undefined4 param_1,undefined1 *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  ushort uVar3;
  undefined2 *puVar4;
  
  puVar1 = puRam07fc66ac;
  switch(*param_2) {
  case 1:
    if (param_2[1] != '\0') {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    puVar4 = (undefined2 *)*puRam07fc66ac;
    if (puVar4 == (undefined2 *)0x0) {
      puVar4 = (undefined2 *)func_0x07f1bbb0(uRam07fc66b0,9,4,0x2c);
      *puVar1 = puVar4;
      puVar4[0x10] = 0x17;
      *puVar4 = (short)uRam07fc66b4;
      puVar4[1] = 0;
      func_0x07f1e0de(puVar4 + 5,0x11);
      puVar4[0x11] = 0;
      puVar4[0xf] = 0;
      puVar4[0xe] = 0;
      *(undefined1 *)((int)puVar4 + 0x1b) = 0x20;
      iVar2 = iRam07fc66b8;
      uVar3 = *(ushort *)(iRam07fc66b8 + 0x7a);
      if (0xfa < uVar3) {
        uVar3 = 0xfb;
      }
      puVar4[0x13] = uVar3;
      uVar3 = *(ushort *)(iVar2 + 0x7c);
      if (uRam07fc66bc <= uVar3) {
        uVar3 = (ushort)uRam07fc66bc;
      }
      puVar4[0x14] = uVar3;
    }
    func_0x07f1bbe2(puVar4);
    *puVar1 = 0;
    break;
  default:
    FUN_07fcc578();
    break;
  case 3:
    if (param_2[1] != '\0') {
      *DAT_07fc698c = 200;
      *DAT_07fc6990 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    func_0x07f1beb6(4,1);
    iVar2 = FUN_07fc302c();
    if (iVar2 == 0) {
      return 0;
    }
    goto code_r0x07fc66a6;
  case 0xc:
  case 0xe:
  case 0xf:
  case 0x11:
  case 0x12:
  case 0x13:
  case 0x17:
    break;
  case 0xd:
    if (param_2[1] != 'D') {
      return 0;
    }
code_r0x07fc66a6:
    func_0x07fcc538();
  }
  return 0;
}

