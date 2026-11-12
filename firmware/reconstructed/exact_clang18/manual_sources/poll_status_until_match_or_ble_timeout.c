#include <stdint.h>
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"

/* Status match exits immediately; elapsed time is an upper limit.
 * Volatile local timestamps preserve V204's sampling/read order.
 *
 * Local SDK da14585_586.h: BLE_SAMPLECLK_REG / BLE_BASETIMECNT_REG.
 * The 0x05000000 wrapping correction is preserved verbatim from V204; do not
 * infer a time unit or replace it with a conventional modulo-counter mask.
 */
#define BLE_SAMPLECLK (*(volatile uint32_t *)0x400000fcu)
#define BLE_BASETIMECNT (*(volatile uint32_t *)0x4000001cu)

__attribute__((used,section(".text.poll_status_until_match_or_ble_timeout")))
void poll_status_until_match_or_ble_timeout(uint32_t status_address,
    uint32_t mask, uint32_t clear_instead_of_set, uint32_t minimum_elapsed)
{
    volatile uint32_t elapsed = 0;
    BLE_SAMPLECLK = 1;
    while (BLE_SAMPLECLK != 0) {}
    volatile uint32_t start = BLE_BASETIMECNT;
    for (;;) {
        uint32_t bits = *(volatile uint16_t *)status_address & mask;
        uint32_t clear = bits == 0;
        if (clear_instead_of_set != 0) bits = clear;
        if (bits != 0) break;
        BLE_SAMPLECLK = 1;
        while (BLE_SAMPLECLK != 0) {}
        volatile uint32_t current = BLE_BASETIMECNT;
        uint32_t now = current;
        uint32_t reference = start;
        if (now < reference) now += 0x05000000u;
        elapsed = now - reference;
        if (elapsed >= minimum_elapsed) break;
    }
}
