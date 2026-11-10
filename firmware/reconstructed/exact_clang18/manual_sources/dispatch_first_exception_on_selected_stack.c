/* Select PSP or MSP and dispatch the first exception entry. */
#include "firmware/reconstructed/include/sr08_exception_entries.h"

enum {
    PSP_DISPATCH_LITERAL_OFFSET = 48,
    MSP_DISPATCH_LITERAL_OFFSET = 40,
};

SR08_DEFINE_EXCEPTION_STACK_ENTRY(select_interrupted_stack_tail_call_exception_at_014c,
                                  dispatch_first_exception_on_selected_stack, PSP_DISPATCH_LITERAL_OFFSET,
                                  MSP_DISPATCH_LITERAL_OFFSET)
