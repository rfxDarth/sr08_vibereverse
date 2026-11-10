// rea decompile_all
// name: upsert_variable_length_list_record
// address: 0x7fc5848
// body: available
// range: 0x7fc5848-0x7fc58a9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void upsert_variable_length_list_record(uint selector,uint length,undefined4 data)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  iVar1 = find_keyed_record_value(0xfd);
  piVar3 = (int *)(iVar1 + 0x10);
  piVar2 = piVar3;
  do {
    piVar2 = (int *)*piVar2;
    if (piVar2 == (int *)0x0) goto upsert_variable_length_list_record_label_at_07fc5880;
  } while (*(byte *)(piVar2 + 1) != selector);
  if (*(byte *)((int)piVar2 + 5) != length) {
    co_list_extract(piVar3,piVar2,0);
    ke_free(piVar2);
upsert_variable_length_list_record_label_at_07fc5880:
    piVar2 = (int *)ke_malloc(length + 8,1);
    __aeabi_memclr(piVar2,length + 8);
    co_list_push_back(piVar3,piVar2);
  }
  *(char *)((int)piVar2 + 5) = (char)length;
  *(char *)((int)piVar2 + 4) = (char)selector;
  __aeabi_memcpy((int)piVar2 + 6,data);
  return;
}

