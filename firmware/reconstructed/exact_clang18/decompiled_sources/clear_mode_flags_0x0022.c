/* Recovered behavior:
 * Clear mode flag bits 1 and 5 through the shared flag updater.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_trivial_callbacks.h"
extern void update_mode_flags_and_transitions(uint32_t flags);

SR08_DEFINE_VOID_U32_FORWARDER(clear_mode_flags_0x0022, update_mode_flags_and_transitions, 0x00220000u)
