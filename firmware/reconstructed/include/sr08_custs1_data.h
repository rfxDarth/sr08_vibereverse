#ifndef SR08_CUSTS1_DATA_H
#define SR08_CUSTS1_DATA_H
#include <stdint.h>
#include <stddef.h>
#include "firmware/reconstructed/include/sr08_sdk_attm.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"
struct sr08_uuid_storage {
    uint16_t primary_service_uuid, uuid_alignment_halfword;
    uint8_t custom_service_uuid[16];
    uint16_t characteristic_declaration_uuid;
    uint8_t custom_attribute_uuid_2[16], custom_attribute_uuid_4[16];
    uint16_t client_configuration_uuid;
    uint8_t bytes_after_custom_uuids[32];
} __attribute__((packed));
extern const struct sr08_uuid_storage custs1_uuid_storage;
/* Fixed linker alias into the storage object, visible independently to LTO. */
extern const unsigned char custs1_service_uuid[16];
SR08_STATIC_ASSERT(sizeof(struct sr08_uuid_storage) == 88, "UUID storage size");
SR08_STATIC_ASSERT(offsetof(struct sr08_uuid_storage, custom_service_uuid) == 4, "service UUID offset");
#endif
