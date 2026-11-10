/* Select PSP or MSP and dispatch the second exception entry. */
#include "firmware/reconstructed/include/sr08_exception_entries.h"

enum {
    PSP_DISPATCH_LITERAL_OFFSET = 28,
    MSP_DISPATCH_LITERAL_OFFSET = 20,
};

SR08_DEFINE_EXCEPTION_STACK_ENTRY(second_exception_entry_point_same_stack_at_0164,
                                  dispatch_second_exception_on_selected_stack, PSP_DISPATCH_LITERAL_OFFSET,
                                  MSP_DISPATCH_LITERAL_OFFSET)
