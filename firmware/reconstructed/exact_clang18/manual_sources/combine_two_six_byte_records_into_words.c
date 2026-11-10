/* Read two six-byte records and combine each byte triplet into a word. */
#include <stdint.h>

extern void read_device_bytes_into_buffer(uint32_t, volatile uint8_t *, uint32_t);

static inline uint32_t pack_three_little_endian_bytes(const volatile uint8_t *bytes) {
    return (uint32_t)bytes[0] + ((uint32_t)bytes[1] << 8) + ((uint32_t)bytes[2] << 16);
}

__attribute__((used, section(".text.combine_two_six_byte_records_into_words"))) void
combine_two_six_byte_records_into_words(uint32_t *output) {
    volatile uint8_t first_record_storage[6];
    volatile uint8_t frame_padding[2]; /* Retains the two-byte gap in V204's stack frame. */
    volatile uint8_t second_record_storage[6];
    /* Pin the helper ABI: buffers in r6/r5, count in r7, arguments in r0-r2. */
    register volatile uint8_t *first_record_bytes __asm__("r6") = first_record_storage;
    register volatile uint8_t *second_record_bytes __asm__("r5");
    register uint32_t record_byte_count __asm__("r7") = 6;
    register uint32_t device_source_offset __asm__("r0");
    register volatile uint8_t *read_destination __asm__("r1");
    register uint32_t read_length __asm__("r2");

    device_source_offset = 2;
    read_destination = first_record_bytes;
    read_length = record_byte_count;
    read_device_bytes_into_buffer(device_source_offset, read_destination, read_length);

    device_source_offset = 8;
    second_record_bytes = second_record_storage;
    read_destination = second_record_bytes;
    read_length = record_byte_count;
    read_device_bytes_into_buffer(device_source_offset, read_destination, read_length);

    output[0] = pack_three_little_endian_bytes(first_record_bytes);
    output[1] = pack_three_little_endian_bytes(first_record_bytes + 3);
    output[2] = pack_three_little_endian_bytes(second_record_bytes);
    output[3] = pack_three_little_endian_bytes(second_record_bytes + 3);
}
