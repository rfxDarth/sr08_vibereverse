/* Sample the BLE base-time counter and queue a 20-byte 0x0c profile record.
 * BLE_SAMPLECLK_REG requests a hardware clock sample; it is not a software lock.
 * Register addresses are from our Renesas SDK 6.0.22 da14585_586.h.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"
#include <stddef.h>

#define BLE_SAMPLECLK (*(volatile uint32_t *)0x400000fcu)
#define BLE_BASETIMECNT (*(volatile uint32_t *)0x4000001cu)
struct profile_command_record {
    uint8_t command;
    uint8_t payload[15];
    uint32_t crc;
};
SR08_STATIC_ASSERT(sizeof(struct profile_command_record) == 20, "profile record size");
SR08_STATIC_ASSERT(offsetof(struct profile_command_record, payload) == 1, "profile payload offset");
SR08_STATIC_ASSERT(offsetof(struct profile_command_record, crc) == 16, "profile CRC offset");

extern void copy_six_profile_bytes_from_offsets_two_to_seven(uint8_t *destination);
extern uint32_t crc32_update_buffer(uint32_t crc, const uint8_t *buffer, int32_t length);
extern void search_circular_record_queue_and_compact_if_needed(const void *record);

__attribute__((used, section(".text.build_sensor_command_packet_acquiring_shared_at_519c"))) void
build_sensor_command_packet_acquiring_shared_at_519c(void) {
    struct profile_command_record record;
    volatile uint8_t *bytes = (volatile uint8_t *)&record;
    BLE_SAMPLECLK = 1;
    bytes[0] = 0x0c;
    /* Keep the payload address independent of the record base. The annotation
     * returns its address unchanged and emits no runtime operation.
     */
    volatile uint8_t *payload =
        (volatile uint8_t *)__builtin_annotation((uintptr_t)(bytes + 1), "profile command payload");
    while (BLE_SAMPLECLK != 0) {
    }
    uint32_t time = BLE_BASETIMECNT;
    copy_six_profile_bytes_from_offsets_two_to_seven((uint8_t *)&record + 3);
    payload[13] = time >> 8;
    payload[12] = time;
    payload[14] = time >> 16;
    payload[11] = 0;
    payload[10] = 23;
    payload[9] = 0;
    payload[8] = 1;
    payload[1] = 0;
    payload[0] = 0xcc;
    record.crc = crc32_update_buffer(0x4a59af55u, (const uint8_t *)payload, 15);
    search_circular_record_queue_and_compact_if_needed(&record);
}
