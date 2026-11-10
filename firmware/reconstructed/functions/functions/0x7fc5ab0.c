// rea decompile_all
// name: build_service_information_record
// address: 0x7fc5ab0
// body: available
// range: 0x7fc5ab0-0x7fc5c31 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int build_service_information_record(int param_1,ushort *param_2,ushort param_3,short param_4)

{
  char cVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined2 uVar5;
  uint uVar6;
  ushort uVar7;
  ushort *puVar8;
  ushort *puVar9;
  undefined1 *puVar10;
  undefined4 uVar11;
  int iVar12;
  undefined4 *puVar13;
  undefined4 *puVar14;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_24 = 1;
  puVar8 = (ushort *)ke_malloc(0x28);
  __aeabi_memclr(puVar8,0x28);
  *(ushort **)(param_1 + 0x10) = puVar8;
  uVar7 = *(ushort *)(param_1 + 0x14);
  puVar9 = (ushort *)ke_malloc(0x90,2);
  *puVar9 = *param_2;
  puVar9[1] = uVar7;
  *(byte *)(puVar9 + 2) = ((byte)param_4 & 0x1e) - 0x40;
  __aeabi_memcpy(puVar9 + 3,DAT_07fc5c34,0x10);
  iVar12 = 0;
  puVar14 = DAT_07fc5c38;
  do {
    puVar13 = puVar14 + 5;
    if (iVar12 == 0x78) {
      *(undefined1 *)((int)puVar9 + 5) = 5;
      iVar12 = attmdb_add_service(puVar9);
      if (iVar12 == 0) {
        *param_2 = *puVar9;
        iVar12 = 0;
      }
      ke_free(puVar9);
      puVar8[2] = *param_2;
      *param_2 = *param_2 + 6;
      puVar14 = DAT_07fc5c38;
      if (iVar12 == 0) {
        *(undefined1 *)(puVar8 + 3) = 6;
        *(undefined2 *)(param_1 + 0x16) = 0xfd;
        *(undefined2 *)(param_1 + 0xe) = 1;
        *(undefined4 *)(param_1 + 4) = DAT_07fc5c3c;
        puVar8[1] = *(ushort *)(param_1 + 0x14);
        *(ushort **)(param_1 + 8) = puVar8 + 0x12;
        *puVar8 = param_4 << 0xf | param_3;
        co_list_init(puVar8 + 8);
        uVar6 = DAT_07fc5c40;
        iVar12 = 0;
        local_1c = 0;
        local_20 = 0;
        for (; puVar14 = puVar14 + 5, local_24 != 6; local_24 = local_24 + 1) {
          if (((0x2aU >> (local_24 & 0xff) & 1) != 0) && (*(ushort *)*puVar14 == uVar6)) {
            upsert_variable_length_list_record(local_24 & 0xff,8,&local_20);
          }
        }
        ke_state_set(*(undefined2 *)(param_1 + 0x14),0);
      }
      return iVar12;
    }
    cVar1 = *(char *)(puVar14 + 6);
    if (cVar1 == '\x10') {
      __aeabi_memcpy((int)puVar9 + iVar12 + 0x18,*puVar13,0x10);
      uVar11 = puVar14[7];
      *(short *)((int)puVar9 + iVar12 + 0x28) = (short)uVar11;
      *(undefined2 *)((int)puVar9 + iVar12 + 0x2c) = *(undefined2 *)(puVar14 + 8);
      *(ushort *)((int)puVar9 + iVar12 + 0x2a) = (ushort)((uint)uVar11 >> 0x10) | 8;
    }
    else {
      if (cVar1 == '\x04') {
        uVar5 = *(undefined2 *)(puVar14 + 8);
        uVar11 = puVar14[7];
        puVar10 = (undefined1 *)*puVar13;
        uVar2 = *puVar10;
        uVar3 = puVar10[1];
        uVar4 = puVar10[2];
        *(undefined1 *)((int)puVar9 + iVar12 + 0x1b) = puVar10[3];
        *(undefined1 *)((int)puVar9 + iVar12 + 0x1a) = uVar4;
        *(undefined1 *)((int)puVar9 + iVar12 + 0x19) = uVar3;
        *(undefined1 *)((int)puVar9 + iVar12 + 0x18) = uVar2;
        __aeabi_memclr((int)puVar9 + iVar12 + 0x1c,0xc);
        uVar7 = (ushort)((uint)uVar11 >> 0x10) | 4;
      }
      else {
        if (cVar1 != '\x02') goto L_build_service_information_record_at_07fc5b90;
        uVar5 = *(undefined2 *)(puVar14 + 8);
        uVar11 = puVar14[7];
        uVar2 = *(undefined1 *)*puVar13;
        *(undefined1 *)((int)puVar9 + iVar12 + 0x19) = ((undefined1 *)*puVar13)[1];
        *(undefined1 *)((int)puVar9 + iVar12 + 0x18) = uVar2;
        __aeabi_memclr((int)puVar9 + iVar12 + 0x1a,0xe);
        uVar7 = (ushort)((uint)uVar11 >> 0x10);
      }
      *(ushort *)((int)puVar9 + iVar12 + 0x2a) = uVar7;
      *(short *)((int)puVar9 + iVar12 + 0x28) = (short)uVar11;
      *(undefined2 *)((int)puVar9 + iVar12 + 0x2c) = uVar5;
    }
L_build_service_information_record_at_07fc5b90:
    iVar12 = iVar12 + 0x18;
    puVar14 = puVar13;
  } while( true );
}

