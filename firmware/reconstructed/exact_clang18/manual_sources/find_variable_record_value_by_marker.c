/* Scan length-prefixed records from offset zero until byte_limit. Each record
 * advances by its length byte plus one, with the offset wrapping to 16 bits.
 * Marker one at offset + 1 returns the byte at offset + 2; reaching the limit
 * without a match returns zero.
 */
#include <stdint.h>

__attribute__((naked, used, section(".text.find_variable_record_value_by_marker"))) uint8_t
find_variable_record_value_by_marker(const uint8_t *record_bytes, uint32_t byte_limit) {
    /*
     * Entry register roles: r0 = record_bytes, r1 = byte_limit, r2 = the
     * current 16-bit record offset, r3 = result (initialized to zero), and
     * r4 = the current marker or record-length byte.
     *
     * Keep the entry branch, offset update, and shared return path pinned.
     * Direct-C trials with Clang 18 changed the update order and return path.
     * The 36-byte and 34-byte C candidates failed to fill this 38-byte section;
     * the fixed-register variant also changed the callee-save set. Keep the
     * instruction sequence until a mixed C/assembly
     * form can preserve those encodings.
     */
    __asm__ volatile("push {r4, lr}\n\t"
                     "movs r2, #0\n\t"
                     "mov r3, r2\n\t"
                     "b .Lcheck_record_limit\n"
                     ".Linspect_record:\n\t"
                     "adds r4, r0, r2\n\t"
                     "ldrb r4, [r4, #1]\n\t"
                     "cmp r4, #1\n\t"
                     "beq .Lmatched_record\n\t"
                     "ldrb r4, [r0, r2]\n\t"
                     "adds r2, r2, #1\n\t"
                     "adds r2, r4, r2\n\t"
                     "uxth r2, r2\n" /* offset = (offset + length + 1) modulo 65536 */
                     ".Lcheck_record_limit:\n\t"
                     "cmp r2, r1\n\t"
                     "bcc .Linspect_record\n" /* Continue while offset < byte_limit. */
                     ".Lreturn_value:\n\t"
                     "mov r0, r3\n\t"
                     "pop {r4, pc}\n"
                     ".Lmatched_record:\n\t"
                     "adds r0, r0, r2\n\t"
                     "ldrb r3, [r0, #2]\n\t" /* Read the value byte at record offset +2. */
                     "b .Lreturn_value");
}
