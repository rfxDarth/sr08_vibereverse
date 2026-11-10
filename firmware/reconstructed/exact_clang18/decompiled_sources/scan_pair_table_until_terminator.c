/* Scan at most 254 pairs, stopping on the 0xff/0xff terminator. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_commands.h"

enum {
    RADIO_PAIR_TABLE_MAX_ENTRIES = 254,
    RADIO_PAIR_TABLE_TERMINATOR_BYTE = 0xff,
};

__attribute__((used, section(".text.scan_pair_table_until_terminator"))) void
scan_pair_table_until_terminator(const struct sr08_radio_command_pair *pairs) {
    const struct sr08_radio_command_pair *pair_cursor = pairs;
    int pairs_remaining = RADIO_PAIR_TABLE_MAX_ENTRIES;

    for (;;) {
        /* V204 tests the counter at the loop head, including before the first read. */
        if (pairs_remaining == 0)
            goto done;

        uint32_t second = pair_cursor->second;
        uint32_t first = pair_cursor->first;
        /* Both bytes must be 0xff for their bitwise AND to equal 0xff. */
        if ((first & second) == RADIO_PAIR_TABLE_TERMINATOR_BYTE)
            goto done;

        /* The callee consumes this pair as two promoted byte values. */
        process_two_packed_input_bytes_update_at_8ad8(first, second);
        --pairs_remaining;
        ++pair_cursor;
    }

done:;
}
