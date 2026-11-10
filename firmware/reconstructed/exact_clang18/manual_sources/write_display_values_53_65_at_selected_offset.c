/* Write the two display values selected by the low two bits of config + 0x30. */
#include <stdint.h>

enum {
    DISPLAY_SELECTOR_MASK = 0x03,
    DISPLAY_PAIR_OFFSET = 0x40,
    DISPLAY_FIRST_VALUE = 0x53,
    DISPLAY_SECOND_VALUE_OFFSET = 1,
    DISPLAY_SECOND_VALUE = 0x65,
};

__attribute__((used, section(".text.write_display_values_53_65_at_selected_offset"))) void
write_display_values_53_65_at_selected_offset(void) {
    uint32_t config_offset;
    uint32_t selected_slot;
    const volatile uint8_t *config;

    /* Keep these PC-relative loads on V204's shared literal-pool entries. */
    __asm__ volatile("movs %[config_offset], #48\n\t"
                     "ldr %[config], [pc, #920]"
                     : [config_offset] "=r"(config_offset), [config] "=r"(config));
    selected_slot = config[config_offset] & DISPLAY_SELECTOR_MASK;

    volatile uint8_t *display_base;
    __asm__ volatile("ldr %[display_base], [pc, #796]" : [display_base] "=r"(display_base));
    display_base += selected_slot;
    display_base[DISPLAY_PAIR_OFFSET] = DISPLAY_FIRST_VALUE;
    __asm__ volatile("adds %0, %0, #%c[offset]" : "+r"(display_base) : [offset] "i"(DISPLAY_PAIR_OFFSET) : "cc");
    display_base[DISPLAY_SECOND_VALUE_OFFSET] = DISPLAY_SECOND_VALUE;
}
