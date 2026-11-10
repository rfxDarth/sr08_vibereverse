#ifndef SR08_GATT_SERVICE_DESCRIPTOR_H
#define SR08_GATT_SERVICE_DESCRIPTOR_H

#include <stddef.h>
#include <stdint.h>

/*
 * DA14585 RWBLE 8 GATT service descriptor layout. Field offsets are confirmed
 * by the writes in register_custom_gatt_service_and_initialize_state and
 * match gattm_svc_desc / gattm_att_desc in the checked-in SDK's gattm_task.h.
 */
struct sr08_gatt_attribute_descriptor {
    uint8_t uuid[16];
    uint32_t permissions;
    uint16_t maximum_length;
    uint16_t reserved;
};

struct sr08_gatt_service_descriptor {
    uint16_t start_handle;
    uint16_t task_id;
    uint8_t permissions;
    uint8_t attribute_count;
    uint8_t service_uuid[16];
    uint16_t alignment_padding;
    struct sr08_gatt_attribute_descriptor attributes[19];
};

_Static_assert(offsetof(struct sr08_gatt_attribute_descriptor, permissions) == 16,
               "GATT attribute permissions must remain at offset 16");
_Static_assert(offsetof(struct sr08_gatt_attribute_descriptor, maximum_length) == 20,
               "GATT attribute maximum length must remain at offset 20");
_Static_assert(sizeof(struct sr08_gatt_attribute_descriptor) == 24, "GATT attribute descriptor must remain 24 bytes");
_Static_assert(offsetof(struct sr08_gatt_service_descriptor, service_uuid) == 6,
               "GATT service UUID must remain at offset 6");
_Static_assert(offsetof(struct sr08_gatt_service_descriptor, attributes) == 24,
               "GATT attributes must begin at offset 24");
_Static_assert(sizeof(struct sr08_gatt_service_descriptor) == 0x1e0,
               "GATT service descriptor must match the 0x1e0-byte allocation");

#endif
