/* SUOTA receiver (SUOTAR) definitions from the Dialog/Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/suota/suotar/api/suotar.h and
 * suotar_task.h, and gatt.h (Copyright (C) Dialog Semiconductor; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 *
 * SUOTA_VERSION is the SDK default, SUOTA_VERSION_1_3 (V204 has the version,
 * patch-data size and MTU characteristics). Static handlers whose
 * names repeat across profiles carry a "suotar_" prefix.
 */
#ifndef SR08_SDK_SUOTAR_H
#define SR08_SDK_SUOTAR_H

#include "firmware/reconstructed/include/sr08_sdk_kernel.h"

#define SUOTA_VERSION_1_0 10
#define SUOTA_VERSION_1_3 13
#define SUOTA_VERSION SUOTA_VERSION_1_3

#define SUOTAR_IDX_MAX (1)

enum {
    SUOTA_IDX_SVC,
    SUOTA_IDX_PATCH_MEM_DEV_CHAR,
    SUOTA_IDX_PATCH_MEM_DEV_VAL,
    SUOTA_IDX_GPIO_MAP_CHAR,
    SUOTA_IDX_GPIO_MAP_VAL,
    SUOTA_IDX_PATCH_MEM_INFO_CHAR,
    SUOTA_IDX_PATCH_MEM_INFO_VAL,
    SUOTA_IDX_PATCH_LEN_CHAR,
    SUOTA_IDX_PATCH_LEN_VAL,
    SUOTA_IDX_PATCH_DATA_CHAR,
    SUOTA_IDX_PATCH_DATA_VAL,
    SUOTA_IDX_PATCH_STATUS_CHAR,
    SUOTA_IDX_PATCH_STATUS_VAL,
    SUOTA_IDX_PATCH_STATUS_NTF_CFG,
    SUOTA_IDX_VERSION_CHAR,
    SUOTA_IDX_VERSION_VAL,
    SUOTA_IDX_PATCH_DATA_CHAR_SIZE_CHAR,
    SUOTA_IDX_PATCH_DATA_CHAR_SIZE_VAL,
    SUOTA_IDX_MTU_CHAR,
    SUOTA_IDX_MTU_VAL,
    SUOTA_IDX_NB,
};

/* suotar.h: overall patch-data buffer size and status values. */
#define SUOTA_OVERALL_PD_SIZE 0x200
enum {
    SUOTAR_RESERVED, SUOTAR_SRV_STARTED, SUOTAR_CMP_OK, SUOTAR_SRV_EXIT, SUOTAR_CRC_ERR,
    SUOTAR_PATCH_LEN_ERR, SUOTAR_EXT_MEM_WRITE_ERR, SUOTAR_INT_MEM_ERR, SUOTAR_INVAL_MEM_TYPE,
    SUOTAR_APP_ERROR,

    // SUOTAR application specific error codes
    SUOTAR_IMG_STARTED      = 0x10,
    SUOTAR_INVAL_IMG_BANK   = 0x11,
    SUOTAR_INVAL_IMG_HDR    = 0x12,
    SUOTAR_INVAL_IMG_SIZE   = 0x13,
    SUOTAR_INVAL_PRODUCT_HDR= 0x14,
    SUOTAR_SAME_IMG_ERR     = 0x15,
    SUOTAR_EXT_MEM_READ_ERR = 0x16,
};

/* app_suotar.h: memory device field of the PATCH_MEM_DEV write and its values. */
#define SUOTAR_READ_MEM_DEV_TYPE    0xFF000000
#define SUOTAR_READ_MEM_BASE_ADD    0x0000FFFF
enum {
    SUOTAR_MEM_INT_SYSRAM = 0x00,
    SUOTAR_MEM_INT_RETRAM = 0x01,
    SUOTAR_MEM_I2C_EEPROM = 0x02,
    SUOTAR_MEM_SPI_FLASH  = 0x03,
    SUOTAR_IMG_INT_SYSRAM = 0x10,
    SUOTAR_IMG_INT_RETRAM = 0x11,
    SUOTAR_IMG_I2C_EEPROM = 0x12,
    SUOTAR_IMG_SPI_FLASH  = 0x13,
    SUOTAR_MEM_INVAL_DEV  = 0x14,
    SUOTAR_REBOOT         = 0xFD,
    SUOTAR_IMG_END        = 0xFE,
    SUOTAR_MEM_SERVICE_EXIT   = 0xFF,
};

/* arch.h */
#define RESET_AFTER_SUOTA_UPDATE (0x11111111)

/* app_suotar.c */
void suotar_send_status_update_req(uint8_t status);
void suotar_send_mem_info_update_req(uint32_t mem_info);

enum { SUOTAR_IDLE, SUOTAR_BUSY, SUOTAR_STATE_MAX };

enum suotar_msg_id {
    SUOTAR_PATCH_MEM_DEV_IND = KE_FIRST_MSG(TASK_ID_SUOTAR),
    SUOTAR_GPIO_MAP_IND,
    SUOTAR_PATCH_LEN_IND,
    SUOTAR_PATCH_DATA_IND,
    SUOTAR_PATCH_MEM_INFO_UPDATE_REQ,
    SUOTAR_STATUS_UPDATE_REQ,
    SUOTAR_ERROR_IND,
};

/* gatt.h */
enum { GATT_CCC_STOP_NTFIND = 0x0000, GATT_CCC_START_NTF, GATT_CCC_START_IND };

struct suotar_env_tag {
    prf_env_t prf_env;
    uint8_t features;
    uint16_t suota_shdl;
    ke_state_t state[SUOTAR_IDX_MAX];
    uint16_t ntf_cfg;
};
_Static_assert(offsetof(struct suotar_env_tag, suota_shdl) == 6, "V204 SUOTAR env layout");
_Static_assert(offsetof(struct suotar_env_tag, ntf_cfg) == 10, "V204 SUOTAR env layout");

struct suotar_status_update_req {
    uint16_t conhdl;
    uint8_t status;
};

struct suotar_patch_mem_info_update_req {
    uint32_t mem_info;
};

/* suotar.h characteristic codes and suotar_task.h write indications. */
enum {
    SUOTAR_ERR_CHAR, SUOTAR_PATCH_MEM_DEV_CHAR, SUOTAR_GPIO_MAP_CHAR,
    SUOTAR_PATCH_LEN_CHAR, SUOTAR_PATCH_DATA_CHAR, SUOTA_PATCH_STATUS_NTF_CFG
};
struct suotar_patch_mem_dev_ind {
    uint16_t conhdl;
    uint8_t char_code;
    uint32_t mem_dev;
};
struct suotar_gpio_map_ind {
    uint16_t conhdl;
    uint8_t char_code;
    uint32_t gpio_map;
};
struct suotar_patch_len_ind {
    uint16_t conhdl;
    uint8_t char_code;
    uint16_t len;
};
struct suotar_patch_data_ind {
    uint16_t conhdl;
    uint8_t char_code;
    uint8_t len;
    uint8_t pd[0];
};
_Static_assert(sizeof(struct suotar_patch_mem_dev_ind) == 8, "SUOTA memory indication layout");
_Static_assert(sizeof(struct suotar_patch_len_ind) == 6, "SUOTA length indication layout");
_Static_assert(offsetof(struct suotar_patch_data_ind, pd) == 4, "SUOTA data indication layout");

/* ROM: attm_db.c and gattc.c. */
extern uint8_t attmdb_get_value(uint16_t handle, att_size_t *length, uint8_t **value);
extern uint16_t gattc_get_mtu(uint8_t conidx);

#endif
