#ifndef SR08_ATTMDB_H
#define SR08_ATTMDB_H

#include <stdint.h>

struct sr08_gatt_service_descriptor;

/* Register the allocated service descriptor with the ATT database. */
extern uint8_t attmdb_add_service(struct sr08_gatt_service_descriptor *service);

/* Set an attribute value: handle, byte length, value offset, and data pointer. */
extern int32_t attmdb_att_set_value(uint32_t handle, uint32_t length, uint32_t value_offset, const void *value);

#endif
