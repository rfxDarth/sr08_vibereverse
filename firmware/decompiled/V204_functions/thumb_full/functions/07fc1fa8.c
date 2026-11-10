/* Append at most the remaining buffer capacity and keep a trailing NUL. */
#include <stdint.h>

void append_bounded_bytes_and_terminate(uint8_t **cursor,
                                        uint8_t *buffer_base,
                                        const uint8_t *source,
                                        uint32_t requested_count)
{
    uint8_t *destination = *cursor;
    uint32_t remaining = (uint32_t)(buffer_base - destination + 0x5f);
    if (requested_count <= remaining)
        remaining = requested_count;

    while (remaining != 0) {
        *destination = *source;
        destination = *cursor + 1;
        *cursor = destination;
        ++source;
        --remaining;
    }
    *destination = 0;
}

