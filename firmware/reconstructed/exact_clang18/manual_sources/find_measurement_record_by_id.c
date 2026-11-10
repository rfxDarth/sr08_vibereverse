/* Find a measurement node by ID. On success, return its length byte and the
 * address of its value bytes through the output pointers. A missing node sets
 * both outputs to zero; a null output pointer follows V204's fatal wait path.
 * A Clang 18 C trial reproduced the record walk, but moved the no-match block
 * ahead of the null-pointer handlers and changed their fixed flash literal
 * loads. Those control-flow and literal placements are part of this 80-byte
 * section, so retain the Thumb body until a mixed form preserves both.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_variable_length_record.h"

__attribute__((naked, noinline, used, section(".text.find_measurement_record_by_id"))) void
find_measurement_record_by_id(uint32_t record_id __attribute__((unused)),
                              uint16_t *value_length_out __attribute__((unused)),
                              uint8_t **value_bytes_out __attribute__((unused))) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "mov r4, r2\n"
                     "mov r5, r1\n"
                     "mov r6, r0\n"
                     "movs r0, #253\n"
                     "bl find_keyed_record_value\n"
                     "cmp r4, #0\n"
                     "beq .Lfatal_missing_length_output\n"
                     "cmp r5, #0\n"
                     "beq .Lfatal_missing_value_output\n"
                     "adds r0, #16\n"
                     /* Follow node->next_record_address until the list terminator. */
                     ".Lscan_records: ldr r0, [r0, #0] /* node->next_record_address */\n"
                     "cmp r0, #0\n"
                     "beq .Lrecord_not_found\n"
                     /* Compare node->record_id; the output fields follow in this same node. */
                     "ldrb r1, [r0, #4] /* node->record_id */\n"
                     "cmp r1, r6\n"
                     "bne .Lscan_records\n"
                     "ldrb r1, [r0, #5] /* node->value_length */\n"
                     "strh r1, [r5, #0]\n"
                     "adds r0, r0, #6 /* &node->values[0] */\n"
                     "b .Lreturn_with_value_pointer\n"
                     ".Lfatal_missing_length_output: ldr r0, [pc, #628]\n"
                     "movs r1, #200\n"
                     "strh r1, [r0, #0]\n"
                     "ldr r0, [pc, #628]\n"
                     "movs r1, #8\n"
                     "strh r1, [r0, #0]\n"
                     ".Lfatal_length_wait: b .Lfatal_length_wait\n"
                     ".Lfatal_missing_value_output: ldr r0, [pc, #616]\n"
                     "movs r1, #200\n"
                     "strh r1, [r0, #0]\n"
                     "ldr r0, [pc, #612]\n"
                     "movs r1, #8\n"
                     "strh r1, [r0, #0]\n"
                     ".Lfatal_value_wait: b .Lfatal_value_wait\n"
                     ".Lrecord_not_found: movs r0, #0\n"
                     "strh r0, [r5, #0]\n"
                     ".Lreturn_with_value_pointer: str r0, [r4, #0]\n"
                     "pop {r4, r5, r6, pc}\n");
}
