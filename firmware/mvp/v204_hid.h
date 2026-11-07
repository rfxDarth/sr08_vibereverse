#ifndef V204_HID_H
#define V204_HID_H

#include <stdbool.h>
#include <stdint.h>
#include "ke_msg.h"

void v204_hid_create_db(void);
void v204_hid_enable(uint8_t conidx);
bool v204_hid_handle_message(ke_msg_id_t msgid, void const *param);

#endif
