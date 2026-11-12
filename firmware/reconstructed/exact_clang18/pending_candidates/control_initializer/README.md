# Alice: ARM5 scheduling-barrier check

Analysis only; original ASM remains installed. probe_schedule_barriers.py
tests 32 combinations of direct versus precomputed-pair-pointer loops,
barriers before/between pair stores and before the sample loop, and -O2/-O3.
The intrinsic __schedule_barrier() is used in our SDK's cmsis_armcc.h.
No variant improves the earlier 136-byte, 24-difference -O2 candidate.
barrier_search.log, results.json and best.json retain the result; best.c.txt
is the unchanged control. Do not repeat these placements unchanged.
No compiler profile, normal build source or flags were installed.
