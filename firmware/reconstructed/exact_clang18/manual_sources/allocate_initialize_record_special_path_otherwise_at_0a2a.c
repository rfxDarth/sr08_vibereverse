/* Allocate and initialize a record on the special path; otherwise dispatch indirectly. */
__attribute__((used, naked, section(".text.allocate_initialize_record_special_path_otherwise_at_0a2a"))) void
allocate_initialize_record_special_path_otherwise_at_0a2a(void) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "ldr r5, [pc, #64]\n"
                     "ldr r4, [pc, #92]\n"
                     "subs r5, #34\n"
                     "cmp r3, r5\n"
                     "bne dispatch_indirect_record_path_0a2a\n"
                     "ldr r0, [pc, #60]\n"
                     "movs r3, #9\n"
                     "mov r2, r5\n"
                     "movs r1, #0\n"
                     "subs r0, r0, #3\n"
                     "bl ke_msg_alloc\n"
                     "mov r4, r0\n"
                     "movs r2, #8\n"
                     "ldr r1, [pc, #68]\n"
                     "adds r0, r0, #1\n"
                     "bl __aeabi_memcpy\n"
                     "ldrb r0, [r4, #4]\n"
                     "movs r1, #8\n"
                     "orrs r0, r1\n"
                     "strb r0, [r4, #4]\n"
                     "movs r5, #0\n"
                     "strb r5, [r4, #0]\n"
                     "mov r0, r4\n"
                     "bl hci_send_2_host\n"
                     "mov r0, r5\n"
                     ".global special_path_return_0a2a\n"
                     "special_path_return_0a2a:\n"
                     "pop {r4, r5, r6, pc}\n");
}

__attribute__((used, naked, section(".text.dispatch_indirect_record_path_0a2a"))) void
dispatch_indirect_record_path_0a2a(void) {
    __asm__ volatile("blx r4\n"
                     "b special_path_return_0a2a\n");
}
