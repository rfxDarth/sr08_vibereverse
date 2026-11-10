/* Return the value from the DA14585 ROM rand routine. */
#include <stdint.h>

extern uint32_t rand(void);

uint32_t get_random_number(void)

{
    return rand();
}
