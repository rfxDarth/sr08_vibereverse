/* Recovered behavior:
 * Format an integer in decimal or hexadecimal, zero-pad to the requested minimum width, append a
 * sign for negative decimal values, choose uppercase or lowercase hexadecimal digits,
 * null-terminate the result, and return the character count.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"

/* Format an integer in the requested radix, writing digits to buffer.
 * Negative decimal values get a leading minus sign; hexadecimal values use
 * their unsigned bit pattern. Pad to minimum_width with zeroes, use uppercase
 * hex digits when requested, terminate with NUL, then reverse the generated
 * digits in place. Return the character count excluding NUL. The pinned body
 * preserves the formatter's V204 ABI.
 */
__attribute__((used, naked, section(".text.format_integer_radix_zero_padded"))) uint32_t
format_integer_radix_zero_padded(int32_t value, int32_t radix, uint32_t uppercase_hex, char *buffer,
                                 uint32_t minimum_width) {
    __asm__ volatile("push {r1, r2, r3, r4, r5, r6, r7, lr}\n"
                     "mov r4, r3\n"
                     "mov r5, r1\n"
                     "mov r6, r0\n"
                     "movs r7, #0\n"
                     "cmp r0, #0\n"
                     "bmi .Lnegative_value\n"
                     "mov r0, r7\n"
                     "b .Lsign_ready\n"
                     ".Lnegative_value: movs r0, #1\n"
                     ".Lsign_ready: mov r1, r5\n"
                     "subs r1, #10\n"
                     "negs r3, r1\n"
                     "adcs r3, r1\n"
                     "ands r3, r0\n"
                     "str r3, [sp, #4]\n"
                     "beq .Lselect_hex_case\n"
                     "negs r6, r6\n"
                     ".Lselect_hex_case: cmp r2, #0\n"
                     "beq .Llowercase_hex\n"
                     "movs r0, #55\n"
                     "b .Lstore_hex_offset\n"
                     ".Llowercase_hex: movs r0, #87\n"
                     ".Lstore_hex_offset: str r0, [sp, #8]\n"
                     "ldr r0, [sp, #32]\n"
                     "str r0, [sp, #0]\n"
                     ".Lconvert_digit_loop: mov r0, r6\n"
                     "mov r1, r5\n"
                     "bl __aeabi_uidiv\n"
                     "mov r1, r5\n"
                     "muls r1, r0\n"
                     "subs r1, r6, r1\n"
                     "cmp r1, #10\n"
                     "blt .Ldecimal_digit\n"
                     "ldr r2, [sp, #8]\n"
                     "b .Lstore_digit\n"
                     ".Ldecimal_digit: movs r2, #48\n"
                     ".Lstore_digit: adds r1, r1, r2\n"
                     "strb r1, [r4, r7]\n"
                     "adds r7, r7, #1\n"
                     "cmp r0, #0\n"
                     "mov r6, r0\n"
                     "bgt .Lconvert_digit_loop\n"
                     "ldr r1, [sp, #0]\n"
                     ".Lpad_to_width: cmp r7, r1\n"
                     "bcs .Lappend_sign_or_terminate\n"
                     "movs r0, #48\n"
                     "strb r0, [r4, r7]\n"
                     "adds r7, r7, #1\n"
                     "b .Lpad_to_width\n"
                     ".Lappend_sign_or_terminate: ldr r0, [sp, #4]\n"
                     "cmp r0, #0\n"
                     "beq .Lterminate_without_sign\n"
                     "movs r0, #45\n"
                     "strb r0, [r4, r7]\n"
                     "adds r0, r4, r7\n"
                     "adds r2, r0, #1\n"
                     "b .Lterminate_and_reverse\n"
                     ".Lterminate_without_sign: adds r2, r4, r7\n"
                     ".Lterminate_and_reverse: movs r0, #0\n"
                     "strb r0, [r2, #0]\n"
                     "subs r0, r2, r4\n"
                     "lsrs r1, r0, #1\n"
                     "subs r2, r2, #1\n"
                     ".Lreverse_buffer: cmp r1, #0\n"
                     "beq .Lreturn\n"
                     "ldrb r3, [r4, #0]\n"
                     "ldrb r5, [r2, #0]\n"
                     "strb r5, [r4, #0]\n"
                     "strb r3, [r2, #0]\n"
                     "subs r1, r1, #1\n"
                     "subs r2, r2, #1\n"
                     "adds r4, r4, #1\n"
                     "b .Lreverse_buffer\n"
                     ".Lreturn: pop {r1, r2, r3, r4, r5, r6, r7, pc}\n");
}
