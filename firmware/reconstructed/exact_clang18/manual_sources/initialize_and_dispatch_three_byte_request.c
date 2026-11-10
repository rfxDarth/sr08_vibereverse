/* Initialize and dispatch a three-byte request packet. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_ring_buffer.h"
#include "firmware/reconstructed/include/sr08_queue_record.h"

__attribute__((used, section(".text.initialize_and_dispatch_three_byte_request"))) void
initialize_and_dispatch_three_byte_request(uint8_t first, uint8_t second, uint8_t third) {
    union sr08_queue_record packet_buffer;

    __aeabi_memclr(packet_buffer.three_byte_request.reserved, sizeof(packet_buffer.three_byte_request.reserved));
    packet_buffer.three_byte_request.first = first;
    packet_buffer.three_byte_request.second = second;
    packet_buffer.three_byte_request.third = third;
    search_circular_record_queue_insert_missing_at_2f2c(&packet_buffer, SR08_THREE_BYTE_REQUEST_RECORD_SIZE);
}
