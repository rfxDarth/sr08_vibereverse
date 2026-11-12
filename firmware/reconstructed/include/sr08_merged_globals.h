/* RAM globals that V204's link-time-optimised armclang build merged into blocks.
 *
 * LLVM's GlobalMerge pass combines a module's small internal globals into one
 * structure and addresses each through the block's base. Code that touches
 * several of them loads one base address and uses fixed offsets, so the
 * reconstruction declares each block as one structure at its V204 address.
 * Fields are named as they are identified; reserved bytes are not yet known.
 */
#ifndef SR08_MERGED_GLOBALS_H
#define SR08_MERGED_GLOBALS_H

/* Access a merged field as the standalone global it was in the source. The
 * merge happened after type-based alias analysis, which saw a scalar such as
 * a uint8_t global (a character type, so its stores may alias anything), not
 * a structure member; the access type affects how the code is scheduled. */
#define SR08_MERGED_SCALAR(field) (*(__typeof__(field) *)&(field))

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"
#include "firmware/reconstructed/include/sr08_sdk_app_env.h"
#include "firmware/reconstructed/include/sr08_sdk_app_sec.h"

struct gapc_bond_cfm;
struct gapm_start_advertise_cmd;

/* Block at 0x07fd53e4. */
struct sr08_merged_globals_53e4 {
    /* V204's bond store: the block is saved as one 0x7e-byte record at flash
     * 0x2d000 (user_app_on_pairing_succeeded) and restored at start-up, where
     * app_sec_env is cleared unless both magic values are present. */
    uint16_t bond_store_head_magic;
    /* app_security.c: bond data of the connection (APP_EASY_MAX_ACTIVE_CONNECTION = 1). */
    struct app_sec_bond_data_env_tag app_sec_env[1];
    uint16_t bond_store_tail_magic;
};

/* Block at 0x07fd5650. */
struct sr08_merged_globals_5650 {
    uint8_t reserved_00_to_01[0x02];
    /* Vendor: selects the SPI flash chip-select pin, P0_3 when set, else P0_0 (spi_transaction). */
    bool spi_flash_cs_select;
    uint8_t reserved_03_to_04[0x02];
    /* app.c app_db_init_next(): static k, i, j (V204 keeps them here). */
    uint8_t app_db_init_next_k;
    uint8_t app_db_init_next_i;
    uint8_t app_db_init_next_j;
    /* user_peripheral.c (the SDK's peripheral template, as V204 uses it). */
    uint8_t app_connection_idx;
    timer_hnd app_param_update_request_timer_used;
    uint8_t reserved_0a;
    timer_hnd app_adv_data_update_timer_used;
    union {
        uint8_t reserved_0c[0x0c];
        struct {
            uint8_t reserved_0c_to_0d[2];
            /* Vendor measurement state: user_app_adv_start does not advertise
             * while it is 1 or 2. */
            volatile uint8_t measurement_state;
            uint8_t reserved_0f_to_13[5];
            uint8_t crc_calc; /* app_suotar.c suota_state.crc_calc */
            uint8_t reserved_15_to_17[3];
        };
    };
    /* Vendor SUOTA state (gapc_disconnect_ind_handler): on disconnection with
     * suota_activate_pending set, the image is activated (copied first when
     * suota_copy_pending is set) and the device restarts. */
    uint8_t suota_activate_pending;
    uint8_t reserved_19[3];
    uint8_t suota_copy_pending;
    uint8_t reserved_1d[0x09];
    /* Vendor: while set, low-order sensor mode requests are dropped
     * (derive_active_sensor_range_flags_notify_at_37d0). */
    uint8_t sensor_mode_hold;
    uint8_t reserved_27[0x11];
    uint16_t last_temp_count; /* rf_585.c: RC16M count at the last RF calibration. */
    uint8_t reserved_3a[0x16];
    uint32_t ble_finetim_corr; /* rwble.c: pending sleep-duration correction in microseconds. */
    union {
        uint8_t reserved_54[0x08];
        struct {
            uint8_t reserved_54_to_57[4];
            /* app.c: the pending advertising command. */
            struct gapm_start_advertise_cmd *adv_cmd;
        };
    };
    /* app_easy_security.c: pending GAPC_BOND_CFM (pairing response) message per connection. */
    struct gapc_bond_cfm *gapc_bond_cfm_pairing_rsp[1];
    /* app_easy_security.c: pending GAPC_BOND_CFM (LTK exchange) message per connection. */
    struct gapc_bond_cfm *gapc_bond_cfm_ltk_exch[1];
    union {
        uint8_t reserved_64[0x1c];
        struct {
            uint8_t reserved_64_to_73[0x10];
            volatile uint32_t scaled_measurement_value;
            /* Vendor: each set bit blocks extended sleep (update_state_bits_and_publish_empty_status). */
            uint32_t sleep_block_mask;
            uint8_t reserved_7c_to_7f[4];
        };
    };
};

