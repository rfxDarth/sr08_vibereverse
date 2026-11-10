#ifndef SR08_DISPLAY_RECORD_H
#define SR08_DISPLAY_RECORD_H

#include <stdint.h>
#include <stddef.h>

enum {
    SR08_DISPLAY_CODE_RECORD_MESSAGE_ID = 0x0d1b,
    SR08_DISPLAY_CODE_RECORD_TYPE = 0x1b,
    SR08_DISPLAY_CODE_RECORD_DESTINATION_TASK = 9,
    SR08_DISPLAY_CODE_RECORD_VALUE = 4,
    SR08_DISPLAY_CODE_STATUS_PAYLOAD_SIZE = 9,
    SR08_DISPLAY_CODE_EXTENDED_PAYLOAD_SIZE = 0x18,
    SR08_DISPLAY_CODE_FC = 0xfc,
    SR08_DISPLAY_CODE_FD = 0xfd,
};

/* Shared prefix used by type-0x1b display-code records. */
struct sr08_display_code_record {
    uint8_t type;
    uint8_t lookup_state;
    uint16_t code;
    uint32_t value;
    uint8_t flags;
};

/* The extended form stores additional fields at byte offsets 12, 16, and 20. */
struct sr08_extended_display_code_record {
    struct sr08_display_code_record base;
    uint32_t trailing_word_at_12;
    uint32_t trailing_word_at_16;
    uint16_t trailing_halfword_at_20;
};

typedef char sr08_display_code_prefix_is_12_bytes[sizeof(struct sr08_display_code_record) == 12 ? 1 : -1];
typedef char
    sr08_extended_display_code_record_is_24_bytes[sizeof(struct sr08_extended_display_code_record) == 24 ? 1 : -1];
typedef char
    sr08_display_code_offsets_are_stable[offsetof(struct sr08_display_code_record, type) == 0 &&
                                                 offsetof(struct sr08_display_code_record, lookup_state) == 1 &&
                                                 offsetof(struct sr08_display_code_record, code) == 2 &&
                                                 offsetof(struct sr08_display_code_record, value) == 4 &&
                                                 offsetof(struct sr08_display_code_record, flags) == 8
                                             ? 1
                                             : -1];
typedef char sr08_extended_display_code_offsets_are_stable
    [offsetof(struct sr08_extended_display_code_record, trailing_word_at_12) == 12 &&
             offsetof(struct sr08_extended_display_code_record, trailing_word_at_16) == 16 &&
             offsetof(struct sr08_extended_display_code_record, trailing_halfword_at_20) == 20
         ? 1
         : -1];

#endif
