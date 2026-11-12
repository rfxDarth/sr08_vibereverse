#ifndef SR08_EVENT_PACKET_H
#define SR08_EVENT_PACKET_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_event_packet {
    uint8_t header;
    union {
        struct {
            uint8_t first;
            uint8_t second;
            uint8_t third;
            uint8_t fourth;
            uint8_t fifth;
        } fields;
        struct {
            uint8_t low;
            uint8_t middle;
            uint8_t upper;
            uint8_t high;
            uint8_t mode;
        } mode_update;
    } payload;
    uint8_t scratch[14];
};

SR08_STATIC_ASSERT(offsetof(struct sr08_event_packet, payload) == 1, "event payload must begin at byte one");
SR08_STATIC_ASSERT(offsetof(struct sr08_event_packet, scratch) == 6, "event scratch area must begin at byte six");
SR08_STATIC_ASSERT(sizeof(struct sr08_event_packet) == 20, "event packet must remain twenty bytes");

#endif
