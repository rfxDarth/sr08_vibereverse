#include <stdint.h>

/* Dispatch each batch item with its three sign-extended offset parameters. */
__attribute__((used, naked, section(".text.dispatch_batch_item_three_sign_extended_at_ee4c"))) uint32_t
dispatch_batch_item_three_sign_extended_at_ee4c(void) {
    __asm__ volatile("push {r0, r1, r2, r3, r4, r5, r6, r7, lr}\n"
                     "mov r6, r0\n"
                     "ldr r0, [pc, #60]\n"
                     "sub sp, #12\n"
                     "ldr r0, [r0, #28]\n"
                     "movs r4, #0\n"
                     "ldr r7, [sp, #48]\n"
                     "mov r5, r1\n"
                     "cmp r0, #0\n"
                     "beq .Lcleanup_return\n"
                     "b .Lcheck_item_count\n"
                     ".Lprocess_item: ldr r2, [sp, #60]\n"
                     "lsls r0, r4, #1\n"
                     "ldrsh r2, [r2, r0]\n"
                     "ldr r1, [sp, #56]\n"
                     "ldrsh r1, [r1, r0]\n"
                     "ldr r3, [sp, #52]\n"
                     "ldrsh r0, [r3, r0]\n"
                     "mov r3, sp\n"
                     "stmia r3!, {r0, r1, r2}\n"
                     "lsls r0, r4, #2\n"
                     "ldr r1, [r5, r0]\n"
                     "ldr r0, [r6, r0]\n"
                     "ldr r3, [sp, #24]\n"
                     "ldr r2, [sp, #20]\n"
                     "bl process_sensor_frame_entry_dd68\n"
                     "adds r4, r4, #1\n"
                     "uxtb r4, r4\n"
                     ".Lcheck_item_count: cmp r4, r7\n"
                     "bcc .Lprocess_item\n"
                     "movs r0, #1\n"
                     ".Lcleanup_return: add sp, #28\n"
                     "pop {r4, r5, r6, r7, pc}\n");
}
