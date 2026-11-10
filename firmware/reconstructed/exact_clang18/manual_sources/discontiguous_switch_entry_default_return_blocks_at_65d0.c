/* Discontiguous switch entry and default/return blocks; jump table is separate data. */
extern void dispatch_service_event_and_update_shared_state(void);

__attribute__((used, naked, section(".text.discontiguous_switch_entry_default_return_blocks_at_65d0"))) void
discontiguous_switch_entry_default_return_blocks_at_65d0(void) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "ldrb r4, [r1, #0]\n"
                     "subs r4, r4, #1\n"
                     "cmp r4, #22\n"
                     "bhi dispatch_switch_default_case_from_65d0\n"
                     "mov r8, r8\n"
                     "add r4, pc\n"
                     "ldrb r4, [r4, #4]\n"
                     "lsls r4, r4, #1\n"
                     "add pc, r4\n");
}

__attribute__((used, naked, section(".text.return_from_switch_dispatch_65d0"))) void
return_from_switch_dispatch_65d0(void) {
    __asm__ volatile("movs r0, #0\n"
                     "pop {r4, r5, r6, pc}\n");
}

__attribute__((used, naked, section(".text.dispatch_switch_default_case_from_65d0"))) void
dispatch_switch_default_case_from_65d0(void) {
    __asm__ volatile("bl dispatch_service_event_and_update_shared_state\n"
                     "b return_from_switch_dispatch_65d0\n");
}
