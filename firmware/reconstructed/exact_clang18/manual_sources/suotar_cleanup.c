/* Clear a field of the request's attribute data, then write a one-byte zero
 * value to the attribute twelve handles past the stored one. A failed write
 * reports codes 200 and 8 to two debug registers and halts. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_attmdb.h"

struct attribute_validation_request {
    uint8_t reserved[16];
    uint8_t *data;
};

struct attribute_validation_data {
    uint8_t reserved_prefix[6];
    uint16_t handle;
    uint8_t reserved_middle[2];
    uint16_t field_to_clear;
};

_Static_assert(offsetof(struct attribute_validation_request, data) == 16,
               "attribute validation data pointer must remain at offset sixteen");
_Static_assert(offsetof(struct attribute_validation_data, handle) == 6, "attribute handle must remain at offset six");
_Static_assert(offsetof(struct attribute_validation_data, field_to_clear) == 10,
               "field cleared by validation must remain at offset ten");

#define VALIDATION_FAILURE_CODE_REGISTER (*(volatile uint16_t *)0x50003100u)
#define VALIDATION_FAILURE_DETAIL_REGISTER (*(volatile uint16_t *)0x50003302u)

void suotar_cleanup(struct attribute_validation_request *request) {
    struct attribute_validation_data *data = (struct attribute_validation_data *)request->data;
    uint8_t zero_value = 0;
    data->field_to_clear = 0;
    if (attmdb_att_set_value((uint16_t)(data->handle + 12), 1, 0, &zero_value) != 0) {
        VALIDATION_FAILURE_CODE_REGISTER = 200;
        VALIDATION_FAILURE_DETAIL_REGISTER = 8;
        for (;;) {
        }
    }
}
