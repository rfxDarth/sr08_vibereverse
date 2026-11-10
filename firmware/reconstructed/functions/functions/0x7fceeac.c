// rea decompile_all
// name: copy_incoming_fields_fixed_shared_command_at_eeac
// address: 0x7fceeac
// body: available
// range: 0x7fceeac-0x7fceed5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void copy_incoming_fields_fixed_shared_command_at_eeac(undefined2 first,undefined4 second,undefined4 third,undefined2 fourth,
                 undefined2 fifth,undefined2 sixth,undefined2 seventh,undefined2 eighth,
                 undefined1 ninth,undefined1 tenth,undefined1 eleventh)

{
  undefined2 *puVar1;
  
  puVar1 = DAT_07fceed8;
  *DAT_07fceed8 = first;
  *(undefined4 *)(puVar1 + 4) = third;
  *(undefined4 *)(puVar1 + 2) = second;
  puVar1[6] = fourth;
  puVar1[7] = fifth;
  puVar1[8] = sixth;
  puVar1[9] = seventh;
  puVar1[10] = eighth;
  *(undefined1 *)(puVar1 + 0xb) = ninth;
  *(undefined1 *)((int)puVar1 + 0x17) = tenth;
  *(undefined1 *)(puVar1 + 0xc) = eleventh;
  return;
}

