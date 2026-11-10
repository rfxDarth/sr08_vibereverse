/* Scan ten registration slots, store the item in the first empty slot, and
 * notify the consumer with its one-based slot number. Return zero if all slots
 * are occupied.
 *
 * C expresses the scan, pointer/counter updates, and found/full paths. Fixed
 * register bindings and the zero-byte ordering barrier preserve V204's
 * instruction sequence; small inline adapters retain its fixed table load
 * and byte-sized result value.
 */
#include <stdint.h>

extern void select_fast_rom_write_allocate_initialize_at_575c(uint32_t slot, uint32_t value);

uint32_t store_item_in_first_free_registration_slot(uint32_t value, uint32_t item) {
    uint32_t index;
    register uint32_t selected_slot __asm__("r4") = 0;
    register volatile uint32_t *slot __asm__("r0");
    uint32_t existing_item;
    register uint32_t result __asm__("r0");

    index = selected_slot;
    /* Load the fixed table pointer from V204's existing literal pool. */
    __asm__ volatile("ldr r0, [pc, #104]" : "=r"(slot));

scan_slots:
    /* Keep the zero-based bound check at the top of the loop. */
    if (index == 10)
        goto done;
    existing_item = *slot;
    if (existing_item == 0)
        goto found_slot;

    ++slot;
    /* Preserve V204's pointer-before-index update order. */
    __asm__ volatile("" : : "r"(slot), "r"(index) : "memory");
    ++index;
    goto scan_slots;

found_slot:
    *slot = item;
    selected_slot = index + 1;

    uint32_t slot_argument = (uint8_t)selected_slot;
    select_fast_rom_write_allocate_initialize_at_575c(slot_argument, value);

done:
    __asm__ volatile("uxtb r0, r4" : "=r"(result) : "r"(selected_slot) : "cc");
    return result;
}
