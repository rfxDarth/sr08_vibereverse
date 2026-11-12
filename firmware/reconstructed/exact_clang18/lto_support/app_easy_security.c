/* Functions from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_easy/app_easy_security.c and app_sec/app_security.c (Copyright
 * (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined them into their callers. ENABLE_SMP_SECURE is set and
 * user_security_conf has no OOB data.
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"

/* V204's whole-program link saw gapc_bond_cfm_pairing_rsp as the SDK's
 * file-static array, whose address never escapes, so its alias analysis knew
 * that the memory ke_msg_alloc() returns cannot be that array. Here the array
 * is a field of a fixed merged block that code outside the module also
 * references, and this declaration gives the calls in this file the same
 * knowledge (ke_msg_alloc returns fresh heap memory). */
extern void *ke_msg_alloc(ke_msg_id_t const id, ke_task_id_t const dest_id, ke_task_id_t const src_id,
                          uint16_t const param_len) __attribute__((malloc));

#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_sec_env (merged_globals_53e4.app_sec_env)
#define gapc_bond_cfm_pairing_rsp (merged_globals_5650.gapc_bond_cfm_pairing_rsp)
#define gapc_bond_cfm_ltk_exch (merged_globals_5650.gapc_bond_cfm_ltk_exch)
#define KEY_LEN 16
#define RAND_NB_LEN 8
#define GAP_OOB_AUTH_DATA_PRESENT 1
#define ENABLE_SMP_SECURE 1


extern int dia_rand(void);
extern void app_fill_random_byte_array(uint8_t *dst, uint8_t key_size, uint8_t max_size);
extern struct gapc_bond_cfm *ltk_exch_create_msg(uint8_t conidx);

static inline uint32_t co_rand_word(void)
{
    return (uint32_t)dia_rand();
}

static inline struct gapc_bond_cfm* pairing_rsp_create_msg(uint8_t conidx)
{
    // Allocate a message for GAP
    if (gapc_bond_cfm_pairing_rsp[conidx] == NULL)
    {
        struct gapc_bond_cfm* cfm = app_gapc_bond_cfm_pairing_rsp_msg_create(conidx);
        gapc_bond_cfm_pairing_rsp[conidx] = cfm;
        memcpy(&cfm->data.pairing_feat, &user_security_conf, sizeof(struct security_configuration));

// If Secure Connections are system-wise disabled, force to Legacy Pairing
#if (!ENABLE_SMP_SECURE)

        // Change the actual authentication level to Legacy Pairing
        cfm->data.pairing_feat.auth = user_security_conf.auth & (~GAP_AUTH_SEC);

// If Secure Connections are system-wise enabled and OOB data is present, force to Legacy Pairing
#else
        // Ensure that if local device has OOB support, then Legacy Pairing will be used
        if (user_security_conf.oob == GAP_OOB_AUTH_DATA_PRESENT)
        {
            // Change the actual authentication level to Legacy Pairing
            cfm->data.pairing_feat.auth = user_security_conf.auth & (~GAP_AUTH_SEC);
        }
#endif // ENABLE_SMP_SECURE

        cfm->accept = true;
    }
    return gapc_bond_cfm_pairing_rsp[conidx];
}

void app_easy_security_send_pairing_rsp(uint8_t conidx, struct gapc_bond_req_ind const *param)
{
    struct gapc_bond_cfm* cfm;
    cfm = pairing_rsp_create_msg(conidx);
    ke_msg_send(cfm);
    gapc_bond_cfm_pairing_rsp[conidx] = NULL;
}

void app_easy_security_set_ltk_exch_from_sec_env(uint8_t conidx)
{
    struct gapc_bond_cfm* cfm;
    cfm = ltk_exch_create_msg(conidx);
    cfm->data.ltk.key_size = app_sec_env[conidx].ltk.key_size;
    cfm->data.ltk.ediv = app_sec_env[conidx].ltk.ediv;

    memcpy(&cfm->data.ltk.randnb, &app_sec_env[conidx].ltk.randnb , RAND_NB_LEN);
    memcpy(&cfm->data.ltk.ltk, &app_sec_env[conidx].ltk.ltk, KEY_LEN);
}

void app_easy_security_ltk_exch(uint8_t conidx)
{
    struct gapc_bond_cfm* cfm;
    cfm = ltk_exch_create_msg(conidx);
    ke_msg_send(cfm);
    gapc_bond_cfm_ltk_exch[conidx] = NULL;
}

/* app_security.c */
void app_sec_gen_ltk(uint8_t conidx, uint8_t key_size)
{
    app_sec_env[conidx].ltk.key_size = key_size;

    // Randomly generate the LTK and the Random Number
    app_fill_random_byte_array(app_sec_env[conidx].ltk.randnb.nb, RAND_NB_LEN, RAND_NB_LEN);

    // Randomly generate the end of the LTK
    app_fill_random_byte_array(app_sec_env[conidx].ltk.ltk.key, key_size, KEY_LEN);

    // Randomly generate the EDIV
    app_sec_env[conidx].ltk.ediv = co_rand_word()%65536;

    app_sec_env[conidx].valid_keys |= LTK_PRESENT;
}

extern struct gapc_encrypt_cfm *encrypt_cfm_create_msg(uint8_t conidx);

void app_easy_security_set_encrypt_req_valid(uint8_t conidx)
{
    struct gapc_encrypt_cfm* cfm = encrypt_cfm_create_msg(conidx);
    cfm->found = true;
    cfm->key_size = app_sec_env[conidx].ltk.key_size;
    memcpy(&cfm->ltk, &app_sec_env[conidx].ltk.ltk, KEY_LEN);
}

void app_easy_security_set_encrypt_req_invalid(uint8_t conidx)
{
    struct gapc_encrypt_cfm* cfm = encrypt_cfm_create_msg(conidx);
    cfm->found = false;
}
