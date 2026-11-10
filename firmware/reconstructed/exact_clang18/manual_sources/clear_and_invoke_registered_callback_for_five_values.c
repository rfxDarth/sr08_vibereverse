/* Clear and invoke a registered callback for values in the five-item window. */
__attribute__((used, naked, section(".text.clear_and_invoke_registered_callback_for_five_values"))) int
clear_and_invoke_registered_callback_for_five_values(void) {
    __asm__ volatile("push {r4, lr}\n"
                     "mov r1, r0\n"
                     "movs r0, #1\n"
                     "ldr r2, [pc, #40]\n"
                     "cmp r1, r2\n"
                     "bcc .Lreturn_without_callback\n"
                     "adds r2, r2, #4\n"
                     "cmp r1, r2\n"
                     "bhi .Lreturn_without_callback\n"
                     "ldr r4, [sp, #8]\n"
                     "adds r1, #242\n"
                     "uxtb r0, r1\n"
                     "lsls r1, r0, #2\n"
                     "ldr r2, [pc, #24]\n"
                     "ldr r0, [r2, r1]\n"
                     "cmp r0, #0\n"
                     "beq .Lclear_callback_result\n"
                     "adds r1, r2, r1\n"
                     "movs r2, #0\n"
                     "str r2, [r1, #0]\n"
                     "blx r0\n"
                     ".Lclear_callback_result: movs r0, #0\n"
                     "strb r0, [r4, #0]\n"
                     ".Lreturn_without_callback: pop {r4, pc}\n");
}
