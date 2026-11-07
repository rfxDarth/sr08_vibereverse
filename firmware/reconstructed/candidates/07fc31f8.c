#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef void code();
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define DataSynchronizationBarrier(x) __asm__ volatile ("dsb sy" ::: "memory")
#define InstructionSynchronizationBarrier(x) __asm__ volatile ("isb sy" ::: "memory")
#define enableIRQinterrupts() __asm__ volatile ("cpsie i" ::: "memory")
#define DAT_07fc321c (0x00000e02u)



void FUN_07fc31f8(int param_1,undefined1 param_2)

{
  int iVar1;
  
  register uint32_t offset __asm__("r1") = param_1 * 0x100 + 10;
  uint32_t rom_arg;
  __asm__ volatile ("ldr r0, [pc, #24]" : "=r" (rom_arg) : "r" (offset) : "memory");
  iVar1 = func_0x07f1bbb0(rom_arg,offset,4,0x2c);
  *(volatile undefined1 *)(iVar1 + 0x28) = param_2;
  __asm__ volatile ("mov r1, r0\n adds r1, #40\n movs r2, #1\n strb r2, [r1, #1]" : : "r" (iVar1) : "r1", "r2", "memory");
  func_0x07f1bbe2();
  return;
}

