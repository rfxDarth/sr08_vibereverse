/* Handle the matched device state and send the corresponding state records. */
/* The shared state pointer's byte at +0x11 is sensor_variant (see sr08_device_state.h). */
__attribute__((used, naked, section(".text.handle_matched_device_state_send_corresponding_at_1da8"))) void
handle_matched_device_state_send_corresponding_at_1da8(void) {
    __asm__ volatile("push {r4, r5, r7, lr}\n"
                     "bl apply_device_state_radio_profile\n"
                     "movs r0, #15\n"
                     "bl exchange_one_radio_word\n"
                     "mov r5, r0\n"
                     "movs r0, #112\n"
                     "bl exchange_one_radio_word\n"
                     "cmp r5, #17\n"
                     "bne .Ldevice_state_handling_complete\n"
                     "mov r4, r0\n"
                     "ldr r0, [pc, #44]\n"
                     "bl scan_pair_table_until_terminator\n"
                     "movs r0, #10\n"
                     "bl wait_shared_timer_delta_exceed_requested_at_4458\n"
                     "ldr r0, [pc, #796]\n"
                     "cmp r4, #40\n"
                     "bne .Lset_sensor_variant_two\n"
                     "movs r1, #3\n"
                     "strb r1, [r0, #17]\n"
                     "b .Lscan_pair_after_state_update\n"
                     ".Lset_sensor_variant_two: movs r1, #2\n"
                     "strb r1, [r0, #17]\n"
                     "movs r0, #30\n"
                     "movs r1, #5\n"
                     "bl process_two_packed_input_bytes_update_at_8ad8\n"
                     ".Lscan_pair_after_state_update: ldr r0, [pc, #12]\n"
                     "bl scan_pair_table_until_terminator\n"
                     ".Ldevice_state_handling_complete: pop {r4, r5, r7, pc}\n");
}
