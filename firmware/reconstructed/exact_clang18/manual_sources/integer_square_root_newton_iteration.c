/* Integer square root by Newton iteration: repeat x = (x + n / x) / 2 until
 * the estimate moves by at most one. Returns zero for zero.
 */
#include <stdint.h>

uint32_t integer_square_root_newton_iteration(uint32_t radicand) {
    uint32_t estimate = radicand;
    uint32_t previous;
    if (estimate == 0)
        return 0;
    do {
        previous = estimate;
        estimate = (estimate + radicand / estimate) / 2;
    } while ((uint32_t)(estimate - previous + 1) > 2);
    return estimate;
}
