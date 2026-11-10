#ifndef SR08_MODE_RESET_STATE_H
#define SR08_MODE_RESET_STATE_H

#include <stddef.h>
#include <stdint.h>

struct sr08_mode_reset_words {
    uint8_t reserved_00_to_37[0x38];
    uint32_t reset_word_38;
    uint32_t reset_word_3c;
    uint32_t reset_word_40;
    uint32_t reserved_44;
    uint32_t reset_word_48;
    uint32_t reset_word_4c;
    uint32_t reset_word_50;
    uint32_t reset_word_54;
};

_Static_assert(offsetof(struct sr08_mode_reset_words, reset_word_38) == 0x38,
               "first mode reset word must remain at offset 0x38");
_Static_assert(offsetof(struct sr08_mode_reset_words, reset_word_48) == 0x48,
               "later mode reset words must remain at offset 0x48");
_Static_assert(offsetof(struct sr08_mode_reset_words, reset_word_54) == 0x54,
               "last mode reset word must remain at offset 0x54");

struct sr08_mode_reset_secondary_words {
    uint8_t reserved_00_to_67[0x68];
    uint32_t reset_word_68;
};

_Static_assert(offsetof(struct sr08_mode_reset_secondary_words, reset_word_68) == 0x68,
               "secondary mode reset word must remain at offset 0x68");

struct sr08_mode_reset_flag {
    uint8_t reserved_00_to_05[6];
    uint8_t reset_flag_06;
};

_Static_assert(offsetof(struct sr08_mode_reset_flag, reset_flag_06) == 6, "mode reset flag must remain at offset six");

#endif
