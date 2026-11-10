/* Call the DA14585 ROM srand routine. */
#include <stdint.h>
extern void srand(void);

void seed_random_number_generator(void)

{
    srand();
}
