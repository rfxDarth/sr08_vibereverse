/* Validate the cached text payload and return it, or install the fallback text. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flash_operation.h"

__attribute__((used, naked, section(".text.validate_cached_text_payload_return_install_at_8fb0"))) const uint8_t *
validate_cached_text_payload_return_install_at_8fb0(uint8_t *output_length, uint32_t unused_abi_argument_2,
                                                    uint32_t unused_abi_argument_3,
                                                    enum sr08_flash_operation operation) {
    /* r4 retains output_length, r6 is the cache record, r5 the selected text, and r7 its length. */
    /* Record offsets: marker 0x14, text 0x15, length 0x27. Accept 1-17 bytes matching strlen. */
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n"
                     "mov r4, r0\n"
                     "movs r3, #0\n"
                     "strb r3, [r0, #0]\n"
                     "ldr r6, [pc, #60]\n"
                     "mov r5, r6\n"
                     "adds r5, #20\n"
                     "movs r0, #25\n"
                     "lsls r1, r0, #14\n"
                     "movs r2, #20\n"
                     "mov r0, r5\n"
                     "bl perform_flash_memory_operation\n"
                     "ldrb r0, [r6, #20]\n"
                     "cmp r0, #43\n"
                     "bne .L_invalid_cached_text\n"
                     "ldrb r7, [r5, #19]\n"
                     "cmp r7, #0\n"
                     "beq .L_invalid_cached_text\n"
                     "cmp r7, #17\n"
                     "bhi .L_invalid_cached_text\n"
                     "mov r5, r6\n"
                     "adds r5, #21\n"
                     "mov r0, r5\n"
                     "bl nul_terminated_string_length\n"
                     "cmp r0, r7\n"
                     "beq .L_finish_cached_text_validation\n"
                     ".L_invalid_cached_text: movs r0, #132\n"
                     "strb r0, [r6, #20]\n"
                     ".set .Lfallback_text, .+16\n"
                     "adr r5, .Lfallback_text /* fallback text at 0x07fc8ffc */\n"
                     "movs r7, #4\n"
                     ".L_finish_cached_text_validation: strb r7, [r4, #0]\n"
                     "mov r0, r5\n"
                     "pop {r3, r4, r5, r6, r7, pc}\n");
}
