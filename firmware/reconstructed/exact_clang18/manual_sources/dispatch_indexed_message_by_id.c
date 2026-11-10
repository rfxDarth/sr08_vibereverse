/* Dispatch message IDs 2-7 from byte zero, using the fourth argument's high
 * byte as the per-entry index. IDs outside the jump-table range use the
 * service-event fallback; the offset table is linked as separate data.
 */
extern void dispatch_service_event_and_update_shared_state(void);

__attribute__((used, naked, section(".text.dispatch_indexed_message_by_id"))) void
dispatch_indexed_message_by_id(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n"
                     "ldrb r4, [r1, #0]\n"
                     "subs r5, r4, #2\n"
                     "cmp r5, #5\n"
                     "bhi dispatch_switch_default_case_from_5fb0\n"
                     "lsrs r4, r3, #8\n"
                     "add r5, pc\n"
                     "ldrb r5, [r5, #4]\n"
                     "lsls r5, r5, #1\n"
                     "add pc, r5\n");
}

__attribute__((used, naked, section(".text.dispatch_switch_default_case_from_5fb0"))) void
dispatch_switch_default_case_from_5fb0(void) {
    __asm__ volatile("bl dispatch_service_event_and_update_shared_state\n"
                     "b return_from_switch_dispatch_5fb0\n");
}

__attribute__((used, naked, section(".text.return_from_switch_dispatch_5fb0"))) void
return_from_switch_dispatch_5fb0(void) {
    __asm__ volatile("movs r0, #0\n"
                     "pop {r3, r4, r5, r6, r7, pc}\n");
}
