#ifndef SR08_KERNEL_LIST_H
#define SR08_KERNEL_LIST_H

#include <stdint.h>

extern void *co_list_pop_front(void *list);
extern void co_list_extract(void *list, void *item, uint8_t free_item);
extern void co_list_push_back(void *list, void *item);

#endif
