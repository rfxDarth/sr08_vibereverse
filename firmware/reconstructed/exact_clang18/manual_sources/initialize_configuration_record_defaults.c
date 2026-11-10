/* Initialize the fixed configuration record's type, capacity, and links. */
#include <stddef.h>
#include <stdint.h>

struct sr08_configuration_record {
    uint32_t reserved_00_to_0c[13];
    uint32_t zero_word_13;
    uint32_t zero_word_14;
    uint32_t type;
    uint32_t capacity;
    uint32_t primary_link;
    uint32_t zero_word_18;
    uint32_t zero_word_19;
    uint32_t final_count;
    uint32_t primary_capacity;
    uint32_t secondary_link;
};

_Static_assert(offsetof(struct sr08_configuration_record, type) == 0x3c, "configuration type must remain at word 15");
_Static_assert(offsetof(struct sr08_configuration_record, zero_word_13) == 0x34,
               "configuration word 13 must remain at offset 0x34");
_Static_assert(offsetof(struct sr08_configuration_record, zero_word_14) == 0x38,
               "configuration word 14 must remain at offset 0x38");
_Static_assert(offsetof(struct sr08_configuration_record, capacity) == 0x40,
               "configuration capacity must remain at word 16");
_Static_assert(offsetof(struct sr08_configuration_record, primary_link) == 0x44,
               "configuration primary link must remain at word 17");
_Static_assert(offsetof(struct sr08_configuration_record, final_count) == 0x50,
               "configuration final count must remain at word 20");
_Static_assert(offsetof(struct sr08_configuration_record, zero_word_18) == 0x48,
               "configuration word 18 must remain at offset 0x48");
_Static_assert(offsetof(struct sr08_configuration_record, zero_word_19) == 0x4c,
               "configuration word 19 must remain at offset 0x4c");
_Static_assert(offsetof(struct sr08_configuration_record, primary_capacity) == 0x54,
               "configuration primary capacity must remain at word 21");
_Static_assert(offsetof(struct sr08_configuration_record, secondary_link) == 0x58,
               "configuration secondary link must remain at word 22");

__attribute__((used, section(".text.initialize_configuration_record_defaults"))) void
initialize_configuration_record_defaults(void) {
    /* Preserve V204's four-register save set and return-through-stack sequence. */
    __asm__ volatile("" : : : "r5", "r7", "lr");
    volatile struct sr08_configuration_record *record;
    uint32_t linked_record;
    uint32_t capacity;
    uint32_t type;
    uint32_t secondary_record;

    /* These fixed PC-relative loads address the record and its two links. */
    __asm__ volatile("ldr %[record], [pc, #36]\n\t"
                     "ldr %[linked], [pc, #36]\n\t"
                     "movs %[capacity], #20\n\t"
                     "movs %[type], #16\n\t"
                     "ldr %[secondary], [pc, #36]"
                     : [record] "=r"(record), [linked] "=r"(linked_record), [capacity] "=r"(capacity),
                       [type] "=r"(type), [secondary] "=r"(secondary_record));

    record->primary_capacity = capacity;
    record->secondary_link = secondary_record;
    /* The final count field stores 8, replacing the secondary link loaded above. */
    __asm__ volatile("movs %[secondary], #8" : [secondary] "=r"(secondary_record));

    uint32_t zero;
    __asm__ volatile("movs %[zero], #0" : [zero] "=r"(zero));
    record->zero_word_13 = zero;
    record->zero_word_14 = zero;
    record->type = type;
    record->capacity = capacity;
    record->primary_link = linked_record;
    record->zero_word_18 = zero;
    record->zero_word_19 = zero;
    record->final_count = secondary_record;
}
