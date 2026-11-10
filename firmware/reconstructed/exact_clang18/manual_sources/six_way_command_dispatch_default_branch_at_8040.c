/* Six-way command dispatch; the default branch spans the local case block. */
#include "firmware/reconstructed/include/sr08_computed_dispatch.h"

SR08_DEFINE_SIX_WAY_THUMB_DISPATCH(dispatch_six_command_identifiers_through_table_at_8040,
                                   six_way_command_dispatch_default_branch_at_8040,
                                   V204_COMMAND_DISPATCH_DEFAULT_RETURN)
