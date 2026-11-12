/* Load the device-name record from flash 0x64000 and return its name and
 * length when it is valid (marker '+', 1-17 bytes, matching the string
 * length); otherwise mark the record 0x84 and return the default name "SR08". */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_name.h"
#include "firmware/reconstructed/include/sr08_flash_operation.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

uint32_t nul_terminated_string_length(const uint8_t *text);

enum { DEVICE_NAME_FLASH_ADDRESS = 0x64000, DEVICE_NAME_VALID = '+', DEVICE_NAME_INVALID = 0x84 };

__attribute__((used, section(".text.validate_cached_text_payload_return_install_at_8fb0"))) const uint8_t *
validate_cached_text_payload_return_install_at_8fb0(uint8_t *length) {
    /* Retain the flash record subobject as a pointer across the read call.
     * These annotations return their inputs unchanged and emit no code.
     */
    struct sr08_device_name_record *record = (struct sr08_device_name_record *)__builtin_annotation(
        (uintptr_t)&merged_globals_574c.device_name, "flash name record");
    const uint8_t *name;
    uint8_t name_length;

    *length = 0;
    perform_flash_memory_operation((uint8_t *)record, DEVICE_NAME_FLASH_ADDRESS, sizeof(*record), SR08_FLASH_READ);
    if (merged_globals_574c.device_name.marker == DEVICE_NAME_VALID && (name_length = record->length) != 0 &&
        __builtin_annotation((uint32_t)name_length, "nonzero name length") <= 17 &&
        nul_terminated_string_length(merged_globals_574c.device_name.name) == name_length) {
        name = merged_globals_574c.device_name.name;
    } else {
        merged_globals_574c.device_name.marker = DEVICE_NAME_INVALID;
        name = (const uint8_t *)"SR08";
        *length = 4;
        return name;
    }
    *length = name_length;
    return name;
}
