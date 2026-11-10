#include <stdint.h>

extern void update_sensor_signal_state_from_sample(uint32_t);

/* Applies the pending-record operation to each item while the subsystem is active. */
/*
 * The firmware checks `active` before reading the count and returns zero when
 * inactive. When active, it returns one even for an empty list. The loop index
 * is deliberately truncated to eight bits after each callback; counts above
 * 255 therefore wrap and do not complete. Keep the truncation instruction.
 */
__attribute__((used, naked, section(".text.apply_pending_record_operation_to_items_while_active"))) uint32_t
apply_pending_record_operation_to_items_while_active(const uint32_t *items, uint32_t count) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "mov r6, r0\n"
                     "ldr r0, [pc, #32]\n" /* v204_record_operation_config at 0x07fcd9c4 */
                     "movs r4, #0\n"
                     "ldr r0, [r0, #4]\n" /* config.active */
                     "mov r5, r1\n"
                     "cmp r0, #0\n"
                     "beq .Lreturn_inactive\n"
                     "b .Lcheck_count\n"
                     ".Lapply_item: lsls r0, r4, #2\n"
                     "ldr r0, [r6, r0]\n"
                     "bl update_sensor_signal_state_from_sample\n"
                     "adds r4, r4, #1\n"
                     "uxtb r4, r4\n"
                     ".Lcheck_count: cmp r4, r5\n"
                     "bcc .Lapply_item\n"
                     "movs r0, #1\n"
                     ".Lreturn_inactive: pop {r4, r5, r6, pc}\n");
}
