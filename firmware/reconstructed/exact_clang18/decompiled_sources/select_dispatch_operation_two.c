/* Build a dispatch record selecting operation two. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_record_dispatch.h"
#include "firmware/reconstructed/include/sr08_trivial_callbacks.h"

SR08_DEFINE_VOID_U32_FORWARDER(select_dispatch_operation_two, enqueue_typed_operation_record, 2)