/* Block at 0x07fd56d0. */
struct sr08_merged_globals_56d0 {
    uint8_t reserved_00[0x08];
    uint32_t rcx_freq;   /* RCX20 frequency in Hz (arch_system.c). */
    uint32_t reserved_0c;
    uint32_t rcx_period; /* RCX20 period, in units of 1/1024 microsecond (arch_system.c). */
    /* app_suotar.c suota_state fields (LTO split the struct; unused fields are gone). */
    uint32_t mem_base_add;
    uint32_t new_patch_len; /* app_suotar.c suota_state.new_patch_len (SUOTA patch length). */
    uint32_t suota_block_idx;
    uint32_t suota_img_idx;
    uint32_t suota_image_len;
    uint8_t reserved_28[0x04];
    uint32_t suota_activation_value; /* vendor: stored with the activation marker */
    uint8_t reserved_30[0x28];
    struct app_env_tag app_env[1]; /* app.c (APP_EASY_MAX_ACTIVE_CONNECTION = 1). */
};

/* Vendor device-name record, loaded from flash 0x64000
 * (validate_cached_text_payload_return_install_at_8fb0): valid when marker is
 * '+' and length (1-17) matches the NUL-terminated name. */
struct sr08_device_name_record {
    uint8_t marker;
    uint8_t name[18];
    uint8_t length;
};

/* Block at 0x07fd574c. */
struct sr08_merged_globals_574c {
    uint8_t reserved_00[0x14];
    struct sr08_device_name_record device_name;
    uint8_t reserved_28[0x20];
    struct app_device_info device_info; /* app.c */
};

/* Block at 0x07fd57b8: app_easy_timer.c's two static callback tables. */
typedef void (*timer_callback)(void);
struct sr08_merged_globals_57b8 {
    timer_callback timer_callbacks[10];
    timer_callback modified_timer_callbacks[10];
};

SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_57b8, modified_timer_callbacks) == 0x28,
                   "modified_timer_callbacks must remain at 0x07fd57e0");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, spi_flash_cs_select) == 0x02,
                   "spi_flash_cs_select must remain at 0x07fd5652");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, app_adv_data_update_timer_used) == 0x0b,
                   "app_adv_data_update_timer_used must remain at 0x07fd565b");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, measurement_state) == 0x0e,
                   "measurement_state must remain at 0x07fd565e");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, adv_cmd) == 0x58, "adv_cmd must remain at 0x07fd56a8");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, suota_copy_pending) == 0x1c,
                   "suota_copy_pending must remain at 0x07fd566c");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, sensor_mode_hold) == 0x26,
                   "sensor_mode_hold must remain at 0x07fd5676");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, last_temp_count) == 0x38,
                   "last_temp_count must remain at 0x07fd5688");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, ble_finetim_corr) == 0x50,
                   "sleep correction must remain at 0x07fd56a0");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, gapc_bond_cfm_ltk_exch) == 0x60,
                   "LTK exchange messages must remain at 0x07fd56b0");
SR08_STATIC_ASSERT(sizeof(struct sr08_merged_globals_5650) == 0x80, "block must end at 0x07fd56d0");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, rcx_freq) == 0x08, "rcx_freq must remain at 0x07fd56d8");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, new_patch_len) == 0x18,
                   "new_patch_len must remain at 0x07fd56e8");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, suota_activation_value) == 0x2c,
                   "suota_activation_value must remain at 0x07fd56fc");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, app_env) == 0x58, "app_env must remain at 0x07fd5728");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, rcx_period) == 0x10,
                   "rcx_period must remain at 0x07fd56e0");

SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_53e4, app_sec_env) == 0x02, "app_sec_env must remain at 0x07fd53e6");
SR08_STATIC_ASSERT(sizeof(struct sr08_merged_globals_53e4) == 0x7e, "the bond store record is 0x7e bytes");

extern struct sr08_merged_globals_53e4 merged_globals_53e4;
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, scaled_measurement_value) == 0x74,
                   "scaled measurement must remain at 0x07fd56c4");
extern struct sr08_merged_globals_5650 merged_globals_5650;
extern struct sr08_merged_globals_56d0 merged_globals_56d0;
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_574c, device_name) == 0x14, "device_name must remain at 0x07fd5760");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_574c, device_info) == 0x48, "device_info must remain at 0x07fd5794");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, mem_base_add) == 0x14, "mem_base_add must remain at 0x07fd56e4");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_56d0, suota_image_len) == 0x24,
                   "suota_image_len must remain at 0x07fd56f4");
SR08_STATIC_ASSERT(offsetof(struct sr08_merged_globals_5650, crc_calc) == 0x14, "crc_calc must remain at 0x07fd5664");

extern struct sr08_merged_globals_574c merged_globals_574c;
extern struct sr08_merged_globals_57b8 merged_globals_57b8;

#endif
