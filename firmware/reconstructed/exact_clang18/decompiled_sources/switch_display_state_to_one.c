/* Call the display state switcher with state value one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state_switches.h"
#include "firmware/reconstructed/include/sr08_trivial_callbacks.h"

SR08_DEFINE_VOID_U32_FORWARDER(switch_display_state_to_one, switch_display_state_and_run_hooks, 1)
