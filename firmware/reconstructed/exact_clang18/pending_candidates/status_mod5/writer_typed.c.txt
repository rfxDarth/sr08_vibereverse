#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

__attribute__((used, section(".text.write_shared_state_byte_45_and_word_40"))) void
write_shared_state_byte_45_and_word_40(void) {
    volatile uint8_t *base = (volatile uint8_t *)&merged_globals_56d0;
    base[0x45] = 0x10;
    *(volatile uint32_t *)(base + 0x40) = 0x5d771f6b;
}
