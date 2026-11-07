/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc1c18(void)

{
  undefined2 *puVar1;
  
  if ((_DAT_5000000a & 3) != 0) {
    if ((int)((uint)_DAT_50000014 << 0x1d) < 0) {
      FUN_07fcadf8();
    }
    puVar1 = DAT_07fc1cc8;
    DAT_07fc1cc8[1] = 0xff;
    *puVar1 = 4;
    do {
    } while ((uint)(ushort)puVar1[3] * 0x10000 + (uint)(ushort)puVar1[2] < DAT_07fc1ccc);
    *puVar1 = 5;
    _DAT_50000002 = *(undefined2 *)(DAT_07fc1fa4 + 0x3a);
    _DAT_50000020 = _DAT_50000020 & 0xff7f;
  }
  do {
  } while ((int)((uint)*DAT_07fc1cd0 << 0x1d) < 0);
  _DAT_50000000 = _DAT_50000000 & 0xffcc;
  if ((_DAT_5000000a & 3) != 0) {
    _DAT_5000000a = _DAT_5000000a & 0xfffc;
    _DAT_50000022 = _DAT_50000022 & 0xfffe;
  }
  _DAT_50000008 = _DAT_50000008 | 0x80;
  _DAT_50000010 = _DAT_50000010 & 0xfffb;
  do {
  } while (-1 < (int)((uint)_DAT_50000014 << 0x1e));
  ROM_ble_regs_pop /* 0x07f0237e */();
  *DAT_07fc1cd4 = *(undefined4 *)(DAT_07fc1fa4 + 0x54);
  do {
  } while (-1 < *DAT_07fc1cd8 << 0x1d);
  return;
}

