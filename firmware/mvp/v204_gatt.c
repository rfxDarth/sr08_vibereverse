#include "user_custs_config.h"

#include "app_customs.h"
#include "custs1.h"
#include "custs1_task.h"
#include "att.h"
#include "attm.h"
#include "ke_msg.h"
#include "prf.h"
#include "custom_common.h"
#include "v204_gatt.h"
#include <string.h>

enum {
    V204_GATT_SERVICE_IDX = 0,
    V204_GATT_TX_DECL_IDX = 1,
    V204_GATT_RX_DECL_IDX = 3,
    V204_GATT_ATTRIBUTE_COUNT = 6,
};

static const uint8_t uuid_primary_service[] = {0x00, 0x28};
static const uint8_t uuid_characteristic[] = {0x03, 0x28};
static const uint8_t uuid_client_config[] = {0x02, 0x29};

static uint8_t uuid_jring_service[ATT_UUID_128_LEN] = {
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80,
    0x00, 0x10, 0x00, 0x00, 0xff, 0x56, 0x00, 0x00,
};
static const uint8_t uuid_jring_tx[ATT_UUID_128_LEN] = {
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80,
    0x00, 0x10, 0x00, 0x00, 0xf3, 0x33, 0x00, 0x00,
};
static const uint8_t uuid_jring_rx[ATT_UUID_128_LEN] = {
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80,
    0x00, 0x10, 0x00, 0x00, 0xf4, 0x33, 0x00, 0x00,
};
static uint8_t cccd_value[2];

const uint8_t custs1_services[] = {V204_GATT_SERVICE_IDX,
                                   V204_GATT_ATTRIBUTE_COUNT};
const uint8_t custs1_services_size = 1;
const uint16_t custs1_att_max_nb = V204_GATT_ATTRIBUTE_COUNT;

struct attm_desc_128 custs1_att_db[V204_GATT_ATTRIBUTE_COUNT] = {
    [V204_GATT_SERVICE_IDX] = {
        .uuid = uuid_primary_service,
        .uuid_size = ATT_UUID_128_LEN,
        .perm = 0,
        .max_length = ATT_UUID_128_LEN,
        .length = ATT_UUID_128_LEN,
        .value = uuid_jring_service,
    },
    [V204_GATT_TX_DECL_IDX] = {
        .uuid = uuid_characteristic,
        .uuid_size = ATT_UUID_16_LEN,
        .perm = PERM(RD, ENABLE),
        .max_length = 2,
        .length = 0,
        .value = NULL,
    },
    [V204_GATT_TX_VALUE_IDX] = {
        .uuid = uuid_jring_tx,
        .uuid_size = ATT_UUID_128_LEN,
        /* JRing uses Android's default write-with-response path. */
        .perm = PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE),
        .max_length = 20,
        .length = 0,
        .value = NULL,
    },
    [V204_GATT_RX_DECL_IDX] = {
        .uuid = uuid_characteristic,
        .uuid_size = ATT_UUID_16_LEN,
        .perm = PERM(RD, ENABLE),
        .max_length = V204_GATT_RX_VALUE_IDX,
        .length = 0,
        .value = NULL,
    },
    [V204_GATT_RX_VALUE_IDX] = {
        .uuid = uuid_jring_rx,
        .uuid_size = ATT_UUID_128_LEN,
        .perm = PERM(NTF, ENABLE),
        .max_length = 20,
        .length = 0,
        .value = NULL,
    },
    [V204_GATT_RX_CCC_IDX] = {
        .uuid = uuid_client_config,
        .uuid_size = ATT_UUID_16_LEN,
        .perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) |
                PERM(WRITE_REQ, ENABLE),
        .max_length = sizeof(cccd_value),
        .length = sizeof(cccd_value),
        .value = cccd_value,
    },
};

const struct cust_prf_func_callbacks cust_prf_funcs[] = {
    {
        .task_id = TASK_ID_CUSTS1,
        .att_db = custs1_att_db,
        .max_nb_att = V204_GATT_ATTRIBUTE_COUNT,
        .db_create_func = app_custs1_create_db,
        .enable_func = NULL,
        .init_func = app_custs1_init,
        .value_wr_validation_func = app_custs1_val_wr_validate,
    },
    {.task_id = TASK_ID_INVALID},
};

uint8_t app_custs1_val_wr_validate(uint16_t att_idx, uint16_t offset,
                                   uint16_t len, uint8_t *value)
{
    (void)value;
    if (att_idx != V204_GATT_TX_VALUE_IDX || offset != 0 || len != 20)
        return ATT_ERR_INVALID_ATTRIBUTE_VAL_LEN;
    return ATT_ERR_NO_ERROR;
}

bool v204_gatt_notify(uint8_t conidx, const uint8_t *data, uint16_t length)
{
    struct custs1_env_tag *env = PRF_ENV_GET(CUSTS1, custs1);
    if (!env || !data || length == 0 || length > 20)
        return false;

    struct custs1_val_ntf_ind_req *req = KE_MSG_ALLOC_DYN(
        CUSTS1_VAL_NTF_REQ,
        prf_src_task_get(&env->prf_env, conidx),
        TASK_APP,
        custs1_val_ntf_ind_req,
        length);
    req->conidx = conidx;
    req->notification = true;
    /* CUSTS1_VAL_NTF_REQ.handle is an attribute index. The profile adds its
     * service start handle when it builds the ATT notification command. */
    req->handle = V204_GATT_RX_VALUE_IDX;
    req->length = length;
    memcpy(req->value, data, length);
    KE_MSG_SEND(req);
    return true;
}
