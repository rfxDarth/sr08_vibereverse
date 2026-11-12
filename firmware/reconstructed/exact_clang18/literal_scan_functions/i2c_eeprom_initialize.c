/* Apply the fixed radio register profile called by device and motion-state paths. */
#include "firmware/reconstructed/include/sr08_device_registers.h"

SR08_DEFINE_RADIO_PROFILE_APPLIER(i2c_eeprom_initialize, SR08_DEVICE_STATE_RADIO_PROFILE_ADDRESS)
