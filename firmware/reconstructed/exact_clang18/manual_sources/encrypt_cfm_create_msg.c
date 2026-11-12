/* Return the cached message buffer for an index, allocating and caching it on first use. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_message.h"

enum { CACHED_MESSAGE_ID = 0xe18, CACHED_MESSAGE_SOURCE_TASK = 4, CACHED_MESSAGE_SIZE = 18 };

/* Fixed RAM address in ../../data/V204_ram_symbols.json. */
extern uint8_t *gapc_encrypt_cfm[];

uint8_t *encrypt_cfm_create_msg(uint32_t index) {
    uint8_t *buffer = gapc_encrypt_cfm[index];
    if (buffer == 0) {
        uint8_t **slot = &gapc_encrypt_cfm[index];
        buffer = ke_msg_alloc(CACHED_MESSAGE_ID, (index << 8) + 10, CACHED_MESSAGE_SOURCE_TASK, CACHED_MESSAGE_SIZE);
        *slot = buffer;
    }
    return buffer;
}
