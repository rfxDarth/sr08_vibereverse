/* Initialize measurement state unless the record is already in state 1 or 2. */
__attribute__((used, naked, section(".text.initialize_measurement_state_unless_record_already_at_c538"))) void
initialize_measurement_state_unless_record_already_at_c538(void) {
    __asm__ volatile("push {r4, lr}\n"
                     "ldr r4, [pc, #880]\n"
                     "ldrb r0, [r4, #14]\n"
                     "cmp r0, #1\n"
                     "beq .Linitialization_complete\n"
                     "ldrb r0, [r4, #14]\n"
                     "cmp r0, #2\n"
                     "beq .Linitialization_complete\n"
                     "ldr r0, [pc, #36]\n"
                     "ldr r1, [pc, #40]\n"
                     "bl store_item_in_first_free_registration_slot\n"
                     "strb r0, [r4, #11]\n"
                     "bl get_or_initialize_cached_text_record\n"
                     "bl get_or_initialize_cached_text_record\n"
                     "bl ke_msg_send\n"
                     "movs r0, #0\n"
                     "str r0, [r4, #88]\n"
                     "movs r0, #4\n"
                     "movs r1, #2\n"
                     "bl ke_state_set\n"
                     ".Linitialization_complete: pop {r4, pc}\n");
}
