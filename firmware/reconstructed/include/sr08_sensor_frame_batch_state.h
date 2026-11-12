#ifndef SR08_SENSOR_FRAME_BATCH_STATE_H
#define SR08_SENSOR_FRAME_BATCH_STATE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_measurement_word_pair {
    uint32_t first;
    uint32_t second;
};

/* Active measurement context; only the fields read by converted routines are named. */
struct sr08_measurement_context {
    uint8_t reserved_000_to_001[0x2];
    uint8_t mode;
    uint8_t reserved_003_to_003[0x1];
    uint32_t value;
    uint8_t extra_byte_008;
    uint8_t byte_009;
    uint8_t byte_00a;
    uint8_t reserved_00b;
    uint32_t words_00c[10];
    uint32_t words_034[10];
    uint32_t words_05c[50];
    uint32_t words_124[50];
    uint8_t levels_1ec[100];
    uint32_t words_250[7];
    uint32_t words_26c[7];
    uint32_t words_288[8];
    uint32_t words_2a8[8];
    uint8_t reserved_2c8_to_2d3[0xc];
    uint32_t words_2d4[8];
    uint32_t words_2f4[8];
    uint8_t reserved_314_to_31f[0xc];
    uint32_t words_320[8];
    uint32_t reserved_340;
    uint32_t words_344[9];
    uint32_t reserved_368;
    uint32_t words_36c[5];
    uint32_t word_380;
    uint32_t word_384;
    uint32_t word_388;
    uint32_t word_38c;
    uint32_t word_390;
    uint32_t words_394[4];
    uint32_t words_3a4[25];
    uint32_t words_408[25];
    uint32_t words_46c[32];
    uint32_t words_4ec[32];
    uint16_t halves_56c[100];
    uint16_t halves_634[100];
    struct sr08_measurement_word_pair pairs_6fc[100];
    uint32_t words_a1c[150];
    uint16_t halves_c74[8];
    uint8_t reserved_c84_to_c85[0x2];
    uint8_t bytes_c86[2];
    uint8_t extra_byte_c88;
    uint8_t bytes_c89[3];
    uint32_t word_c8c;
    uint8_t byte_c90;
    uint8_t reserved_c91;
    uint16_t half_c92;
    uint8_t byte_c94;
    uint8_t status_byte_c95;
    uint8_t reserved_c96_to_c97[0x2];
    uint32_t word_c98;
    uint32_t word_c9c;
    uint8_t status_byte_ca0;
    uint8_t byte_ca1;
    uint8_t reserved_ca2_to_ca3[0x2];
    uint16_t history_ca4[11];
    uint16_t history_cba[11];
    uint16_t history_cd0[5];
    uint16_t history_cda[5];
    uint16_t history_ce4[5];
    uint8_t reserved_cee_to_cf7[0xa];
    uint16_t half_cf8[3];
    uint8_t reserved_cfe_to_d03[0x6];
    uint16_t history_d04[4];
    uint8_t reserved_d0c_to_d13[0x8];
    uint16_t history_d14[4];
    uint16_t history_d1c[6];
    uint16_t history_d28[4];
    uint8_t reserved_d30_to_d33[0x4];
    uint32_t word_d34;
    uint16_t half_d38[4];
    uint16_t window_d40;
    uint8_t reserved_d42_to_d43[0x2];
    uint32_t word_d44;
    uint16_t history_d48[8];
    uint16_t history_d58[8];
    uint32_t word_d68;
    uint8_t flags_d6c[4];
    uint8_t reserved_d70_to_d70[0x1];
    uint8_t flags_d71[6];
    uint8_t reserved_d77_to_d7f[0x9];
    uint32_t accumulators_d80[30];
};

SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, words_00c) == 0x00c, "words_00c at 0x00c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, levels_1ec) == 0x1ec, "levels_1ec at 0x1ec");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, words_2d4) == 0x2d4, "words_2d4 at 0x2d4");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, words_320) == 0x320, "words_320 at 0x320");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, words_36c) == 0x36c, "words_36c at 0x36c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, words_3a4) == 0x3a4, "words_3a4 at 0x3a4");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, halves_56c) == 0x56c, "halves_56c at 0x56c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, pairs_6fc) == 0x6fc, "pairs_6fc at 0x6fc");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, words_a1c) == 0xa1c, "words_a1c at 0xa1c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, halves_c74) == 0xc74, "halves_c74 at 0xc74");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, word_c8c) == 0xc8c, "word_c8c at 0xc8c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, word_c98) == 0xc98, "word_c98 at 0xc98");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, extra_byte_c88) == 0xc88, "extra byte at 0xc88");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, status_byte_c95) == 0xc95, "status byte at 0xc95");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, status_byte_ca0) == 0xca0, "status byte at 0xca0");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_ca4) == 0xca4, "history_ca4 at 0xca4");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_cba) == 0xcba, "history_cba at 0xcba");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_cd0) == 0xcd0, "history_cd0 at 0xcd0");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_cda) == 0xcda, "history_cda at 0xcda");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_ce4) == 0xce4, "history_ce4 at 0xce4");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, half_cf8) == 0xcf8, "half_cf8 at 0xcf8");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_d04) == 0xd04, "history_d04 at 0xd04");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_d14) == 0xd14, "history_d14 at 0xd14");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_d1c) == 0xd1c, "history_d1c at 0xd1c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_d28) == 0xd28, "history_d28 at 0xd28");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, word_d34) == 0xd34, "word_d34 at 0xd34");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, half_d38) == 0xd38, "half_d38 at 0xd38");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, window_d40) == 0xd40, "window_d40 at 0xd40");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, word_d44) == 0xd44, "word_d44 at 0xd44");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_d48) == 0xd48, "history_d48 at 0xd48");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, history_d58) == 0xd58, "history_d58 at 0xd58");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, word_d68) == 0xd68, "word_d68 at 0xd68");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, flags_d6c) == 0xd6c, "flags_d6c at 0xd6c");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, flags_d71) == 0xd71, "flags_d71 at 0xd71");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_context, accumulators_d80) == 0xd80, "accumulators_d80 at 0xd80");

/* Fixed state at 0x07fd037c (see ../data/V204_ram_symbols.json). */
struct sr08_sensor_frame_batch_state {
    uint8_t byte_00;
    uint8_t byte_01;
    uint8_t byte_02;
    uint8_t byte_03;
    uint32_t reserved_04;
    uint32_t word_08;
    uint8_t reserved_0c_to_1b[0x10];
    struct sr08_measurement_context *context;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_frame_batch_state, word_08) == 0x08, "word_08 at offset 8");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_frame_batch_state, context) == 0x1c,
                   "active measurement context pointer must remain at offset 0x1c");

extern struct sr08_sensor_frame_batch_state sensor_frame_batch_state;

#endif
