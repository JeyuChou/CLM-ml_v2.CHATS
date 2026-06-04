V34 :0x24 lnd_comp_nuopc
18 lnd_comp_nuopc.F90 S624 0
06/02/2026  09:20:42
use decompmod private
use shr_kind_mod private
enduse
D 58 26 636 32 635 3
D 67 20 16
S 624 24 0 0 0 6 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 lnd_comp_nuopc
S 626 23 0 0 0 9 632 624 5040 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 635 624 5065 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
R 632 16 1 shr_kind_mod shr_kind_r8
R 635 25 2 decompmod bounds_type
R 636 5 3 decompmod begg bounds_type
R 637 5 4 decompmod endg bounds_type
R 638 5 5 decompmod begl bounds_type
R 639 5 6 decompmod endl bounds_type
R 640 5 7 decompmod begc bounds_type
R 641 5 8 decompmod endc bounds_type
R 642 5 9 decompmod begp bounds_type
R 643 5 10 decompmod endp bounds_type
S 649 27 0 0 0 6 651 624 5181 0 8000000 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initializerealize
S 650 27 0 0 0 6 654 624 5199 0 8000000 A 0 0 0 0 B 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 modeladvance
S 651 23 5 0 0 0 653 624 5181 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initializerealize
S 652 1 3 1 0 58 1 651 5174 4 3000 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 653 14 5 0 0 0 1 651 5181 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5 1 0 0 0 0 0 0 0 0 0 0 0 0 23 0 624 0 0 0 0 initializerealize initializerealize 
F 653 1 652
S 654 23 5 0 0 0 659 624 5199 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 modeladvance
S 655 1 3 1 0 58 1 654 5174 4 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 656 1 3 1 0 6 1 654 5212 4 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 time_indx
S 657 1 3 0 0 67 1 654 5222 4 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fin1
S 658 1 3 0 0 67 1 654 5227 4 3000 A 0 0 0 0 B 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fin2
S 659 14 5 0 0 0 1 654 5199 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 7 4 0 0 0 0 0 0 0 0 0 0 0 0 42 0 624 0 0 0 0 modeladvance modeladvance 
F 659 4 655 656 657 658
S 660 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 256 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
A 16 2 0 0 0 6 660 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
Z
Z
