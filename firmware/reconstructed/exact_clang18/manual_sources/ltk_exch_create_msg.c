/* ltk_exch_create_msg (Renesas DA145xx SDK, app_easy_security.c): return the pending LTK-exchange
 * bond confirmation for a connection, allocating it on first use (app_mid.h's
 * app_gapc_bond_cfm_ltk_exch_msg_create() is inlined).
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_message.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

enum {
    GAPC_BOND_CFM = 0x0E14,
    TASK_GAPC = 10,
    TASK_APP = 4,
    GAPC_LTK_EXCH = 7,
};

/* gapc_task.h: GAPC_BOND_CFM parameters; the LTK member's uint16_t ediv makes the union
 * halfword-aligned. */

struct gapc_bond_cfm {
    uint8_t request;
    uint8_t accept;
    union gapc_bond_cfm_data {
        struct gapc_ltk ltk;
    } data;
};

SR08_STATIC_ASSERT(sizeof(struct gapc_bond_cfm) == 30, "GAPC_BOND_CFM payload must remain 30 bytes");

#define KE_BUILD_ID(type, index) ((uint16_t)(((index) << 8) | (type)))

static inline struct gapc_bond_cfm *app_gapc_bond_cfm_ltk_exch_msg_create(uint8_t conidx)
{
    struct gapc_bond_cfm *cmd = ke_msg_alloc(GAPC_BOND_CFM, KE_BUILD_ID(TASK_GAPC, conidx), TASK_APP,
                                             sizeof(struct gapc_bond_cfm));
    cmd->request = GAPC_LTK_EXCH;
    cmd->accept = 0x01;
    return cmd;
}

struct gapc_bond_cfm *ltk_exch_create_msg(uint8_t conidx)
{
    if (merged_globals_5650.gapc_bond_cfm_ltk_exch[conidx] == NULL) {
        merged_globals_5650.gapc_bond_cfm_ltk_exch[conidx] = app_gapc_bond_cfm_ltk_exch_msg_create(conidx);
    }
    return merged_globals_5650.gapc_bond_cfm_ltk_exch[conidx];
}
