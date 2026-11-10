/* Find a 16-bit key at byte 22 and return the matching record's word at byte 16. */
#include <stdint.h>

__attribute__((used, section(".text.find_keyed_record_value"))) void *find_keyed_record_value(uint32_t key) {
    volatile uint16_t *cursor;
    uint32_t remaining;

    /* The literal-backed table holds 24-byte records; each key is at offset 22. */
    __asm__ volatile("ldr %[cursor], [pc, #228]\n\t"
                     "adds %[cursor], #22\n\t"
                     "movs %[remaining], #33"
                     : [cursor] "=r"(cursor), [remaining] "=r"(remaining));
    /* The pre-decrement condition allows up to 32 key comparisons. */
    while (--remaining != 0) {
        uint32_t found;
        found = *cursor;
        cursor += 12; /* Twelve halfwords advance one 24-byte record. */
        if (found == key) {
            uint32_t result;
            /* Cursor advanced by one stride; this reads the matched record's word at offset 16. */
            __asm__ volatile("movs %[result], #6\n\t"
                             "mvns %[result], %[result]\n\t"
                             "lsls %[result], %[result], #2\n\t"
                             "adds %[result], %[cursor], %[result]\n\t"
                             "subs %[result], %[result], #7\n\t"
                             "movs %[cursor], #5\n\t"
                             "ldr %[result], [%[result], %[cursor]]"
                             : [result] "=r"(result), [cursor] "+r"(cursor)
                             :
                             : "cc");
            return (void *)(uintptr_t)result;
        }
    }
    return 0;
}
