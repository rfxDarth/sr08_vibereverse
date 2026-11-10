/* Build and publish the compact sensor request record for one slot. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_indexed_sensor_state.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

struct compact_sensor_request_record {
    uint8_t type;
    uint8_t command;
};

enum {
    COMPACT_SENSOR_REQUEST_TYPE = 1,
    COMPACT_SENSOR_REQUEST_COMMAND = 0x13,
};

_Static_assert(offsetof(struct compact_sensor_request_record, command) == 1,
               "compact sensor request command must remain at byte one");
_Static_assert(sizeof(struct compact_sensor_request_record) == 2, "compact sensor request must remain two bytes");

__attribute__((used, section(".text.build_and_publish_compact_sensor_request_record"))) void
build_and_publish_compact_sensor_request_record(uint32_t index) {
    uint32_t message_id;
    uint32_t destination;
    uint32_t source;
    uint32_t payload_size;
    volatile struct compact_sensor_request_record *request;
    volatile struct sr08_indexed_sensor_state_view *slot;

    __asm__ volatile("lsls %[destination], r0, #8\n\t"
                     "adds %[destination], #10\n\t"
                     "ldr %[message_id], [pc, #36]\n\t"
                     "movs %[source], #4\n\t"
                     "movs %[payload_size], #2"
                     : [message_id] "=r"(message_id), [destination] "=r"(destination), [source] "=r"(source),
                       [payload_size] "=r"(payload_size));
    request = ke_msg_alloc(message_id, destination, source, payload_size);
    __asm__ volatile("movs r1, #%c[slot_stride]\n\t"
                     "muls r1, %[index]\n\t"
                     "ldr r2, [pc, #424]\n\t"
                     "adds %[slot], r2, r1"
                     : [slot] "=r"(slot)
                     : [index] "r"(index), [slot_stride] "i"(SR08_INDEXED_SENSOR_STATE_INDEX_STRIDE)
                     : "r2", "cc", "memory");
    slot->measurement_available = 0;
    request->command = COMPACT_SENSOR_REQUEST_COMMAND;
    request->type = COMPACT_SENSOR_REQUEST_TYPE;
    ke_msg_send((void *)request);
}
