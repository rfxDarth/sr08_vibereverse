/* Return the signed-byte maximum from the first 100 entries.
 *
 * V204 initializes the maximum from element zero and uses a signed compare
 * for each later element. The compare remains asm-goto so the keep/update
 * branch keeps its original Thumb encoding; the scan and result conversion
 * are expressed in C.
 */
#include <stdint.h>

enum { SIGNED_BYTE_SCAN_LENGTH = 100 };

__attribute__((used, section(".text.find_signed_byte_maximum_in_first_100"))) uint32_t
find_signed_byte_maximum_in_first_100(const int8_t *bytes) {
    int32_t maximum;

    /* Load bytes[0] as signed, matching V204's initial maximum. */
    __asm__ volatile("movs r1, #0\n\tldrsb r1, [r0, r1]" : "=r"(maximum));

    int32_t index;
    /* Initialize the loop index after the maximum load, as in the target. */
    __asm__ volatile("movs %0, #0" : "=r"(index));

scan: {
    int32_t value = bytes[index];

    asm goto volatile("cmp %[value], %[maximum]\n\tble %l[keep]"
                      :
                      : [maximum] "r"(maximum), [value] "r"(value)
                      : "cc"
                      : keep);
    maximum = value;
}

keep:
    ++index;
    asm goto volatile("cmp %[index], #%c[length]\n\tblt %l[scan]"
                      :
                      : [index] "r"(index), [length] "i"(SIGNED_BYTE_SCAN_LENGTH)
                      : "cc"
                      : scan);

    return (uint8_t)maximum;
}
