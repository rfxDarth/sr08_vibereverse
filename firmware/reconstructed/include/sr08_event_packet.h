#ifndef SR08_EVENT_PACKET_H
#define SR08_EVENT_PACKET_H

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

_Static_assert(offsetof(struct sr08_event_packet, payload) == 1, "event payload must begin at byte one");
_Static_assert(offsetof(struct sr08_event_packet, scratch) == 6, "event scratch area must begin at byte six");
_Static_assert(sizeof(struct sr08_event_packet) == 20, "event packet must remain twenty bytes");

#endif
