/* Run the state initializer and report success. The ac6apcs build profile
 * preserves V204's four-byte stack frame for this no-argument call.
 */
#include <stdint.h>
extern void initialize_shared_control_state_tables(void);
uint32_t initialize_state_and_return_one(void)
{
    initialize_shared_control_state_tables();
    return 1;
}
