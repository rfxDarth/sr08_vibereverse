#include "firmware/reconstructed/include/sr08_custs1_data.h"
__attribute__((section(".v204.auto.07fcf9fc"))) const struct attm_desc_128 custs1_att_db[6] = {
            { .uuid = (const uint8_t *)((const uint8_t *)&custs1_uuid_storage + offsetof(struct sr08_uuid_storage, primary_service_uuid)), .uuid_size = 16, .perm = 0x00000001u, .max_length = 16, .length = 16, .value = (uint8_t *)custs1_service_uuid },
            { .uuid = (const uint8_t *)((const uint8_t *)&custs1_uuid_storage + offsetof(struct sr08_uuid_storage, characteristic_declaration_uuid)), .uuid_size = 2, .perm = 0x00000001u, .max_length = 0, .length = 0, .value = (uint8_t *)0x00000000u },
            { .uuid = (const uint8_t *)((const uint8_t *)&custs1_uuid_storage + offsetof(struct sr08_uuid_storage, custom_attribute_uuid_2)), .uuid_size = 16, .perm = 0x00020008u, .max_length = 20, .length = 0, .value = (uint8_t *)0x00000000u },
            { .uuid = (const uint8_t *)((const uint8_t *)&custs1_uuid_storage + offsetof(struct sr08_uuid_storage, characteristic_declaration_uuid)), .uuid_size = 2, .perm = 0x00000001u, .max_length = 0, .length = 0, .value = (uint8_t *)0x00000000u },
            { .uuid = (const uint8_t *)((const uint8_t *)&custs1_uuid_storage + offsetof(struct sr08_uuid_storage, custom_attribute_uuid_4)), .uuid_size = 16, .perm = 0x00000200u, .max_length = 32788, .length = 0, .value = (uint8_t *)0x00000000u },
            { .uuid = (const uint8_t *)((const uint8_t *)&custs1_uuid_storage + offsetof(struct sr08_uuid_storage, client_configuration_uuid)), .uuid_size = 2, .perm = 0x00020009u, .max_length = 2, .length = 0, .value = (uint8_t *)0x00000000u },
};
