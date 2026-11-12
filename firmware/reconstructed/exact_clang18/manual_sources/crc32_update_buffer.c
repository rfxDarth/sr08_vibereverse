/* Update a CRC-32 over `length` bytes (reflected polynomial 0xedb88320,
 * complemented in and out), eight bytes per iteration and then the tail.
 * A null buffer returns zero. */
#include <stdint.h>

extern uint32_t crc32_update_one_byte(uint32_t crc_state);

#define CRC32_STEP(crc, byte) ((crc) = crc32_update_one_byte(((crc) ^ (byte)) & 0xffu) ^ ((crc) >> 8))

uint32_t crc32_update_buffer(uint32_t crc, const uint8_t *buffer, int32_t length) {
    int32_t index;
    if (buffer == 0)
        return 0;
    crc = ~crc;
    while (length >= 8) {
        CRC32_STEP(crc, buffer[0]);
        CRC32_STEP(crc, buffer[1]);
        CRC32_STEP(crc, buffer[2]);
        CRC32_STEP(crc, buffer[3]);
        CRC32_STEP(crc, buffer[4]);
        CRC32_STEP(crc, buffer[5]);
        CRC32_STEP(crc, buffer[6]);
        CRC32_STEP(crc, buffer[7]);
        buffer += 8;
        length -= 8;
    }
    if (length != 0) {
        index = 0;
        do
            CRC32_STEP(crc, buffer[index]);
        while (++index != length);
    }
    return ~crc;
}
