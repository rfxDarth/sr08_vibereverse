/* Show display state word 000b in the display digits. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_helpers.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

/* The display output fields are in the merged block at 0x07fd5650. */
#define display_output ((struct sr08_display_output_state *)(void *)&merged_globals_5650)

void set_shared_halfword_40_to_000b(void)
{
    *(uint16_t *)(void *)display_output->digits = SR08_DISPLAY_STATE_WORD_000b;
}
