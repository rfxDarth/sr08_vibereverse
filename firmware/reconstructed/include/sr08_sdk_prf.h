/* Profile manager definitions from the Renesas DA145xx SDK 6.0.22.1401,
 * sdk/ble_stack/profiles/prf.h and prf.c (Copyright (C) Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.22.1401/renesas_license.txt).
 *
 * V204 was configured with three profiles: HID device (HOGPD), custom
 * service 1 (CUSTS1) and SUOTA receiver (SUOTAR). Its armclang half was built
 * with link-time optimisation, which inlined each profile's *_prf_itf_get()
 * into prf.c; the static inline functions below state that inlining.
 */
#ifndef SR08_SDK_PRF_H
#define SR08_SDK_PRF_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

typedef uint16_t ke_task_id_t;
typedef uint16_t ke_msg_id_t;
typedef uint8_t ke_state_t;

#define KE_TYPE_GET(ke_task_id) ((ke_task_id) & 0xFF)
#define KE_IDX_GET(ke_task_id) (((ke_task_id) >> 8) & 0xFF)
#define KE_BUILD_ID(type, index) ((ke_task_id_t)(((index) << 8) | (type)))

enum KE_API_ID {
    TASK_ID_GATTC = 12,
    TASK_ID_GAPM = 13,
    TASK_ID_GAPC = 14,
    TASK_ID_HOGPD = 38,
    TASK_ID_SUOTAR = 0xFC,
    TASK_ID_CUSTS1 = 0xFD,
    TASK_ID_INVALID = 0xFF,
    TASK_NONE = 0xFF,
    TASK_RFU_5 = 15,
    BLE_NB_PROFILES = 32,
};

enum {
    GAP_ERR_NO_ERROR = 0x00,
    GAP_ERR_INVALID_PARAM = 0x40,
    GAP_ERR_NOT_SUPPORTED = 0x42,
    GAP_ERR_CANCELED = 0x44,
    GAP_ERR_NOT_FOUND = 0x47,
    GAP_ERR_REJECTED = 0x48,
    GAP_ERR_INSUFF_RESOURCES = 0x4B,
};

struct ke_task_desc {
    const struct ke_state_handler *state_handler;
    const struct ke_state_handler *default_handler;
    ke_state_t *state;
    uint16_t state_max;
    uint16_t idx_max;
};

typedef struct prf_env {
    ke_task_id_t app_task;
    ke_task_id_t prf_task;
} prf_env_t;

struct prf_task_env {
    struct ke_task_desc desc;
    prf_env_t *env;
    ke_task_id_t task;
    ke_task_id_t id;
};

typedef uint8_t (*prf_init_fnct)(struct prf_task_env *env, uint16_t *start_hdl, uint16_t app_task,
                                 uint8_t sec_lvl, void *params);
typedef void (*prf_destroy_fnct)(struct prf_task_env *env);
typedef void (*prf_create_fnct)(struct prf_task_env *env, uint8_t conidx);
typedef void (*prf_cleanup_fnct)(struct prf_task_env *env, uint8_t conidx, uint8_t reason);

struct prf_task_cbs {
    prf_init_fnct init;
    prf_destroy_fnct destroy;
    prf_create_fnct create;
    prf_cleanup_fnct cleanup;
};

struct prf_env_tag {
    struct prf_task_env prf[BLE_NB_PROFILES];
};

/* GAPM_PROFILE_TASK_ADD_CMD parameters (gapm_task.h). */
struct gapm_profile_task_add_cmd {
    uint8_t operation;
    uint8_t sec_lvl;
    uint16_t prf_task_id;
    uint16_t app_task;
    uint16_t start_hdl;
    uint32_t param[];
};

SR08_STATIC_ASSERT(sizeof(struct prf_task_env) == 24, "profile task environment must remain 24 bytes");
SR08_STATIC_ASSERT(offsetof(struct prf_task_env, id) == 22, "profile identifier must remain at offset 22");
SR08_STATIC_ASSERT(offsetof(struct gapm_profile_task_add_cmd, param) == 8, "profile parameters start at offset 8");

extern struct prf_env_tag prf_env;
extern const struct prf_task_cbs hogpd_itf;
extern const struct prf_task_cbs custs1_itf;
extern const struct prf_task_cbs suotar_itf;

extern void ke_task_create(uint8_t task_type, const struct ke_task_desc *p_task_desc);
extern void ke_task_msg_flush(ke_task_id_t task);

static inline const struct prf_task_cbs *hogpd_prf_itf_get(void) { return &hogpd_itf; }
static inline const struct prf_task_cbs *custs1_prf_itf_get(void) { return &custs1_itf; }
static inline const struct prf_task_cbs *suotar_prf_itf_get(void) { return &suotar_itf; }

/* prf.c's static prf_itf_get() for V204's profile set. */
static const struct prf_task_cbs *prf_itf_get(uint16_t task_id)
{
    const struct prf_task_cbs *prf_cbs = NULL;

    switch (KE_TYPE_GET(task_id)) {
    case TASK_ID_HOGPD:
        prf_cbs = hogpd_prf_itf_get();
        break;
    case TASK_ID_SUOTAR:
        prf_cbs = suotar_prf_itf_get();
        break;
    case TASK_ID_CUSTS1:
        prf_cbs = custs1_prf_itf_get();
        break;
    default:
        break;
    }
    return prf_cbs;
}

#endif
