# V204 external ROM-call resolution

V204's Thumb-aware Ghidra output contains calls outside its loaded application payload. Their numeric targets were resolved against the DA14585 SDK symbol table at `ATC_SR08_Ring_source/Firmware_src/sdk/common_project_files/misc/da14585_symbols.txt`.

- Source pseudocode files read: 430.
- Distinct called ROM addresses resolved: 128.
- Call references resolved: 683.
- Called addresses unresolved by this SDK table: 0.
- Distinct symbols in the table after Thumb-bit normalization: 869.

The derived call-named pseudocode is in `V204_functions/thumb_full/named_functions/`; the full normalized symbol map is `V204_ROM_SYMBOLS.csv`. Names identify ROM entry points, not the OEM application's source-level intent. The SDK symbol table is dated 2017 in its header and is useful address evidence, but does not identify the firmware's application compiler or exact SDK revision.

## Most-referenced ROM calls

- `0x07f1dfb8` `__aeabi_uidiv`: 94 call sites
- `0x07f1e0ac` `__aeabi_memcpy`: 85 call sites
- `0x07f1bbb0` `ke_msg_alloc`: 70 call sites
- `0x07f1bbe2` `ke_msg_send`: 57 call sites
- `0x07f1e0de` `__aeabi_memclr`: 55 call sites
- `0x07f1bf1a` `ke_state_get`: 30 call sites
- `0x07f1beb6` `ke_state_set`: 24 call sites
- `0x07f1dfe4` `__aeabi_idiv`: 24 call sites
- `0x07f1003a` `attmdb_att_set_value`: 14 call sites
- `0x07f1ba8a` `ke_free`: 12 call sites
- `0x07f1b994` `ke_malloc`: 9 call sites
- `0x07f14c80` `gapc_get_conhdl`: 6 call sites
- `0x07f1c054` `ke_timer_set`: 6 call sites
- `0x07f027e4` `platform_reset`: 5 call sites
- `0x07f0283e` `prf_get_task_from_id`: 5 call sites
- `0x07f02976` `dia_rand`: 5 call sites
- `0x07f14c98` `gapc_get_role`: 5 call sites
- `0x07f1e0f4` `memcmp`: 5 call sites
- `0x07f02ae0` `co_buf_rx_buffer_get`: 4 call sites
- `0x07f0c404` `llm_util_bd_addr_in_wl`: 4 call sites
- `0x07f0cff4` `ea_sleep_check`: 4 call sites
- `0x07f12cf4` `gattm_get_max_mtu`: 4 call sites
- `0x07f13cc8` `smpc_pdu_send`: 4 call sites
- `0x07f14f10` `gapc_search_lecb_channel`: 4 call sites
- `0x07f1bc36` `ke_msg_free`: 4 call sites
- `0x07f1e134` `__aeabi_llsl`: 4 call sites
- `0x07f02ac6` `co_buf_rx_free`: 3 call sites
- `0x07f063f4` `llc_util_dicon_procedure`: 3 call sites
- `0x07f0eb10` `hci_send_2_host`: 3 call sites
- `0x07f0ff66` `attmdb_get_attribute`: 3 call sites
