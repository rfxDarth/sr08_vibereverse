/* Recovered behavior:
 * Scan 32 records, dispatch types 0x26, 0xfc, and 0xfd to their callback tables, and forward each
 * record with two caller values.
 */
#include <stdint.h>

/* Scan 32 records and dispatch three record types, forwarding each record and two caller values. */
__attribute__((used, naked, section(".text.dispatch_callback_for_record_types_26_fc_fd"))) void
dispatch_callback_for_record_types_26_fc_fd(uint32_t callback_argument_1, uint32_t callback_argument_2,
                                            uint32_t unused_parameter_3, uint32_t unused_parameter_4) {
    /* r6 walks 24-byte records; r7 counts the 32 entries. The selected callback receives
     * the record address followed by callback_argument_1 and callback_argument_2. */
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n"
                     "mov r4, r1\n"
                     "mov r5, r0\n"
                     "ldr r6, [pc, #332]\n" /* v204_dispatch_records */
                     "movs r7, #32\n"
                     ".Lrecord_loop: cmp r7, #0\n"
                     "beq .Ldone\n"
                     "ldrb r0, [r6, #22]\n"
                     "cmp r0, #38\n"
                     /* Type 0x26 uses the first callback table. */
                     "ldr r1, [pc, #324]\n" /* v204_callback_table_for_type_26 */
                     "beq .Linvoke_callback\n"
                     "cmp r0, #253\n"
                     "beq .Ltype_fd\n"
                     "cmp r0, #252\n"
                     "bne .Lnext_record\n"
                     /* Types 0xfd and 0xfc use the other two tables. */
                     "ldr r1, [pc, #320]\n" /* v204_callback_table_for_type_fc */
                     "b .Linvoke_callback\n"
                     ".Ltype_fd: ldr r1, [pc, #312]\n" /* v204_callback_table_for_type_fd */
                     ".Linvoke_callback: ldr r3, [r1, #12]\n"
                     "mov r0, r6\n"
                     "mov r1, r5\n"
                     "mov r2, r4\n"
                     "blx r3\n"
                     ".Lnext_record: subs r7, r7, #1\n"
                     "adds r6, #24\n"
                     "b .Lrecord_loop\n"
                     ".Ldone: pop {r3, r4, r5, r6, r7, pc}\n");
}
