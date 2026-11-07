/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


ushort FUN_07fc7284(ushort param_1)

{
  int iVar1;
  undefined1 auStack_30 [8];
  char local_28 [4];
  ushort local_24 [8];
  
  iVar1 = ROM_attmdb_get_service /* 0x07f0ff28 */();
  while( true ) {
    if ((param_1 < *(ushort *)(iVar1 + 4)) || (*(ushort *)(iVar1 + 6) < param_1)) {
      return 0;
    }
    ROM_attmdb_get_attribute /* 0x07f0ff66 */(param_1,auStack_30);
    ROM_attmdb_get_uuid /* 0x07f1014c */(auStack_30,local_28,local_24,0,0);
    if (((uint)local_24[0] == DAT_07fc72ec + 0xff) && (local_28[0] == '\x02')) break;
    if ((local_24[0] == DAT_07fc72ec) && (local_28[0] == '\x02')) {
      return 0;
    }
    param_1 = param_1 + 1;
  }
  return param_1;
}

