#include <stdint.h>

/* Dispatch through the seven-entry callback table with a stack output byte. */
__attribute__((used, naked, section(".text.dispatch_through_seven_entry_callback_table"))) uint8_t
dispatch_through_seven_entry_callback_table(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr}\n"
                     "sub sp, #20\n"
                     "str r3, [sp, #12]\n"
                     "str r2, [sp, #8]\n"
                     "mov r6, r1\n"
                     "mov r7, r0\n"
                     "movs r0, #0\n"
                     ".Lcallback_loop: adds r4, r0, #4\n"
                     "cmp r4, #28\n"
                     "beq .Ldefault_dispatch\n"
                     "add r1, sp, #16\n"
                     "str r1, [sp, #0]\n"
                     "ldr r1, [pc, #40]\n"
                     "ldr r5, [r1, r0]\n"
                     "mov r0, r7\n"
                     "mov r1, r6\n"
                     "ldr r2, [sp, #8]\n"
                     "ldr r3, [sp, #12]\n"
                     "blx r5\n"
                     "cmp r0, #0\n"
                     "mov r0, r4\n"
                     "bne .Lcallback_loop\n"
                     "add r0, sp, #16\n"
                     "ldrb r0, [r0, #0]\n"
                     "b .Lreturn\n"
                     ".Ldefault_dispatch: mov r0, r7\n"
                     "mov r1, r6\n"
                     "ldr r2, [sp, #8]\n"
                     "ldr r3, [sp, #12]\n"
                     "bl dispatch_service_event_and_update_shared_state\n"
                     "movs r0, #0\n"
                     ".Lreturn: add sp, #20\n"
                     "pop {r4, r5, r6, r7, pc}\n");
}
