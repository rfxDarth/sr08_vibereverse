#ifndef SR08_DISPLAY_STATE_H
#define SR08_DISPLAY_STATE_H

#include <stddef.h>
#include <stdint.h>

struct sr08_display_control_state {
    uint8_t reserved_00_to_13[0x14];
    uint8_t control_flags;
};

_Static_assert(offsetof(struct sr08_display_control_state, control_flags) == 0x14,
               "display control flags must remain at offset 0x14");

struct sr08_display_mode_flags_state {
    uint8_t reserved_00_to_2f[0x30];
    uint8_t mode_flags;
};

_Static_assert(offsetof(struct sr08_display_mode_flags_state, mode_flags) == 0x30,
               "display mode flags must remain at offset 0x30");

struct sr08_display_mode_state {
    uint8_t reserved_00_to_0b[0x0c];
    uint8_t current_mode;
};

_Static_assert(offsetof(struct sr08_display_mode_state, current_mode) == 0x0c,
               "current display mode must remain at offset 0x0c");

struct sr08_display_state_word_2c {
    uint8_t reserved_00_to_2b[0x2c];
    uint32_t state_word_2c;
};

_Static_assert(offsetof(struct sr08_display_state_word_2c, state_word_2c) == 0x2c,
               "display state word must remain at offset 0x2c");

struct sr08_display_transition_state {
    uint8_t reserved_00_to_93[0x94];
    uint8_t state_flag;
};

_Static_assert(offsetof(struct sr08_display_transition_state, state_flag) == 0x94,
               "display transition flag must remain at offset 0x94");

struct sr08_display_output_state {
    uint8_t reserved_00_to_3f[0x40];
    uint8_t digits[5];
    uint8_t tag;
};

_Static_assert(offsetof(struct sr08_display_output_state, digits) == 0x40, "display digits must remain at offset 0x40");
_Static_assert(offsetof(struct sr08_display_output_state, tag) == 0x45, "display tag must remain at offset 0x45");

struct sr08_display_coordinate_state {
    uint8_t reserved_00_to_cd[0xce];
    int16_t x_coordinate;
    int16_t y_coordinate;
    int16_t heading_angle;
};

_Static_assert(offsetof(struct sr08_display_coordinate_state, x_coordinate) == 0xce,
               "display x coordinate must remain at offset 0xce");
_Static_assert(offsetof(struct sr08_display_coordinate_state, y_coordinate) == 0xd0,
               "display y coordinate must remain at offset 0xd0");
_Static_assert(offsetof(struct sr08_display_coordinate_state, heading_angle) == 0xd2,
               "display heading angle must remain at offset 0xd2");

#endif
