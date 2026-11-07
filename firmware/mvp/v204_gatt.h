#ifndef V204_GATT_H
#define V204_GATT_H

#include <stdbool.h>
#include <stdint.h>

#define V204_GATT_TX_VALUE_IDX 2u
#define V204_GATT_RX_VALUE_IDX 4u
#define V204_GATT_RX_CCC_IDX   5u

bool v204_gatt_notify(uint8_t conidx, const uint8_t *data, uint16_t length);

#endif
