#ifndef SR08_RECORD_DISPATCH_H
#define SR08_RECORD_DISPATCH_H

#include <stdint.h>

void enqueue_typed_operation_record(uint8_t operation);
void build_mode_status_record_select_corresponding_at_43a4(uint32_t mode);

#endif
