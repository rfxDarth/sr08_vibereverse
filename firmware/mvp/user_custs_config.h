#ifndef USER_CUSTS_CONFIG_H
#define USER_CUSTS_CONFIG_H

#include "app_prf_types.h"
#include "attm_db_128.h"

extern const uint8_t custs1_services[];
extern const uint8_t custs1_services_size;
extern const uint16_t custs1_att_max_nb;
extern struct attm_desc_128 custs1_att_db[];
extern const struct cust_prf_func_callbacks cust_prf_funcs[];

#endif
