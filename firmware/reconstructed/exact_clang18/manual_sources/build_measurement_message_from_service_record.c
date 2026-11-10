/* Address-exact reconstruction of V204 build_measurement_message_from_service_record.
 * The recovered C logic is represented as its Thumb sequence because Clang's
 * stack-slot and register choices differ in this function. The literal words
 * at 0x07fc67e4..0x07fc67ef remain separate recovered data sections.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.build_measurement_message_from_service_record"))) uint32_t
build_measurement_message_from_service_record(uint32_t ignored_input __attribute__((unused)),
                                              uint16_t *record __attribute__((unused)),
                                              uint32_t destination __attribute__((unused)),
                                              uint32_t source __attribute__((unused))) {
    __asm__ volatile("push {r4, r5, r6, r7, lr}\n"
                     "sub sp, #20\n"
                     "mov r7, r3\n"
                     "mov r6, r2\n"
                     "mov r5, r1\n"
                     "movs r0, #38\n"
                     "bl find_keyed_record_value\n"
                     "ldrh r1, [r5, #0]\n"
                     "add r2, sp, #8\n"
                     "str r2, [sp, #0]\n"
                     "add r2, sp, #16\n"
                     "add r3, sp, #12\n"
                     "bl parse_variable_length_service_record\n"
                     "mov r4, r0\n"
                     "ldr r0, [pc, #68]\n"
                     "movs r3, #6\n"
                     "mov r1, r7\n"
                     "mov r2, r6\n"
                     "bl ke_msg_alloc\n"
                     "ldrh r1, [r5, #0]\n"
                     "strh r1, [r0, #0]\n"
                     "cmp r4, #0\n"
                     "bne .Lstore_measurement_type\n"
                     "add r1, sp, #12\n"
                     "ldrb r1, [r1, #0]\n"
                     "cmp r1, #22\n"
                     "bhi .Linvalid_measurement_code\n"
                     "movs r4, #0\n"
                     "movs r2, #1\n"
                     "lsls r2, r1\n"
                     "ldr r1, [pc, #40]\n"
                     "tst r2, r1\n"
                     "beq .Lcheck_secondary_code_mask\n"
                     "mov r1, r4\n"
                     "b .Lstore_measurement_code\n"
                     ".Lcheck_secondary_code_mask: ldr r1, [pc, #32]\n"
                     "tst r2, r1\n"
                     "beq .Linvalid_measurement_code\n"
                     "movs r1, #2\n"
                     "b .Lstore_measurement_code\n"
                     ".Linvalid_measurement_code: movs r4, #3\n"
                     "movs r1, #0\n"
                     ".Lstore_measurement_code: strh r1, [r0, #2]\n"
                     ".Lstore_measurement_type: strb r4, [r0, #4]\n"
                     "bl ke_msg_send\n"
                     "movs r0, #0\n"
                     "add sp, #20\n"
                     "pop {r4, r5, r6, r7, pc}\n");
}
