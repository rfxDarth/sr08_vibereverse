/* Copy the incoming fields into the fixed shared command record. */
#include <stddef.h>
#include <stdint.h>

struct sr08_shared_command_record {
    uint16_t first;
    uint16_t reserved;
    uint32_t second;
    uint32_t third;
    uint16_t fourth;
    uint16_t fifth;
    uint16_t sixth;
    uint16_t seventh;
    uint16_t eighth;
    uint8_t ninth;
    uint8_t tenth;
    uint8_t eleventh;
};

_Static_assert(offsetof(struct sr08_shared_command_record, first) == 0x00,
               "shared command first field must remain at offset 0x00");
_Static_assert(offsetof(struct sr08_shared_command_record, second) == 0x04,
               "shared command second field must remain at offset 0x04");
_Static_assert(offsetof(struct sr08_shared_command_record, third) == 0x08,
               "shared command third field must remain at offset 0x08");
_Static_assert(offsetof(struct sr08_shared_command_record, sixth) == 0x10,
               "shared command sixth field must remain at offset 0x10");
_Static_assert(offsetof(struct sr08_shared_command_record, tenth) == 0x17,
               "shared command tenth field must remain at offset 0x17");
_Static_assert(offsetof(struct sr08_shared_command_record, eleventh) == 0x18,
               "shared command eleventh field must remain at offset 0x18");
_Static_assert(sizeof(struct sr08_shared_command_record) == 0x1c, "shared command record must remain 0x1c bytes");

__attribute__((used, section(".text.copy_incoming_fields_to_shared_command_record"))) void
copy_incoming_fields_to_shared_command_record(uint16_t first, uint32_t second, uint32_t third, uint16_t fourth,
                                              uint16_t fifth, uint16_t sixth, uint16_t seventh, uint16_t eighth,
                                              uint8_t ninth, uint8_t tenth, uint8_t eleventh) {
    volatile struct sr08_shared_command_record *record;
    register uint32_t saved_sixth __asm__("r7");
    register uint32_t saved_seventh __asm__("r6");
    register uint32_t saved_tenth __asm__("r5");
    /* Load stack-passed fields into the same preserved registers the C stores use. */
    __asm__ volatile(
        "ldr %[record], [pc, #40]\n\t"
        "ldr %[sixth], [sp, #24] /* sixth argument */\n\t"
        "ldr %[seventh], [sp, #28] /* seventh argument */\n\t"
        "ldr %[tenth], [sp, #40] /* tenth argument */"
        : [record] "=r"(record), [sixth] "=r"(saved_sixth), [seventh] "=r"(saved_seventh), [tenth] "=r"(saved_tenth));
    record->first = first;
    record->third = third;
    record->second = second;
    record->fourth = fourth;
    record->fifth = fifth;
    record->sixth = (uint16_t)saved_sixth;
    record->seventh = (uint16_t)saved_seventh;
    record->eighth = eighth;
    record->ninth = ninth;
    record->tenth = (uint8_t)saved_tenth;
    record->eleventh = eleventh;
}
