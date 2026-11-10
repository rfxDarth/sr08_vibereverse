// rea decompile_all
// name: switch_display_state_and_run_hooks
// address: 0x7fc3b78
// body: available
// range: 0x7fc3b78-0x7fc3d19 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void switch_display_state_and_run_hooks(uint state)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  code *pcVar6;
  int iVar7;
  int iVar8;
  code *local_18;
  
  iVar8 = DAT_07fc3d1c;
  if (state < 0x24) {
    uVar4 = (uint)*(byte *)(DAT_07fc3d1c + 0xc);
    if (uVar4 != 0x1e) {
      pcVar6 = (code *)0x0;
      iVar7 = 0;
      do {
        if (iVar7 + 4 == 0x90) {
          local_18 = (code *)0x0;
          goto L_switch_display_state_and_run_hooks_at_07fc3bb6;
        }
        puVar1 = (undefined4 *)(DAT_07fc3d20 + iVar7);
        iVar7 = iVar7 + 4;
      } while (*(ushort *)*puVar1 != state);
      local_18 = *(code **)((ushort *)*puVar1 + 2);
L_switch_display_state_and_run_hooks_at_07fc3bb6:
      iVar7 = 0;
      do {
        if (iVar7 + 4 == 0x90) goto L_switch_display_state_and_run_hooks_at_07fc3bca;
        puVar1 = (undefined4 *)(DAT_07fc3d20 + iVar7);
        iVar7 = iVar7 + 4;
      } while (*(ushort *)*puVar1 != uVar4);
      pcVar6 = *(code **)((ushort *)*puVar1 + 4);
L_switch_display_state_and_run_hooks_at_07fc3bca:
      if (uVar4 != state) {
        *(undefined1 *)(DAT_07fc3d1c + 0x30) = 0;
      }
      if (state < 0x16) {
        reset_transition_state_and_store_scaled_value();
        if (*(char *)(iVar8 + 0x34) == '\0') {
          update_state_bits_and_publish_empty_status(0,8);
          *(undefined1 *)(iVar8 + 0x34) = 1;
        }
        disable_interrupt_mask_0x8000_and_publish_control_state();
        iVar8 = DAT_07fc3d2c;
        *(undefined2 *)(DAT_07fc3d2c + 0x44) = 0;
        *(undefined4 *)(iVar8 + 0x40) = 0;
        iVar8 = DAT_07fc3d24;
        for (iVar7 = 0; iVar3 = DAT_07fc3d28, iVar7 != 0xe; iVar7 = iVar7 + 2) {
          update_status_slots_for_group_bit(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x300,0,0);
        }
        for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
          update_status_slots_for_group_bit(*(undefined1 *)(iVar3 + iVar8),*(undefined1 *)(iVar3 + iVar8 + 1),0x300,0,1);
        }
        reset_transition_state_and_store_scaled_value();
        iVar8 = DAT_07fc3d1c;
        *(undefined1 *)(DAT_07fc3d1c + 0x2c) = 0xff;
        *DAT_07fc3d30 = 0x8000;
        *_DAT_07fc3d34 = *_DAT_07fc3d34 | 1;
        update_state_bits_and_publish_empty_status(0,2);
      }
      else {
        if (*(char *)(iVar8 + 0x34) == '\x01') {
          disable_interrupt_mask_0x8000_and_publish_control_state();
          iVar8 = DAT_07fc3d24;
          for (iVar7 = 0; iVar3 = DAT_07fc3d28, iVar7 != 0xe; iVar7 = iVar7 + 2) {
            update_status_slots_for_group_bit(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x200,0,0
                        );
          }
          for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
            update_status_slots_for_group_bit(*(undefined1 *)(iVar3 + iVar8),*(undefined1 *)(iVar3 + iVar8 + 1),0x200,0,1
                        );
          }
          update_state_bits_and_publish_empty_status(1,8);
          iVar8 = DAT_07fc3d1c;
          *(undefined1 *)(DAT_07fc3d1c + 0x2c) = 0xff;
          *(undefined1 *)(iVar8 + 0x34) = 0;
        }
        *(undefined2 *)(iVar8 + 0x40) = 0xf;
        if (state == 0x20) {
          *(undefined2 *)(iVar8 + 0x40) = 0xb4;
          update_mode_flags_and_transitions(0x4000000);
          uVar5 = 0x800;
        }
        else {
          update_mode_flags_and_transitions(0x4000000);
          uVar5 = 0x8000000;
        }
        update_mode_flags_and_transitions(uVar5);
      }
      format_and_send_uart_message(s_Psystate__d_switch_to__d_07fc3d37 + 1,*(undefined1 *)(iVar8 + 0xc),state);
      update_indexed_delay_entry_if_changed(1,0);
      if (pcVar6 != (code *)0x0) {
        (*pcVar6)(state);
      }
      uVar2 = *(undefined1 *)(iVar8 + 0xc);
      *(char *)(iVar8 + 0xc) = (char)state;
      if (local_18 != (code *)0x0) {
        (*local_18)(uVar2);
      }
    }
  }
  else {
    format_and_send_uart_message(s_newstate_error__d__d_07fc3d54,state,0x24);
  }
  return;
}

