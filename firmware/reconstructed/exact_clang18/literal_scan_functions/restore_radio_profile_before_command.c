/* Apply the fixed radio register profile used when command-path status is stale. */
#include "firmware/reconstructed/include/sr08_device_registers.h"

SR08_DEFINE_RADIO_PROFILE_APPLIER(restore_radio_profile_before_command, SR08_COMMAND_READY_RADIO_PROFILE_ADDRESS)
