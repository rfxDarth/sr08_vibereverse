#ifndef SR08_QUEUE_RECORD_H
#define SR08_QUEUE_RECORD_H

#include <stddef.h>
#include <stdint.h>

enum {
    SR08_THREE_BYTE_REQUEST_RECORD_SIZE = 3,
    SR08_TYPED_OPERATION_RECORD_TYPE = 6,
};

union sr08_queue_record {
    struct {
        uint8_t first;
        uint8_t second;
        uint8_t third;
        uint8_t reserved[17];
    } three_byte_request;
    struct {
        uint8_t type;
        uint8_t value;
        uint8_t reserved[18];
    } typed_operation;
    struct {
        uint32_t first;
        uint32_t second;
        uint16_t marker;
        uint8_t reserved[10];
    } sensor_configuration;
};

_Static_assert(offsetof(union sr08_queue_record, three_byte_request.second) == 1,
               "three-byte request fields must remain contiguous");
_Static_assert(offsetof(union sr08_queue_record, typed_operation.value) == 1,
               "typed operation value must remain at byte one");
_Static_assert(offsetof(union sr08_queue_record, sensor_configuration.marker) == 8,
               "sensor configuration marker must remain at byte eight");
_Static_assert(offsetof(union sr08_queue_record, sensor_configuration.reserved) == 10,
               "sensor configuration scratch area must remain at byte ten");
_Static_assert(sizeof(union sr08_queue_record) == 20, "queue records must remain twenty bytes");

#endif
