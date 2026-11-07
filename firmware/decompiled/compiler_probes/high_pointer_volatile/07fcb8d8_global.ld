SECTIONS {
  . = 0x07fcb8d8;
  .text : { *(.text.FUN_07fcb8d8) *(.text*) }
  . = 0x07fcbbbc;
  .payload_data : { *(.global_DAT_07fcbbbc) }
}
