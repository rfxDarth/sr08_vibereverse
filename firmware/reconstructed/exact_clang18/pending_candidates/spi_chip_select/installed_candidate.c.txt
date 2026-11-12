/* Renesas spi_transaction: assert CS, transfer one word, then release CS.
 * SR08 selects P0_3 (mask 8) or P0_0 (mask 1) with the shared byte.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_flash_transfer.h"

static __attribute__((always_inline)) inline uint16_t
chip_select_mask(uint8_t select_pin_3, uint16_t pin_3, uint16_t pin_0)
{
    if (select_pin_3)
        return pin_3;
    /* Keep a real conditional block through optimization; no ARM instruction. */
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    return pin_0;
}

uint32_t update_mode_dependent_output_state_during_flash_transfer(uint32_t value)
{
    /* Read the stored byte, including any noncanonical nonzero bool value. */
    const uint8_t *selection =
        (const uint8_t *)&merged_globals_5650.spi_flash_cs_select;
    uint8_t selected = *selection;
    uint16_t pin_3 = 8;
    /* Preserve the original shared constant lifetime/register assignment. */
    uint16_t pin_0 = __builtin_annotation(1, "pin 0 mask");

    *(volatile uint16_t *)0x50003004u =
        chip_select_mask(selected, pin_3, pin_0);
    uint32_t result = spi_access(value);
    *(volatile uint16_t *)0x50003002u =
        chip_select_mask(*selection, pin_3, pin_0);
    return result;
}
