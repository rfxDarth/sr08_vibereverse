/* Copy the incoming fields into the fixed shared command record. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

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

SR08_STATIC_ASSERT(offsetof(struct sr08_shared_command_record, first) == 0x00,
               "shared command first field must remain at offset 0x00");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_command_record, second) == 0x04,
               "shared command second field must remain at offset 0x04");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_command_record, third) == 0x08,
               "shared command third field must remain at offset 0x08");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_command_record, sixth) == 0x10,
               "shared command sixth field must remain at offset 0x10");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_command_record, tenth) == 0x17,
               "shared command tenth field must remain at offset 0x17");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_command_record, eleventh) == 0x18,
               "shared command eleventh field must remain at offset 0x18");
SR08_STATIC_ASSERT(sizeof(struct sr08_shared_command_record) == 0x1c, "shared command record must remain 0x1c bytes");

extern struct sr08_shared_command_record shared_command_record;

void copy_incoming_fields_to_shared_command_record(uint16_t first, uint32_t second, uint32_t third, uint16_t fourth,
                                                   uint16_t fifth, uint16_t sixth, uint16_t seventh, uint16_t eighth,
                                                   uint8_t ninth, uint8_t tenth, uint8_t eleventh) {
    struct sr08_shared_command_record *record = &shared_command_record;
    record->first = first;
    record->third = third;
    record->second = second;
    record->fourth = fourth;
    record->fifth = fifth;
    record->sixth = sixth;
    record->seventh = seventh;
    record->eighth = eighth;
    record->ninth = ninth;
    record->tenth = tenth;
    record->eleventh = eleventh;
}
