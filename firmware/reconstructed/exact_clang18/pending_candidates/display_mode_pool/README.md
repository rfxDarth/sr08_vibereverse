# Alice: native display-mode readers with marker pool owner

Released Jeff C sources copied here, unchanged; shared claims assigned Alice.
Native instruction bodies match, displacements/private pointer pools differ.
Three-native context probe fails before region comparison: existing choose
routine links at 0xac80 instead of original 0xac7c. Original ASM remains
installed. No acceptance. This differs from earlier marker+ASM-reader tests:
all three candidate units were compiled natively, after 0xa914/0xacb8 acceptance.
Do not repeat this unchanged combination. Need explain pool growth before
another full-context attempt. No normal compiler/profile/support change.
