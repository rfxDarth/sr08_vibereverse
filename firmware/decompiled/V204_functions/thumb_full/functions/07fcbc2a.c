/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */

#include "firmware/reconstructed/include/sr08_releasable_object.h"

extern void func_0x07f1ba8a(uint32_t handle);

void release_and_clear_secondary_handle(struct sr08_releasable_object *object)

{
  uint32_t handle = object->handle;
  object->handle = 0;
  func_0x07f1ba8a(handle);
  return;
}

