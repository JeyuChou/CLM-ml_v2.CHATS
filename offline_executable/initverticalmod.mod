V34 :0x24 initverticalmod
19 initVerticalMod.F90 S624 0
06/02/2026  09:20:28
use abortutils private
use columntype private
use decompmod private
use shr_kind_mod private
enduse
D 58 26 640 32 639 3
S 624 24 0 0 0 6 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 initverticalmod
S 626 23 0 0 0 9 636 624 5041 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 639 624 5066 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 631 23 0 0 0 9 768 624 5089 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
S 633 23 0 0 0 9 1338 624 5104 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
R 636 16 1 shr_kind_mod shr_kind_r8
R 639 25 2 decompmod bounds_type
R 640 5 3 decompmod begg bounds_type
R 641 5 4 decompmod endg bounds_type
R 642 5 5 decompmod begl bounds_type
R 643 5 6 decompmod endl bounds_type
R 644 5 7 decompmod begc bounds_type
R 645 5 8 decompmod endc bounds_type
R 646 5 9 decompmod begp bounds_type
R 647 5 10 decompmod endp bounds_type
R 768 6 43 columntype col
R 1338 14 450 abortutils endrun
S 1343 27 0 0 0 6 1344 624 11969 0 8000000 A 0 0 0 0 B 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initvertical
S 1344 23 5 0 0 0 1346 624 11969 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initvertical
S 1345 1 3 1 0 58 1 1344 5208 4 3000 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 1346 14 5 0 0 0 1 1344 11969 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 15 1 0 0 0 0 0 0 0 0 0 0 0 0 23 0 624 0 0 0 0 initvertical initvertical 
F 1346 1 1345
Z
Z
