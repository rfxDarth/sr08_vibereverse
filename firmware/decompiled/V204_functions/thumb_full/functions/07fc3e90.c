/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

#include "firmware/reconstructed/include/sr08_flash_operation.h"


void erase_flash_range(uint32_t flash_address, uint32_t byte_count)

{
  perform_flash_memory_operation(0, flash_address, byte_count,
                                 SR08_FLASH_ERASE);
  return;
}

