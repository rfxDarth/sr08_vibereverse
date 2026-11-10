/* Append at most the remaining buffer capacity and keep a trailing NUL. */
#include <stdint.h>

#define SERIALIZED_BUFFER_MAX_CONTENT_BYTES 95

void append_bounded_bytes_and_terminate(uint8_t **cursor, uint8_t *buffer_start, const uint8_t *source,
                                        uint32_t requested_count) {
    uint8_t *destination_cursor = *cursor;
    uint32_t remaining_capacity = (uint32_t)(buffer_start - destination_cursor + SERIALIZED_BUFFER_MAX_CONTENT_BYTES);
    if (requested_count <= remaining_capacity)
        remaining_capacity = requested_count;

    while (remaining_capacity != 0) {
        *destination_cursor = *source;
        destination_cursor = *cursor + 1;
        *cursor = destination_cursor;
        ++source;
        --remaining_capacity;
    }
    *destination_cursor = 0;
}
