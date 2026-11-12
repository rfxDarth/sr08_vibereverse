/* Call the display state switcher with state value one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state_switches.h"

void switch_display_state_to_one(void) {
    switch_display_state_and_run_hooks(1);
}
