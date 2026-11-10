/* Recovered behavior:
 * Scan 32 fixed-size records, select a callback by each record marker, and invoke it with the
 * record and caller argument.
 */
#include <stdint.h>

/* Dispatches 32 fixed-size records to callbacks selected by marker byte. */
__attribute__((used, naked, section(".text.dispatch_fixed_size_records_by_marker"))) void
dispatch_fixed_size_records_by_marker(uint32_t argument) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n"
                     "mov r4, r0\n"
                     "ldr r5, [pc, #276]\n" /* v204_dispatch_records */
                     "movs r6, #32\n"
                     "ldr r7, [pc, #276]\n" /* v204_callback_table_for_type_26 */
                     ".Lrecord_loop: cmp r6, #0\n"
                     "beq .Ldone\n"
                     "ldrb r0, [r5, #22]\n"
                     "cmp r0, #38\n"
                     "mov r1, r7\n"
                     "beq .Linvoke_callback\n"
                     "cmp r0, #253\n"
                     "beq .Ltype_fd\n"
                     "cmp r0, #252\n"
                     "bne .Lskip_callback\n"
                     "ldr r1, [pc, #264]\n" /* v204_callback_table_for_type_fc */
                     "b .Linvoke_callback\n"
                     ".Ltype_fd: ldr r1, [pc, #256]\n" /* v204_callback_table_for_type_fd */
                     ".Linvoke_callback: ldr r2, [r1, #8]\n"
                     "mov r0, r5\n"
                     "mov r1, r4\n"
                     "blx r2\n"
                     ".Lskip_callback:"
                     "subs r6, r6, #1\n"
                     "adds r5, #24\n"
                     "b .Lrecord_loop\n"
                     ".Ldone: pop {r3, r4, r5, r6, r7, pc}\n");
}
