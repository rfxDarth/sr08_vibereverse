#ifndef SR08_DEVICE_NAME_H
#define SR08_DEVICE_NAME_H

#include <stdint.h>

/* Read the cached flash name, or install the fallback, and report its length.
 * Only r0 carries an input; V204's other argument registers are unused.
 */
const uint8_t *validate_cached_text_payload_return_install_at_8fb0(uint8_t *output_length);

#endif
