V34 :0x24 clmdatamod
14 clmDataMod.F90 S624 0
06/02/2026  09:20:34
use clm_varpar private
use clmsoiloptionmod private
use surfacealbedotype private
use canopystatetype private
use waterstatebulktype private
use soilstatetype private
use shr_kind_mod private
use columntype private
use abortutils private
enduse
D 122 26 1360 3104 1359 7
D 233 26 1491 752 1490 7
D 272 26 1537 608 1536 7
D 311 26 1581 952 1580 7
D 352 20 347
D 354 23 10 3 1089 11 0 0 0 0 0
 0 11 11 11 11 11
 0 11 11 11 11 11
 0 11 11 11 11 11
D 357 23 10 3 1089 11 0 0 0 0 0
 0 11 11 11 11 11
 0 11 11 11 11 11
 0 11 11 11 11 11
D 360 23 10 3 1089 1092 0 0 1 0 0
 0 11 11 11 11 11
 0 11 11 11 11 11
 0 1091 11 11 1092 1092
D 363 23 10 3 1089 1095 0 0 1 0 0
 0 11 11 11 11 11
 0 11 11 11 11 11
 0 1094 11 11 1095 1095
D 366 23 10 3 1089 11 0 0 0 0 0
 0 11 11 11 11 11
 0 11 11 11 11 11
 0 11 11 11 11 11
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 clmdatamod
S 626 23 0 0 0 9 1214 624 5034 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 handle_err
S 628 23 0 0 0 9 1327 624 5056 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
S 630 23 0 0 0 9 645 624 5073 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 633 23 0 0 0 9 1359 624 5102 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilstate_type
S 635 23 0 0 0 9 1490 624 5136 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 waterstatebulk_type
S 637 23 0 0 0 9 1536 624 5172 4 0 A 0 0 0 0 B 400000 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 canopystate_type
S 639 23 0 0 0 9 1580 624 5207 4 0 A 0 0 0 0 B 400000 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 surfalb_type
S 641 23 0 0 0 9 1257 624 5237 4 0 A 0 0 0 0 B 400000 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 clm_phys
S 642 23 0 0 0 6 1258 624 5246 4 0 A 0 0 0 0 B 400000 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nlev_soil_adjust
S 643 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 644 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 645 16 1 shr_kind_mod shr_kind_r8
S 648 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 649 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 256 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 657 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 658 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 659 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 660 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 661 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 662 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 663 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 664 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 665 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -32767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 666 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -2147483647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 667 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2096103424 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 668 3 0 0 0 10 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1201537024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10
S 669 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 670 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 671 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 672 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 673 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 674 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 675 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 676 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 677 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 678 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -36 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 679 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 680 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 681 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 682 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 683 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -41 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 684 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 685 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 686 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 687 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 688 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -46 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 689 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 690 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 691 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 692 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 693 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 694 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 695 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 696 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -54 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 697 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 698 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 699 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -57 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 700 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -58 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 701 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 702 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 703 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -61 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 704 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 705 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -63 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 706 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 707 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 708 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 709 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 710 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 711 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 712 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 713 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 714 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 65535 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 715 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4096 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 716 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 717 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 32768 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 718 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 719 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 720 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -103 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 721 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 722 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -105 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 723 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 724 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 725 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 726 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 727 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -110 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 728 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -111 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 729 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 730 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 731 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -114 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 732 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -115 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 733 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -116 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 734 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 735 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -118 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 736 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 737 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -120 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 738 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -121 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 739 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -122 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 740 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 741 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -124 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 742 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 743 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -126 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 744 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 745 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 746 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 747 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -130 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 748 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -131 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 749 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -132 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 750 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -133 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 751 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -134 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 752 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -135 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 753 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 754 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -137 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 755 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 756 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 757 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 758 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -141 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 759 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 760 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 1214 14 454 abortutils handle_err
R 1257 6 1 clmsoiloptionmod clm_phys
R 1258 6 2 clmsoiloptionmod nlev_soil_adjust
R 1266 6 4 clm_varpar nlevsoi
R 1267 6 5 clm_varpar nlevgrnd
R 1327 6 43 columntype col
R 1359 25 8 soilstatetype soilstate_type
R 1360 5 9 soilstatetype cellorg_col soilstate_type
R 1363 5 12 soilstatetype cellorg_col$sd soilstate_type
R 1364 5 13 soilstatetype cellorg_col$p soilstate_type
R 1365 5 14 soilstatetype cellorg_col$o soilstate_type
R 1367 5 16 soilstatetype cellsand_col soilstate_type
R 1370 5 19 soilstatetype cellsand_col$sd soilstate_type
R 1371 5 20 soilstatetype cellsand_col$p soilstate_type
R 1372 5 21 soilstatetype cellsand_col$o soilstate_type
R 1374 5 23 soilstatetype cellclay_col soilstate_type
R 1377 5 26 soilstatetype cellclay_col$sd soilstate_type
R 1378 5 27 soilstatetype cellclay_col$p soilstate_type
R 1379 5 28 soilstatetype cellclay_col$o soilstate_type
R 1381 5 30 soilstatetype hksat_col soilstate_type
R 1384 5 33 soilstatetype hksat_col$sd soilstate_type
R 1385 5 34 soilstatetype hksat_col$p soilstate_type
R 1386 5 35 soilstatetype hksat_col$o soilstate_type
R 1388 5 37 soilstatetype hk_l_col soilstate_type
R 1391 5 40 soilstatetype hk_l_col$sd soilstate_type
R 1392 5 41 soilstatetype hk_l_col$p soilstate_type
R 1393 5 42 soilstatetype hk_l_col$o soilstate_type
R 1395 5 44 soilstatetype smp_l_col soilstate_type
R 1398 5 47 soilstatetype smp_l_col$sd soilstate_type
R 1399 5 48 soilstatetype smp_l_col$p soilstate_type
R 1400 5 49 soilstatetype smp_l_col$o soilstate_type
R 1402 5 51 soilstatetype bsw_col soilstate_type
R 1405 5 54 soilstatetype bsw_col$sd soilstate_type
R 1406 5 55 soilstatetype bsw_col$p soilstate_type
R 1407 5 56 soilstatetype bsw_col$o soilstate_type
R 1409 5 58 soilstatetype watsat_col soilstate_type
R 1412 5 61 soilstatetype watsat_col$sd soilstate_type
R 1413 5 62 soilstatetype watsat_col$p soilstate_type
R 1414 5 63 soilstatetype watsat_col$o soilstate_type
R 1416 5 65 soilstatetype sucsat_col soilstate_type
R 1419 5 68 soilstatetype sucsat_col$sd soilstate_type
R 1420 5 69 soilstatetype sucsat_col$p soilstate_type
R 1421 5 70 soilstatetype sucsat_col$o soilstate_type
R 1423 5 72 soilstatetype dsl_col soilstate_type
R 1425 5 74 soilstatetype dsl_col$sd soilstate_type
R 1426 5 75 soilstatetype dsl_col$p soilstate_type
R 1427 5 76 soilstatetype dsl_col$o soilstate_type
R 1429 5 78 soilstatetype soilresis_col soilstate_type
R 1431 5 80 soilstatetype soilresis_col$sd soilstate_type
R 1432 5 81 soilstatetype soilresis_col$p soilstate_type
R 1433 5 82 soilstatetype soilresis_col$o soilstate_type
R 1435 5 84 soilstatetype thk_col soilstate_type
R 1438 5 87 soilstatetype thk_col$sd soilstate_type
R 1439 5 88 soilstatetype thk_col$p soilstate_type
R 1440 5 89 soilstatetype thk_col$o soilstate_type
R 1442 5 91 soilstatetype tkmg_col soilstate_type
R 1445 5 94 soilstatetype tkmg_col$sd soilstate_type
R 1446 5 95 soilstatetype tkmg_col$p soilstate_type
R 1447 5 96 soilstatetype tkmg_col$o soilstate_type
R 1449 5 98 soilstatetype tkdry_col soilstate_type
R 1452 5 101 soilstatetype tkdry_col$sd soilstate_type
R 1453 5 102 soilstatetype tkdry_col$p soilstate_type
R 1454 5 103 soilstatetype tkdry_col$o soilstate_type
R 1456 5 105 soilstatetype csol_col soilstate_type
R 1459 5 108 soilstatetype csol_col$sd soilstate_type
R 1460 5 109 soilstatetype csol_col$p soilstate_type
R 1461 5 110 soilstatetype csol_col$o soilstate_type
R 1463 5 112 soilstatetype rootfr_patch soilstate_type
R 1466 5 115 soilstatetype rootfr_patch$sd soilstate_type
R 1467 5 116 soilstatetype rootfr_patch$p soilstate_type
R 1468 5 117 soilstatetype rootfr_patch$o soilstate_type
R 1472 5 121 soilstatetype initallocate$tbp$0 soilstate_type
R 1473 5 122 soilstatetype init$tbp$1 soilstate_type
R 1490 25 7 waterstatebulktype waterstatebulk_type
R 1491 5 8 waterstatebulktype h2osoi_liq_col waterstatebulk_type
R 1494 5 11 waterstatebulktype h2osoi_liq_col$sd waterstatebulk_type
R 1495 5 12 waterstatebulktype h2osoi_liq_col$p waterstatebulk_type
R 1496 5 13 waterstatebulktype h2osoi_liq_col$o waterstatebulk_type
R 1498 5 15 waterstatebulktype h2osoi_ice_col waterstatebulk_type
R 1501 5 18 waterstatebulktype h2osoi_ice_col$sd waterstatebulk_type
R 1502 5 19 waterstatebulktype h2osoi_ice_col$p waterstatebulk_type
R 1503 5 20 waterstatebulktype h2osoi_ice_col$o waterstatebulk_type
R 1505 5 22 waterstatebulktype h2osoi_vol_col waterstatebulk_type
R 1508 5 25 waterstatebulktype h2osoi_vol_col$sd waterstatebulk_type
R 1509 5 26 waterstatebulktype h2osoi_vol_col$p waterstatebulk_type
R 1510 5 27 waterstatebulktype h2osoi_vol_col$o waterstatebulk_type
R 1512 5 29 waterstatebulktype h2osfc_col waterstatebulk_type
R 1514 5 31 waterstatebulktype h2osfc_col$sd waterstatebulk_type
R 1515 5 32 waterstatebulktype h2osfc_col$p waterstatebulk_type
R 1516 5 33 waterstatebulktype h2osfc_col$o waterstatebulk_type
R 1520 5 37 waterstatebulktype initallocate$tbp$0 waterstatebulk_type
R 1521 5 38 waterstatebulktype init$tbp$1 waterstatebulk_type
R 1536 25 5 canopystatetype canopystate_type
R 1537 5 6 canopystatetype frac_veg_nosno_patch canopystate_type
R 1539 5 8 canopystatetype frac_veg_nosno_patch$sd canopystate_type
R 1540 5 9 canopystatetype frac_veg_nosno_patch$p canopystate_type
R 1541 5 10 canopystatetype frac_veg_nosno_patch$o canopystate_type
R 1543 5 12 canopystatetype elai_patch canopystate_type
R 1545 5 14 canopystatetype elai_patch$sd canopystate_type
R 1546 5 15 canopystatetype elai_patch$p canopystate_type
R 1547 5 16 canopystatetype elai_patch$o canopystate_type
R 1549 5 18 canopystatetype esai_patch canopystate_type
R 1551 5 20 canopystatetype esai_patch$sd canopystate_type
R 1552 5 21 canopystatetype esai_patch$p canopystate_type
R 1553 5 22 canopystatetype esai_patch$o canopystate_type
R 1555 5 24 canopystatetype htop_patch canopystate_type
R 1557 5 26 canopystatetype htop_patch$sd canopystate_type
R 1558 5 27 canopystatetype htop_patch$p canopystate_type
R 1559 5 28 canopystatetype htop_patch$o canopystate_type
R 1563 5 32 canopystatetype initallocate$tbp$0 canopystate_type
R 1564 5 33 canopystatetype init$tbp$1 canopystate_type
R 1580 25 6 surfacealbedotype surfalb_type
R 1581 5 7 surfacealbedotype coszen_col surfalb_type
R 1583 5 9 surfacealbedotype coszen_col$sd surfalb_type
R 1584 5 10 surfacealbedotype coszen_col$p surfalb_type
R 1585 5 11 surfacealbedotype coszen_col$o surfalb_type
R 1587 5 13 surfacealbedotype albd_patch surfalb_type
R 1590 5 16 surfacealbedotype albd_patch$sd surfalb_type
R 1591 5 17 surfacealbedotype albd_patch$p surfalb_type
R 1592 5 18 surfacealbedotype albd_patch$o surfalb_type
R 1594 5 20 surfacealbedotype albi_patch surfalb_type
R 1597 5 23 surfacealbedotype albi_patch$sd surfalb_type
R 1598 5 24 surfacealbedotype albi_patch$p surfalb_type
R 1599 5 25 surfacealbedotype albi_patch$o surfalb_type
R 1601 5 27 surfacealbedotype albgrd_col surfalb_type
R 1604 5 30 surfacealbedotype albgrd_col$sd surfalb_type
R 1605 5 31 surfacealbedotype albgrd_col$p surfalb_type
R 1606 5 32 surfacealbedotype albgrd_col$o surfalb_type
R 1608 5 34 surfacealbedotype albgri_col surfalb_type
R 1611 5 37 surfacealbedotype albgri_col$sd surfalb_type
R 1612 5 38 surfacealbedotype albgri_col$p surfalb_type
R 1613 5 39 surfacealbedotype albgri_col$o surfalb_type
R 1617 5 43 surfacealbedotype initallocate$tbp$0 surfalb_type
R 1618 5 44 surfacealbedotype init$tbp$1 surfalb_type
S 1630 16 1 0 0 6 1 624 5359 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_byte
S 1631 16 0 0 0 6 1 624 5367 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_int1
S 1632 16 0 0 0 6 1 624 5375 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_char
S 1633 16 1 0 0 6 1 624 5383 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 3 27 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_short
S 1634 16 0 0 0 6 1 624 5392 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 3 27 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_int2
S 1635 16 0 0 0 6 1 624 5400 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_int
S 1636 16 1 0 0 6 1 624 5407 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 5 31 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_float
S 1637 16 0 0 0 6 1 624 5416 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 5 31 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_real
S 1638 16 0 0 0 6 1 624 5424 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 6 18 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_double
S 1639 16 0 0 0 6 1 624 5434 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 7 35 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ubyte
S 1640 16 0 0 0 6 1 624 5443 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8 13 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ushort
S 1641 16 0 0 0 6 1 624 5453 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 9 38 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_uint
S 1642 16 0 0 0 6 1 624 5461 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 10 40 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_int64
S 1643 16 0 0 0 6 1 624 5470 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 11 42 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_uint64
S 1644 16 1 0 0 6 1 624 5480 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -127 44 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_byte
S 1645 16 0 0 0 6 1 624 5493 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -127 44 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_int1
S 1646 16 0 0 0 6 1 624 5506 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_char
S 1647 16 1 0 0 6 1 624 5519 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -32767 48 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_short
S 1648 16 0 0 0 6 1 624 5533 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -32767 48 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_int2
S 1649 16 0 0 0 6 1 624 5546 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -2147483647 51 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_int
S 1650 16 1 0 0 9 1 624 5558 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2096103424 53 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_float
S 1651 16 0 0 0 9 1 624 5572 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2096103424 53 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_real
S 1652 16 0 0 0 10 1 624 5585 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 668 56 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_double
S 1656 16 0 0 0 6 1 624 5600 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_nowrite
S 1657 16 0 0 0 6 1 624 5611 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_write
S 1658 16 1 0 0 6 1 624 5620 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_clobber
S 1659 16 1 0 0 6 1 624 5631 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_noclobber
S 1660 16 0 0 0 6 1 624 5644 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill
S 1661 16 0 0 0 6 1 624 5652 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 256 17 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_nofill
S 1662 16 0 0 0 6 1 624 5662 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1024 64 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_lock
S 1663 16 0 0 0 6 1 624 5670 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2048 66 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_share
S 1664 16 0 0 0 6 1 624 5679 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 512 68 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_64bit_offset
S 1665 16 1 0 0 6 1 624 5695 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32 70 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_64bit_data
S 1666 16 0 0 0 6 1 624 5709 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32 70 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_cdf5
S 1667 16 0 0 0 6 1 624 5717 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_sizehint_default
S 1668 16 0 0 0 6 1 624 5737 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 74 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_align_chunk
S 1669 16 0 0 0 6 1 624 5752 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_classic
S 1670 16 1 0 0 6 1 624 5770 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_64bit
S 1671 16 0 0 0 6 1 624 5786 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_64bit_offset
S 1672 16 1 0 0 6 1 624 5809 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 5 31 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_64bit_data
S 1673 16 0 0 0 6 1 624 5830 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 5 31 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_cdf5
S 1674 16 0 0 0 6 1 624 5845 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8 13 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_diskless
S 1675 16 0 0 0 6 1 624 5857 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 16 82 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_mmap
S 1676 16 0 0 0 6 1 624 5865 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_unlimited
S 1677 16 0 0 0 6 1 624 5878 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_global
S 1678 16 1 0 0 6 1 624 5888 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1024 64 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_max_dims
S 1679 16 0 0 0 6 1 624 5900 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8192 87 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_max_attrs
S 1680 16 0 0 0 6 1 624 5913 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8192 87 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_max_vars
S 1681 16 0 0 0 6 1 624 5925 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 256 17 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_max_name
S 1682 16 0 0 0 6 1 624 5937 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1024 64 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_max_var_dims
S 1683 16 1 0 0 6 1 624 5953 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_noerr
S 1684 16 1 0 0 6 1 624 5962 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -33 93 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadid
S 1685 16 1 0 0 6 1 624 5972 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -35 95 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eexist
S 1686 16 1 0 0 6 1 624 5982 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -36 97 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_einval
S 1687 16 1 0 0 6 1 624 5992 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -37 99 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eperm
S 1688 16 1 0 0 6 1 624 6001 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -38 101 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotindefine
S 1689 16 1 0 0 6 1 624 6017 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -39 103 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eindefine
S 1690 16 1 0 0 6 1 624 6030 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -40 105 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_einvalcoords
S 1691 16 1 0 0 6 1 624 6046 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -41 107 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_emaxdims
S 1692 16 1 0 0 6 1 624 6058 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -42 109 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enameinuse
S 1693 16 1 0 0 6 1 624 6072 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -43 111 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotatt
S 1694 16 1 0 0 6 1 624 6083 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -44 113 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_emaxatts
S 1695 16 1 0 0 6 1 624 6095 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -45 115 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadtype
S 1696 16 1 0 0 6 1 624 6107 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -46 117 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebaddim
S 1697 16 1 0 0 6 1 624 6118 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -47 119 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eunlimpos
S 1698 16 1 0 0 6 1 624 6131 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -48 121 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_emaxvars
S 1699 16 1 0 0 6 1 624 6143 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -49 123 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotvar
S 1700 16 1 0 0 6 1 624 6154 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -50 125 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eglobal
S 1701 16 1 0 0 6 1 624 6165 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -51 127 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotnc
S 1702 16 1 0 0 6 1 624 6175 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -52 129 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ests
S 1703 16 1 0 0 6 1 624 6183 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -53 131 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_emaxname
S 1704 16 0 0 0 6 1 624 6195 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -54 133 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eunlimit
S 1705 16 0 0 0 6 1 624 6207 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -55 135 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enorecvars
S 1706 16 0 0 0 6 1 624 6221 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -56 137 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_echar
S 1707 16 0 0 0 6 1 624 6230 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -57 139 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eedge
S 1708 16 0 0 0 6 1 624 6239 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -58 141 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_estride
S 1709 16 0 0 0 6 1 624 6250 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -59 143 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadname
S 1710 16 0 0 0 6 1 624 6262 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -60 145 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_erange
S 1711 16 0 0 0 6 1 624 6272 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -61 147 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enomem
S 1712 16 0 0 0 6 1 624 6282 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -62 149 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_evarsize
S 1713 16 0 0 0 6 1 624 6294 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -63 151 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_edimsize
S 1714 16 0 0 0 6 1 624 6306 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -64 153 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_etrunc
S 1745 16 0 0 0 6 1 624 6316 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fatal
S 1746 16 0 0 0 6 1 624 6325 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_verbose
S 1747 14 0 0 0 352 1 624 6336 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_libvers nf_inq_libvers 
S 1748 14 0 0 0 352 1 624 6351 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_strerror nf_strerror 
S 1749 14 0 0 0 18 1 624 6363 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_issyserr nf_issyserr 
S 1750 14 0 0 0 6 1 624 6375 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_base_pe nf_inq_base_pe 
S 1751 14 0 0 0 6 1 624 6390 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_set_base_pe nf_set_base_pe 
S 1752 14 0 0 0 6 1 624 6405 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_create nf_create 
S 1753 14 0 0 0 6 1 624 6415 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf__create nf__create 
S 1754 14 0 0 0 6 1 624 6426 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf__create_mp nf__create_mp 
S 1755 14 0 0 0 6 1 624 6440 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_open nf_open 
S 1756 14 0 0 0 6 1 624 6448 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf__open nf__open 
S 1757 14 0 0 0 6 1 624 6457 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf__open_mp nf__open_mp 
S 1758 14 0 0 0 6 1 624 6469 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_set_fill nf_set_fill 
S 1759 14 0 0 0 6 1 624 6481 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_set_default_format nf_set_default_format 
S 1760 14 0 0 0 6 1 624 6503 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_redef nf_redef 
S 1761 14 0 0 0 6 1 624 6512 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enddef nf_enddef 
S 1762 14 0 0 0 6 1 624 6522 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf__enddef nf__enddef 
S 1763 14 0 0 0 6 1 624 6533 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_sync nf_sync 
S 1764 14 0 0 0 6 1 624 6541 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_abort nf_abort 
S 1765 14 0 0 0 6 1 624 6550 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_close nf_close 
S 1766 14 0 0 0 6 1 624 6559 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_delete nf_delete 
S 1767 14 0 0 0 6 1 624 6569 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq nf_inq 
S 1768 14 0 0 0 6 1 624 6576 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_path nf_inq_path 
S 1769 14 0 0 0 6 1 624 6588 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_ndims nf_inq_ndims 
S 1770 14 0 0 0 6 1 624 6601 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_nvars nf_inq_nvars 
S 1771 14 0 0 0 6 1 624 6614 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_natts nf_inq_natts 
S 1772 14 0 0 0 6 1 624 6627 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_unlimdim nf_inq_unlimdim 
S 1773 14 0 0 0 6 1 624 6643 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_format nf_inq_format 
S 1774 14 0 0 0 6 1 624 6657 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_dim nf_def_dim 
S 1775 14 0 0 0 6 1 624 6668 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_dimid nf_inq_dimid 
S 1776 14 0 0 0 6 1 624 6681 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_dim nf_inq_dim 
S 1777 14 0 0 0 6 1 624 6692 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_dimname nf_inq_dimname 
S 1778 14 0 0 0 6 1 624 6707 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_dimlen nf_inq_dimlen 
S 1779 14 0 0 0 6 1 624 6721 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_rename_dim nf_rename_dim 
S 1780 14 0 0 0 6 1 624 6735 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_att nf_inq_att 
S 1781 14 0 0 0 6 1 624 6746 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_attid nf_inq_attid 
S 1782 14 0 0 0 6 1 624 6759 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_atttype nf_inq_atttype 
S 1783 14 0 0 0 6 1 624 6774 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_attlen nf_inq_attlen 
S 1784 14 0 0 0 6 1 624 6788 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_attname nf_inq_attname 
S 1785 14 0 0 0 6 1 624 6803 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_copy_att nf_copy_att 
S 1786 14 0 0 0 6 1 624 6815 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_rename_att nf_rename_att 
S 1787 14 0 0 0 6 1 624 6829 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_del_att nf_del_att 
S 1788 14 0 0 0 6 1 624 6840 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_text nf_put_att_text 
S 1789 14 0 0 0 6 1 624 6856 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_text nf_get_att_text 
S 1790 14 0 0 0 6 1 624 6872 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_int1 nf_put_att_int1 
S 1791 14 0 0 0 6 1 624 6888 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_int1 nf_get_att_int1 
S 1792 14 0 0 0 6 1 624 6904 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_int2 nf_put_att_int2 
S 1793 14 0 0 0 6 1 624 6920 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_int2 nf_get_att_int2 
S 1794 14 0 0 0 6 1 624 6936 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_int nf_put_att_int 
S 1795 14 0 0 0 6 1 624 6951 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_int nf_get_att_int 
S 1796 14 0 0 0 6 1 624 6966 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_int64 nf_put_att_int64 
S 1797 14 0 0 0 6 1 624 6983 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_int64 nf_get_att_int64 
S 1798 14 0 0 0 6 1 624 7000 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_real nf_put_att_real 
S 1799 14 0 0 0 6 1 624 7016 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_real nf_get_att_real 
S 1800 14 0 0 0 6 1 624 7032 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att_double nf_put_att_double 
S 1801 14 0 0 0 6 1 624 7050 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att_double nf_get_att_double 
S 1802 14 0 0 0 6 1 624 7068 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var nf_def_var 
S 1803 14 0 0 0 6 1 624 7079 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var nf_inq_var 
S 1804 14 0 0 0 6 1 624 7090 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_varid nf_inq_varid 
S 1805 14 0 0 0 6 1 624 7103 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_varname nf_inq_varname 
S 1806 14 0 0 0 6 1 624 7118 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_vartype nf_inq_vartype 
S 1807 14 0 0 0 6 1 624 7133 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_varndims nf_inq_varndims 
S 1808 14 0 0 0 6 1 624 7149 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_vardimid nf_inq_vardimid 
S 1809 14 0 0 0 6 1 624 7165 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_varnatts nf_inq_varnatts 
S 1810 14 0 0 0 6 1 624 7181 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_rename_var nf_rename_var 
S 1811 14 0 0 0 6 1 624 7195 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_copy_var nf_copy_var 
S 1812 14 0 0 0 6 1 624 7207 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_text nf_put_var_text 
S 1813 14 0 0 0 6 1 624 7223 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_text nf_get_var_text 
S 1814 14 0 0 0 6 1 624 7239 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_int1 nf_put_var_int1 
S 1815 14 0 0 0 6 1 624 7255 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_int1 nf_get_var_int1 
S 1816 14 0 0 0 6 1 624 7271 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_int2 nf_put_var_int2 
S 1817 14 0 0 0 6 1 624 7287 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_int2 nf_get_var_int2 
S 1818 14 0 0 0 6 1 624 7303 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_int nf_put_var_int 
S 1819 14 0 0 0 6 1 624 7318 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_int nf_get_var_int 
S 1820 14 0 0 0 6 1 624 7333 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_real nf_put_var_real 
S 1821 14 0 0 0 6 1 624 7349 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_real nf_get_var_real 
S 1822 14 0 0 0 6 1 624 7365 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_double nf_put_var_double 
S 1823 14 0 0 0 6 1 624 7383 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_double nf_get_var_double 
S 1824 14 0 0 0 6 1 624 7401 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_text nf_put_var1_text 
S 1825 14 0 0 0 6 1 624 7418 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_text nf_get_var1_text 
S 1826 14 0 0 0 6 1 624 7435 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_int1 nf_put_var1_int1 
S 1827 14 0 0 0 6 1 624 7452 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_int1 nf_get_var1_int1 
S 1828 14 0 0 0 6 1 624 7469 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_int2 nf_put_var1_int2 
S 1829 14 0 0 0 6 1 624 7486 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_int2 nf_get_var1_int2 
S 1830 14 0 0 0 6 1 624 7503 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_int nf_put_var1_int 
S 1831 14 0 0 0 6 1 624 7519 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_int nf_get_var1_int 
S 1832 14 0 0 0 6 1 624 7535 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_real nf_put_var1_real 
S 1833 14 0 0 0 6 1 624 7552 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_real nf_get_var1_real 
S 1834 14 0 0 0 6 1 624 7569 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_double nf_put_var1_double 
S 1835 14 0 0 0 6 1 624 7588 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_double nf_get_var1_double 
S 1836 14 0 0 0 6 1 624 7607 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_text nf_put_vara_text 
S 1837 14 0 0 0 6 1 624 7624 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_text nf_get_vara_text 
S 1838 14 0 0 0 6 1 624 7641 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_int1 nf_put_vara_int1 
S 1839 14 0 0 0 6 1 624 7658 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_int1 nf_get_vara_int1 
S 1840 14 0 0 0 6 1 624 7675 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_int2 nf_put_vara_int2 
S 1841 14 0 0 0 6 1 624 7692 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_int2 nf_get_vara_int2 
S 1842 14 0 0 0 6 1 624 7709 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_int nf_put_vara_int 
S 1843 14 0 0 0 6 1 624 7725 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_int nf_get_vara_int 
S 1844 14 0 0 0 6 1 624 7741 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_real nf_put_vara_real 
S 1845 14 0 0 0 6 1 624 7758 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_real nf_get_vara_real 
S 1846 14 0 0 0 6 1 624 7775 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_double nf_put_vara_double 
S 1847 14 0 0 0 6 1 624 7794 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_double nf_get_vara_double 
S 1848 14 0 0 0 6 1 624 7813 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_text nf_put_vars_text 
S 1849 14 0 0 0 6 1 624 7830 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_text nf_get_vars_text 
S 1850 14 0 0 0 6 1 624 7847 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_int1 nf_put_vars_int1 
S 1851 14 0 0 0 6 1 624 7864 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_int1 nf_get_vars_int1 
S 1852 14 0 0 0 6 1 624 7881 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_int2 nf_put_vars_int2 
S 1853 14 0 0 0 6 1 624 7898 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_int2 nf_get_vars_int2 
S 1854 14 0 0 0 6 1 624 7915 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_int nf_put_vars_int 
S 1855 14 0 0 0 6 1 624 7931 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_int nf_get_vars_int 
S 1856 14 0 0 0 6 1 624 7947 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_real nf_put_vars_real 
S 1857 14 0 0 0 6 1 624 7964 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_real nf_get_vars_real 
S 1858 14 0 0 0 6 1 624 7981 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_double nf_put_vars_double 
S 1859 14 0 0 0 6 1 624 8000 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_double nf_get_vars_double 
S 1860 14 0 0 0 6 1 624 8019 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_text nf_put_varm_text 
S 1861 14 0 0 0 6 1 624 8036 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_text nf_get_varm_text 
S 1862 14 0 0 0 6 1 624 8053 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_int1 nf_put_varm_int1 
S 1863 14 0 0 0 6 1 624 8070 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_int1 nf_get_varm_int1 
S 1864 14 0 0 0 6 1 624 8087 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_int2 nf_put_varm_int2 
S 1865 14 0 0 0 6 1 624 8104 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_int2 nf_get_varm_int2 
S 1866 14 0 0 0 6 1 624 8121 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_int nf_put_varm_int 
S 1867 14 0 0 0 6 1 624 8137 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_int nf_get_varm_int 
S 1868 14 0 0 0 6 1 624 8153 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_real nf_put_varm_real 
S 1869 14 0 0 0 6 1 624 8170 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_real nf_get_varm_real 
S 1870 14 0 0 0 6 1 624 8187 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_double nf_put_varm_double 
S 1871 14 0 0 0 6 1 624 8206 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_double nf_get_varm_double 
S 1872 14 0 0 0 6 1 624 8225 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1_int64 nf_put_var1_int64 
S 1873 14 0 0 0 6 1 624 8243 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara_int64 nf_put_vara_int64 
S 1874 14 0 0 0 6 1 624 8261 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars_int64 nf_put_vars_int64 
S 1875 14 0 0 0 6 1 624 8279 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_varm_int64 nf_put_varm_int64 
S 1876 14 0 0 0 6 1 624 8297 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var_int64 nf_put_var_int64 
S 1877 14 0 0 0 6 1 624 8314 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1_int64 nf_get_var1_int64 
S 1878 14 0 0 0 6 1 624 8332 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara_int64 nf_get_vara_int64 
S 1879 14 0 0 0 6 1 624 8350 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars_int64 nf_get_vars_int64 
S 1880 14 0 0 0 6 1 624 8368 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_varm_int64 nf_get_varm_int64 
S 1881 14 0 0 0 6 1 624 8386 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_int64 nf_get_var_int64 
S 1882 16 0 0 0 6 1 624 8403 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 12 157 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_string
S 1883 16 0 0 0 6 1 624 8413 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 13 159 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_vlen
S 1884 16 0 0 0 6 1 624 8421 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 14 161 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_opaque
S 1885 16 0 0 0 6 1 624 8431 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 15 163 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enum
S 1886 16 0 0 0 6 1 624 8439 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 16 82 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_compound
S 1887 16 0 0 0 6 1 624 8451 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 255 166 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_ubyte
S 1888 16 0 0 0 6 1 624 8465 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 65535 168 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fill_ushort
S 1889 16 0 0 0 6 1 624 8480 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 3 27 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_netcdf4
S 1890 16 0 0 0 6 1 624 8498 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_format_netcdf4_classic
S 1891 16 0 0 0 6 1 624 8524 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4096 172 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_netcdf4
S 1892 16 0 0 0 6 1 624 8535 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 256 17 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_classic_model
S 1893 16 0 0 0 6 1 624 8552 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_chunk_seq
S 1894 16 0 0 0 6 1 624 8565 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_chunk_sub
S 1895 16 0 0 0 6 1 624 8578 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_chunk_sizes
S 1896 16 0 0 0 6 1 624 8593 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_endian_native
S 1897 16 0 0 0 6 1 624 8610 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_endian_little
S 1898 16 0 0 0 6 1 624 8627 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_endian_big
S 1899 16 0 0 0 6 1 624 8641 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_chunked
S 1900 16 0 0 0 6 1 624 8652 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_contiguous
S 1901 16 0 0 0 6 1 624 8666 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_compact
S 1902 16 0 0 0 6 1 624 8677 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_nochecksum
S 1903 16 0 0 0 6 1 624 8691 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_fletcher32
S 1904 16 0 0 0 6 1 624 8705 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_noshuffle
S 1905 16 0 0 0 6 1 624 8718 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_shuffle
S 1906 16 0 0 0 6 1 624 8729 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_szip_ec_option_mask
S 1907 16 0 0 0 6 1 624 8752 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32 70 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_szip_nn_option_mask
S 1908 16 0 0 0 6 1 624 8775 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8192 87 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_mpiio
S 1909 16 0 0 0 6 1 624 8784 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 16384 191 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_mpiposix
S 1910 16 0 0 0 6 1 624 8796 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32768 193 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_pnetcdf
S 1911 16 0 0 0 6 1 624 8807 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_independent
S 1912 16 0 0 0 6 1 624 8822 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_collective
S 1913 16 0 0 0 6 1 624 8836 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_noquantize
S 1914 16 0 0 0 6 1 624 8850 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_quantize_bitgroom
S 1915 16 0 0 0 6 1 624 8871 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_quantize_granularbr
S 1916 16 0 0 0 6 1 624 8894 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 3 27 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_quantize_bitround
S 1917 16 0 0 0 6 1 624 8915 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -101 201 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ehdferr
S 1919 16 0 0 0 6 1 624 8926 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -102 203 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ecantread
S 1921 16 0 0 0 6 1 624 8939 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -103 205 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ecantwrite
S 1923 16 0 0 0 6 1 624 8953 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -104 207 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ecantcreate
S 1925 16 0 0 0 6 1 624 8968 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -105 209 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_efilemeta
S 1927 16 0 0 0 6 1 624 8981 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -106 211 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_edimmeta
S 1929 16 0 0 0 6 1 624 8993 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -107 213 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eattmeta
S 1931 16 0 0 0 6 1 624 9005 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -108 215 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_evarmeta
S 1933 16 0 0 0 6 1 624 9017 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -109 217 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enocompound
S 1935 16 0 0 0 6 1 624 9032 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -110 219 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eattexists
S 1937 16 0 0 0 6 1 624 9046 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -111 221 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotnc4
S 1939 16 0 0 0 6 1 624 9057 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -112 223 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_estrictnc3
S 1941 16 0 0 0 6 1 624 9071 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -113 225 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotnc3
S 1943 16 0 0 0 6 1 624 9082 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -114 227 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enopar
S 1945 16 0 0 0 6 1 624 9092 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -115 229 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eparinit
S 1947 16 0 0 0 6 1 624 9104 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -116 231 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadgrpid
S 1949 16 0 0 0 6 1 624 9117 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -117 233 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadtypid
S 1951 16 0 0 0 6 1 624 9130 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -118 235 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_etypdefined
S 1953 16 0 0 0 6 1 624 9145 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -119 237 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadfield
S 1955 16 0 0 0 6 1 624 9158 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -120 239 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadclass
S 1957 16 0 0 0 6 1 624 9171 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -121 241 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_emaptype
S 1959 16 0 0 0 6 1 624 9183 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -122 243 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_elatefill
S 1961 16 0 0 0 6 1 624 9196 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -123 245 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_elatedef
S 1963 16 0 0 0 6 1 624 9208 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -124 247 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_edimscale
S 1965 16 0 0 0 6 1 624 9221 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -125 249 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enogrp
S 1967 16 0 0 0 6 1 624 9231 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -126 251 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_estorage
S 1969 16 0 0 0 6 1 624 9243 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -127 44 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ebadchunk
S 1970 16 0 0 0 6 1 624 9256 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -128 254 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enotbuilt
S 1971 16 0 0 0 6 1 624 9269 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -129 256 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ediskless
S 1973 16 0 0 0 6 1 624 9282 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -130 258 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ecantextend
S 1975 16 0 0 0 6 1 624 9297 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -131 260 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_empi
S 1977 16 0 0 0 6 1 624 9305 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -132 262 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_efilter
S 1979 16 0 0 0 6 1 624 9316 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -133 264 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_ercfile
S 1981 16 0 0 0 6 1 624 9327 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -134 266 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enullpad
S 1983 16 0 0 0 6 1 624 9339 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -135 268 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_einmemory
S 1985 16 0 0 0 6 1 624 9352 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -136 270 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enofilter
S 1987 16 0 0 0 6 1 624 9365 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -137 272 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enczarr
S 1989 16 0 0 0 6 1 624 9376 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -138 274 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_es3
S 1991 16 0 0 0 6 1 624 9383 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -139 276 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eempty
S 1993 16 0 0 0 6 1 624 9393 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -140 278 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eobject
S 1995 16 0 0 0 6 1 624 9404 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -141 280 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_enoobject
S 1997 16 0 0 0 6 1 624 9417 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -142 282 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_eplugin
S 1999 14 0 0 0 6 1 624 9428 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_create_par nf_create_par 
S 2000 14 0 0 0 6 1 624 9442 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_open_par nf_open_par 
S 2001 14 0 0 0 6 1 624 9454 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_var_par_access nf_var_par_access 
S 2002 14 0 0 0 6 1 624 9472 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_ncid nf_inq_ncid 
S 2003 14 0 0 0 6 1 624 9484 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grps nf_inq_grps 
S 2004 14 0 0 0 6 1 624 9496 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grpname nf_inq_grpname 
S 2005 14 0 0 0 6 1 624 9511 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grpname_full nf_inq_grpname_full 
S 2006 14 0 0 0 6 1 624 9531 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grpname_len nf_inq_grpname_len 
S 2007 14 0 0 0 6 1 624 9550 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grp_parent nf_inq_grp_parent 
S 2008 14 0 0 0 6 1 624 9568 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grp_ncid nf_inq_grp_ncid 
S 2009 14 0 0 0 6 1 624 9584 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_grp_full_ncid nf_inq_grp_full_ncid 
S 2010 14 0 0 0 6 1 624 9605 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_varids nf_inq_varids 
S 2011 14 0 0 0 6 1 624 9619 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_dimids nf_inq_dimids 
S 2012 14 0 0 0 6 1 624 9633 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_grp nf_def_grp 
S 2013 14 0 0 0 6 1 624 9644 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_rename_grp nf_rename_grp 
S 2014 14 0 0 0 6 1 624 9658 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_deflate nf_def_var_deflate 
S 2015 14 0 0 0 6 1 624 9677 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_deflate nf_inq_var_deflate 
S 2016 14 0 0 0 6 1 624 9696 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_zstandard nf_def_var_zstandard 
S 2017 14 0 0 0 6 1 624 9717 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_zstandard nf_inq_var_zstandard 
S 2018 14 0 0 0 6 1 624 9738 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_szip nf_def_var_szip 
S 2019 14 0 0 0 6 1 624 9754 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_szip nf_inq_var_szip 
S 2020 14 0 0 0 6 1 624 9770 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_quantize nf_def_var_quantize 
S 2021 14 0 0 0 6 1 624 9790 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_quantize nf_inq_var_quantize 
S 2022 14 0 0 0 6 1 624 9810 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_fletcher32 nf_def_var_fletcher32 
S 2023 14 0 0 0 6 1 624 9832 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_fletcher32 nf_inq_var_fletcher32 
S 2024 14 0 0 0 6 1 624 9854 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_chunking nf_def_var_chunking 
S 2025 14 0 0 0 6 1 624 9874 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_chunking nf_inq_var_chunking 
S 2026 14 0 0 0 6 1 624 9894 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_fill nf_def_var_fill 
S 2027 14 0 0 0 6 1 624 9910 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_fill nf_inq_var_fill 
S 2028 14 0 0 0 6 1 624 9926 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_endian nf_def_var_endian 
S 2029 14 0 0 0 6 1 624 9944 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_endian nf_inq_var_endian 
S 2030 14 0 0 0 6 1 624 9962 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_var_filter nf_def_var_filter 
S 2031 14 0 0 0 6 1 624 9980 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_var_filter nf_inq_var_filter 
S 2032 14 0 0 0 6 1 624 9998 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_typeids nf_inq_typeids 
S 2033 14 0 0 0 6 1 624 10013 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_typeid nf_inq_typeid 
S 2034 14 0 0 0 6 1 624 10027 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_type nf_inq_type 
S 2035 14 0 0 0 6 1 624 10039 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_user_type nf_inq_user_type 
S 2036 14 0 0 0 6 1 624 10056 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_compound nf_def_compound 
S 2037 14 0 0 0 6 1 624 10072 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_insert_compound nf_insert_compound 
S 2038 14 0 0 0 6 1 624 10091 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_insert_array_compound nf_insert_array_compound 
S 2039 14 0 0 0 6 1 624 10116 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound nf_inq_compound 
S 2040 14 0 0 0 6 1 624 10132 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_name nf_inq_compound_name 
S 2041 14 0 0 0 6 1 624 10153 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_size nf_inq_compound_size 
S 2042 14 0 0 0 6 1 624 10174 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_nfields nf_inq_compound_nfields 
S 2043 14 0 0 0 6 1 624 10198 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_field nf_inq_compound_field 
S 2044 14 0 0 0 6 1 624 10220 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_fieldname nf_inq_compound_fieldname 
S 2045 14 0 0 0 6 1 624 10246 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_fieldindex nf_inq_compound_fieldindex 
S 2046 14 0 0 0 6 1 624 10273 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_fieldoffset nf_inq_compound_fieldoffset 
S 2047 14 0 0 0 6 1 624 10301 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_fieldtype nf_inq_compound_fieldtype 
S 2048 14 0 0 0 6 1 624 10327 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_fieldndims nf_inq_compound_fieldndims 
S 2049 14 0 0 0 6 1 624 10354 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_compound_fielddim_sizes nf_inq_compound_fielddim_sizes 
S 2050 14 0 0 0 6 1 624 10385 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_vlen nf_def_vlen 
S 2051 14 0 0 0 6 1 624 10397 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_vlen nf_inq_vlen 
S 2052 14 0 0 0 6 1 624 10409 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_free_vlen nf_free_vlen 
S 2053 14 0 0 0 6 1 624 10422 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_enum nf_def_enum 
S 2054 14 0 0 0 6 1 624 10434 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_insert_enum nf_insert_enum 
S 2055 14 0 0 0 6 1 624 10449 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_enum nf_inq_enum 
S 2056 14 0 0 0 6 1 624 10461 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_enum_member nf_inq_enum_member 
S 2057 14 0 0 0 6 1 624 10480 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_enum_ident nf_inq_enum_ident 
S 2058 14 0 0 0 6 1 624 10498 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_def_opaque nf_def_opaque 
S 2059 14 0 0 0 6 1 624 10512 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_inq_opaque nf_inq_opaque 
S 2060 14 0 0 0 6 1 624 10526 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_att nf_put_att 
S 2061 14 0 0 0 6 1 624 10537 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_att nf_get_att 
S 2062 14 0 0 0 6 1 624 10548 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var nf_put_var 
S 2063 14 0 0 0 6 1 624 10559 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_var1 nf_put_var1 
S 2064 14 0 0 0 6 1 624 10571 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vara nf_put_vara 
S 2065 14 0 0 0 6 1 624 10583 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vars nf_put_vars 
S 2066 14 0 0 0 6 1 624 10595 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var nf_get_var 
S 2067 14 0 0 0 6 1 624 10606 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var1 nf_get_var1 
S 2068 14 0 0 0 6 1 624 10618 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vara nf_get_vara 
S 2069 14 0 0 0 6 1 624 10630 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vars nf_get_vars 
S 2070 14 0 0 0 6 1 624 10642 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_vlen_element nf_get_vlen_element 
S 2071 14 0 0 0 6 1 624 10662 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_put_vlen_element nf_put_vlen_element 
S 2072 14 0 0 0 6 1 624 10682 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_set_chunk_cache nf_set_chunk_cache 
S 2073 14 0 0 0 6 1 624 10701 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_chunk_cache nf_get_chunk_cache 
S 2074 14 0 0 0 6 1 624 10720 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_set_var_chunk_cache nf_set_var_chunk_cache 
S 2075 14 0 0 0 6 1 624 10743 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_get_var_chunk_cache nf_get_var_chunk_cache 
S 2076 14 0 0 0 6 1 624 10766 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nccre nccre 
S 2077 14 0 0 0 6 1 624 10772 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncopn ncopn 
S 2078 14 0 0 0 6 1 624 10778 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncddef ncddef 
S 2079 14 0 0 0 6 1 624 10785 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncdid ncdid 
S 2080 14 0 0 0 6 1 624 10791 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncvdef ncvdef 
S 2081 14 0 0 0 6 1 624 10798 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncvid ncvid 
S 2082 14 0 0 0 6 1 624 10804 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nctlen nctlen 
S 2083 14 0 0 0 6 1 624 10811 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncsfil ncsfil 
S 2084 16 1 0 0 6 1 624 10818 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncrdwr
S 2085 16 0 0 0 6 1 624 10825 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nccreat
S 2086 16 0 0 0 6 1 624 10833 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncexcl
S 2087 16 0 0 0 6 1 624 10840 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8 13 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncindef
S 2088 16 0 0 0 6 1 624 10848 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 16 82 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncnsync
S 2089 16 0 0 0 6 1 624 10856 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32 70 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nchsync
S 2090 16 0 0 0 6 1 624 10864 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 64 290 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncndirty
S 2091 16 0 0 0 6 1 624 10873 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 128 292 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nchdirty
S 2092 16 0 0 0 6 1 624 10882 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32768 193 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nclink
S 2093 16 0 0 0 6 1 624 10889 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncnowrit
S 2094 16 0 0 0 6 1 624 10898 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncwrite
S 2095 16 0 0 0 6 1 624 10906 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncclob
S 2096 16 0 0 0 6 1 624 10913 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncnoclob
S 2097 16 0 0 0 6 1 624 10922 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncglobal
S 2098 16 0 0 0 6 1 624 10931 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncfill
S 2099 16 0 0 0 6 1 624 10938 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 256 17 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncnofill
S 2100 16 0 0 0 6 1 624 10947 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 64 290 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxncop
S 2101 16 1 0 0 6 1 624 10955 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1024 64 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxncdim
S 2102 16 0 0 0 6 1 624 10964 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8192 87 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxncatt
S 2103 16 0 0 0 6 1 624 10973 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 8192 87 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxncvar
S 2104 16 0 0 0 6 1 624 10982 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 256 17 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxncnam
S 2105 16 0 0 0 6 1 624 10991 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1024 64 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxvdims
S 2106 16 0 0 0 6 1 624 11000 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncnoerr
S 2107 16 0 0 0 6 1 624 11008 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -33 93 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncebadid
S 2108 16 0 0 0 6 1 624 11017 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -31 310 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncenfile
S 2109 16 0 0 0 6 1 624 11026 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -35 95 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nceexist
S 2110 16 0 0 0 6 1 624 11035 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -36 97 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nceinval
S 2111 16 0 0 0 6 1 624 11044 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -37 99 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nceperm
S 2112 16 0 0 0 6 1 624 11052 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -38 101 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncenotin
S 2113 16 0 0 0 6 1 624 11061 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -39 103 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nceindef
S 2114 16 0 0 0 6 1 624 11070 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -40 105 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncecoord
S 2115 16 0 0 0 6 1 624 11079 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -41 107 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncemaxds
S 2116 16 0 0 0 6 1 624 11088 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -42 109 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncename
S 2117 16 0 0 0 6 1 624 11096 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -43 111 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncenoatt
S 2118 16 0 0 0 6 1 624 11105 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -44 113 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncemaxat
S 2119 16 0 0 0 6 1 624 11114 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -45 115 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncebadty
S 2120 16 0 0 0 6 1 624 11123 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -46 117 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncebadd
S 2121 16 0 0 0 6 1 624 11131 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -52 129 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncests
S 2122 16 0 0 0 6 1 624 11138 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -47 119 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nceunlim
S 2123 16 0 0 0 6 1 624 11147 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -48 121 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncemaxvs
S 2124 16 0 0 0 6 1 624 11156 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -49 123 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncenotvr
S 2125 16 0 0 0 6 1 624 11165 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -50 125 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nceglob
S 2126 16 0 0 0 6 1 624 11173 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -51 127 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncenotnc
S 2127 16 0 0 0 6 1 624 11182 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 32 70 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncfoobar
S 2128 16 0 0 0 6 1 624 11191 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -31 310 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncsyserr
S 2129 16 0 0 0 6 1 624 11200 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncfatal
S 2130 16 0 0 0 6 1 624 11208 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncverbos
S 2131 16 0 0 0 6 1 624 11217 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -53 131 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncentool
S 2132 16 0 0 0 6 1 624 11226 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncbyte
S 2133 16 0 0 0 6 1 624 11233 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2 25 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncchar
S 2134 16 0 0 0 6 1 624 11240 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 3 27 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncshort
S 2135 16 0 0 0 6 1 624 11248 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 4 15 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nclong
S 2136 16 0 0 0 6 1 624 11255 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 5 31 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncfloat
S 2137 16 0 0 0 6 1 624 11263 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 6 18 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncdouble
S 2138 16 0 0 0 6 1 624 11272 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ncunlim
S 2140 16 0 0 0 6 1 624 11280 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -127 44 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 filbyte
S 2141 16 0 0 0 6 1 624 11288 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 filchar
S 2142 16 0 0 0 6 1 624 11296 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -32767 48 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 filshort
S 2143 16 0 0 0 6 1 624 11305 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -2147483647 51 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fillong
S 2144 16 0 0 0 9 1 624 11313 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2096103424 53 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 filfloat
S 2145 16 0 0 0 10 1 624 11322 4 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 668 56 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fildoub
S 2146 14 0 0 0 6 1 624 11330 10004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nf_set_log_level nf_set_log_level 
S 2147 27 0 0 0 9 2151 624 14709 0 8000000 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 clmdata
S 2148 27 0 0 0 9 2164 624 14717 10 8000000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 readclmveg
S 2149 27 0 0 0 9 2171 624 14728 10 8000000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 readclmsoil
S 2150 27 0 0 0 9 2179 624 14740 10 8000000 A 0 0 0 0 B 0 27 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 readsoilwatfactor
S 2151 23 5 0 0 0 2163 624 14709 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 clmdata
S 2152 1 3 1 0 30 1 2151 14758 4 43000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fin_clm
S 2153 1 3 1 0 30 1 2151 14766 4 43000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fin_soil_adjust
S 2154 1 3 1 0 6 1 2151 14782 4 3000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 strt
S 2155 1 3 1 0 6 1 2151 12034 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 begp
S 2156 1 3 1 0 6 1 2151 12039 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 endp
S 2157 1 3 1 0 6 1 2151 11982 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 begc
S 2158 1 3 1 0 6 1 2151 11987 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 endc
S 2159 1 3 1 0 122 1 2151 14787 4 3000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 2160 1 3 2 0 233 1 2151 14802 4 3000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 2161 1 3 2 0 272 1 2151 14822 4 3000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 canopystate_inst
S 2162 1 3 2 0 311 1 2151 14839 4 3000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 surfalb_inst
S 2163 14 5 0 0 0 1 2151 14709 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 39 11 0 0 0 0 0 0 0 0 0 0 0 0 33 0 624 0 0 0 0 clmdata clmdata 
F 2163 11 2152 2153 2154 2155 2156 2157 2158 2159 2160 2161 2162
S 2164 23 5 0 0 0 2169 624 14717 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 readclmveg
S 2165 1 3 1 0 30 1 2164 14852 4 43000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncfilename
S 2166 1 3 1 0 6 1 2164 14782 4 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 strt
S 2167 7 3 2 0 354 1 2164 14863 800004 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 elai_mod
S 2168 7 3 2 0 357 1 2164 14872 800004 3000 A 0 0 0 0 B 0 147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 esai_mod
S 2169 14 5 0 0 0 1 2164 14717 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 51 4 0 0 0 0 0 0 0 0 0 0 0 0 147 0 624 0 0 0 0 readclmveg readclmveg 
F 2169 4 2165 2166 2167 2168
S 2170 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 2171 23 5 0 0 0 2176 624 14728 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 readclmsoil
S 2172 1 3 1 0 30 1 2171 14852 4 43000 A 0 0 0 0 B 0 203 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncfilename
S 2173 1 3 1 0 6 1 2171 14782 4 3000 A 0 0 0 0 B 0 203 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 strt
S 2174 7 3 2 0 360 1 2171 14881 800204 3000 A 0 0 0 0 B 0 203 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 h2osoi_clm45
S 2175 7 3 2 0 363 1 2171 14894 800204 3000 A 0 0 0 0 B 0 203 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 h2osoi_clm50
S 2176 14 5 0 0 0 1 2171 14728 210 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 56 4 0 0 0 0 0 0 0 0 0 0 0 0 203 0 624 0 0 0 0 readclmsoil readclmsoil 
F 2176 4 2172 2173 2174 2175
S 2177 6 1 0 0 7 1 2171 14907 40800006 3000 A 0 0 0 0 B 0 216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1091
S 2178 6 1 0 0 7 1 2171 14916 40800006 3000 A 0 0 0 0 B 0 217 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1094
S 2179 23 5 0 0 0 2183 624 14740 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 readsoilwatfactor
S 2180 1 3 1 0 30 1 2179 14852 4 43000 A 0 0 0 0 B 0 275 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ncfilename
S 2181 1 3 1 0 6 1 2179 14782 4 3000 A 0 0 0 0 B 0 275 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 strt
S 2182 7 3 2 0 366 1 2179 14925 800004 3000 A 0 0 0 0 B 0 275 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 h2osoi_factor_loc
S 2183 14 5 0 0 0 1 2179 14740 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 61 3 0 0 0 0 0 0 0 0 0 0 0 0 275 0 624 0 0 0 0 readsoilwatfactor readsoilwatfactor 
F 2183 3 2180 2181 2182
A 13 2 0 0 0 6 643 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 644 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 649 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 18 2 0 0 0 6 648 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0
A 25 2 0 0 0 6 658 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0
A 27 2 0 0 0 6 659 0 0 0 27 0 0 0 0 0 0 0 0 0 0 0
A 31 2 0 0 0 6 660 0 0 0 31 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 661 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 38 2 0 0 0 6 662 0 0 0 38 0 0 0 0 0 0 0 0 0 0 0
A 40 2 0 0 0 6 657 0 0 0 40 0 0 0 0 0 0 0 0 0 0 0
A 42 2 0 0 0 6 663 0 0 0 42 0 0 0 0 0 0 0 0 0 0 0
A 44 2 0 0 0 6 664 0 0 0 44 0 0 0 0 0 0 0 0 0 0 0
A 48 2 0 0 0 6 665 0 0 0 48 0 0 0 0 0 0 0 0 0 0 0
A 51 2 0 0 0 6 666 0 0 0 51 0 0 0 0 0 0 0 0 0 0 0
A 53 2 0 0 0 9 667 0 0 0 53 0 0 0 0 0 0 0 0 0 0 0
A 56 2 0 0 0 10 668 0 0 0 56 0 0 0 0 0 0 0 0 0 0 0
A 64 2 0 0 0 6 669 0 0 0 64 0 0 0 0 0 0 0 0 0 0 0
A 66 2 0 0 0 6 670 0 0 0 66 0 0 0 0 0 0 0 0 0 0 0
A 68 2 0 0 0 6 671 0 0 0 68 0 0 0 0 0 0 0 0 0 0 0
A 70 2 0 0 0 6 672 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0
A 74 2 0 0 0 6 673 0 0 0 74 0 0 0 0 0 0 0 0 0 0 0
A 82 2 0 0 0 6 674 0 0 0 82 0 0 0 0 0 0 0 0 0 0 0
A 87 2 0 0 0 6 675 0 0 0 87 0 0 0 0 0 0 0 0 0 0 0
A 93 2 0 0 0 6 676 0 0 0 93 0 0 0 0 0 0 0 0 0 0 0
A 95 2 0 0 0 6 677 0 0 0 95 0 0 0 0 0 0 0 0 0 0 0
A 97 2 0 0 0 6 678 0 0 0 97 0 0 0 0 0 0 0 0 0 0 0
A 99 2 0 0 0 6 679 0 0 0 99 0 0 0 0 0 0 0 0 0 0 0
A 101 2 0 0 0 6 680 0 0 0 101 0 0 0 0 0 0 0 0 0 0 0
A 103 2 0 0 0 6 681 0 0 0 103 0 0 0 0 0 0 0 0 0 0 0
A 105 2 0 0 0 6 682 0 0 0 105 0 0 0 0 0 0 0 0 0 0 0
A 107 2 0 0 0 6 683 0 0 0 107 0 0 0 0 0 0 0 0 0 0 0
A 109 2 0 0 0 6 684 0 0 0 109 0 0 0 0 0 0 0 0 0 0 0
A 111 2 0 0 0 6 685 0 0 0 111 0 0 0 0 0 0 0 0 0 0 0
A 113 2 0 0 0 6 686 0 0 0 113 0 0 0 0 0 0 0 0 0 0 0
A 115 2 0 0 0 6 687 0 0 0 115 0 0 0 0 0 0 0 0 0 0 0
A 117 2 0 0 0 6 688 0 0 0 117 0 0 0 0 0 0 0 0 0 0 0
A 119 2 0 0 0 6 689 0 0 0 119 0 0 0 0 0 0 0 0 0 0 0
A 121 2 0 0 0 6 690 0 0 0 121 0 0 0 0 0 0 0 0 0 0 0
A 123 2 0 0 0 6 691 0 0 0 123 0 0 0 0 0 0 0 0 0 0 0
A 125 2 0 0 0 6 692 0 0 0 125 0 0 0 0 0 0 0 0 0 0 0
A 127 2 0 0 0 6 693 0 0 0 127 0 0 0 0 0 0 0 0 0 0 0
A 129 2 0 0 0 6 694 0 0 0 129 0 0 0 0 0 0 0 0 0 0 0
A 131 2 0 0 0 6 695 0 0 0 131 0 0 0 0 0 0 0 0 0 0 0
A 133 2 0 0 0 6 696 0 0 0 133 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 0 6 697 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 137 2 0 0 0 6 698 0 0 0 137 0 0 0 0 0 0 0 0 0 0 0
A 139 2 0 0 0 6 699 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0
A 141 2 0 0 0 6 700 0 0 0 141 0 0 0 0 0 0 0 0 0 0 0
A 143 2 0 0 0 6 701 0 0 0 143 0 0 0 0 0 0 0 0 0 0 0
A 145 2 0 0 0 6 702 0 0 0 145 0 0 0 0 0 0 0 0 0 0 0
A 147 2 0 0 0 6 703 0 0 0 147 0 0 0 0 0 0 0 0 0 0 0
A 149 2 0 0 0 6 704 0 0 0 149 0 0 0 0 0 0 0 0 0 0 0
A 151 2 0 0 0 6 705 0 0 0 151 0 0 0 0 0 0 0 0 0 0 0
A 153 2 0 0 0 6 707 0 0 0 153 0 0 0 0 0 0 0 0 0 0 0
A 157 2 0 0 0 6 709 0 0 0 157 0 0 0 0 0 0 0 0 0 0 0
A 159 2 0 0 0 6 710 0 0 0 159 0 0 0 0 0 0 0 0 0 0 0
A 161 2 0 0 0 6 711 0 0 0 161 0 0 0 0 0 0 0 0 0 0 0
A 163 2 0 0 0 6 712 0 0 0 163 0 0 0 0 0 0 0 0 0 0 0
A 166 2 0 0 0 6 713 0 0 0 166 0 0 0 0 0 0 0 0 0 0 0
A 168 2 0 0 0 6 714 0 0 0 168 0 0 0 0 0 0 0 0 0 0 0
A 172 2 0 0 0 6 715 0 0 0 172 0 0 0 0 0 0 0 0 0 0 0
A 191 2 0 0 0 6 716 0 0 0 191 0 0 0 0 0 0 0 0 0 0 0
A 193 2 0 0 0 6 717 0 0 0 193 0 0 0 0 0 0 0 0 0 0 0
A 201 2 0 0 0 6 718 0 0 0 201 0 0 0 0 0 0 0 0 0 0 0
A 203 2 0 0 0 6 719 0 0 0 203 0 0 0 0 0 0 0 0 0 0 0
A 205 2 0 0 0 6 720 0 0 0 205 0 0 0 0 0 0 0 0 0 0 0
A 207 2 0 0 0 6 721 0 0 0 207 0 0 0 0 0 0 0 0 0 0 0
A 209 2 0 0 0 6 722 0 0 0 209 0 0 0 0 0 0 0 0 0 0 0
A 211 2 0 0 0 6 723 0 0 0 211 0 0 0 0 0 0 0 0 0 0 0
A 213 2 0 0 0 6 724 0 0 0 213 0 0 0 0 0 0 0 0 0 0 0
A 215 2 0 0 0 6 725 0 0 0 215 0 0 0 0 0 0 0 0 0 0 0
A 217 2 0 0 0 6 726 0 0 0 217 0 0 0 0 0 0 0 0 0 0 0
A 219 2 0 0 0 6 727 0 0 0 219 0 0 0 0 0 0 0 0 0 0 0
A 221 2 0 0 0 6 728 0 0 0 221 0 0 0 0 0 0 0 0 0 0 0
A 223 2 0 0 0 6 729 0 0 0 223 0 0 0 0 0 0 0 0 0 0 0
A 225 2 0 0 0 6 730 0 0 0 225 0 0 0 0 0 0 0 0 0 0 0
A 227 2 0 0 0 6 731 0 0 0 227 0 0 0 0 0 0 0 0 0 0 0
A 229 2 0 0 0 6 732 0 0 0 229 0 0 0 0 0 0 0 0 0 0 0
A 231 2 0 0 0 6 733 0 0 0 231 0 0 0 0 0 0 0 0 0 0 0
A 233 2 0 0 0 6 734 0 0 0 233 0 0 0 0 0 0 0 0 0 0 0
A 235 2 0 0 0 6 735 0 0 0 235 0 0 0 0 0 0 0 0 0 0 0
A 237 2 0 0 0 6 736 0 0 0 237 0 0 0 0 0 0 0 0 0 0 0
A 239 2 0 0 0 6 737 0 0 0 239 0 0 0 0 0 0 0 0 0 0 0
A 241 2 0 0 0 6 738 0 0 0 241 0 0 0 0 0 0 0 0 0 0 0
A 243 2 0 0 0 6 739 0 0 0 243 0 0 0 0 0 0 0 0 0 0 0
A 245 2 0 0 0 6 740 0 0 0 245 0 0 0 0 0 0 0 0 0 0 0
A 247 2 0 0 0 6 741 0 0 0 247 0 0 0 0 0 0 0 0 0 0 0
A 249 2 0 0 0 6 742 0 0 0 249 0 0 0 0 0 0 0 0 0 0 0
A 251 2 0 0 0 6 743 0 0 0 251 0 0 0 0 0 0 0 0 0 0 0
A 254 2 0 0 0 6 745 0 0 0 254 0 0 0 0 0 0 0 0 0 0 0
A 256 2 0 0 0 6 746 0 0 0 256 0 0 0 0 0 0 0 0 0 0 0
A 258 2 0 0 0 6 747 0 0 0 258 0 0 0 0 0 0 0 0 0 0 0
A 260 2 0 0 0 6 748 0 0 0 260 0 0 0 0 0 0 0 0 0 0 0
A 262 2 0 0 0 6 749 0 0 0 262 0 0 0 0 0 0 0 0 0 0 0
A 264 2 0 0 0 6 750 0 0 0 264 0 0 0 0 0 0 0 0 0 0 0
A 266 2 0 0 0 6 751 0 0 0 266 0 0 0 0 0 0 0 0 0 0 0
A 268 2 0 0 0 6 752 0 0 0 268 0 0 0 0 0 0 0 0 0 0 0
A 270 2 0 0 0 6 753 0 0 0 270 0 0 0 0 0 0 0 0 0 0 0
A 272 2 0 0 0 6 754 0 0 0 272 0 0 0 0 0 0 0 0 0 0 0
A 274 2 0 0 0 6 755 0 0 0 274 0 0 0 0 0 0 0 0 0 0 0
A 276 2 0 0 0 6 756 0 0 0 276 0 0 0 0 0 0 0 0 0 0 0
A 278 2 0 0 0 6 757 0 0 0 278 0 0 0 0 0 0 0 0 0 0 0
A 280 2 0 0 0 6 758 0 0 0 280 0 0 0 0 0 0 0 0 0 0 0
A 282 2 0 0 0 6 759 0 0 0 282 0 0 0 0 0 0 0 0 0 0 0
A 290 2 0 0 0 6 706 0 0 0 290 0 0 0 0 0 0 0 0 0 0 0
A 292 2 0 0 0 6 744 0 0 0 292 0 0 0 0 0 0 0 0 0 0 0
A 310 2 0 0 0 6 760 0 0 0 310 0 0 0 0 0 0 0 0 0 0 0
A 347 2 0 0 0 6 708 0 0 0 347 0 0 0 0 0 0 0 0 0 0 0
A 1089 2 0 0 689 7 2170 0 0 0 1089 0 0 0 0 0 0 0 0 0 0 0
A 1090 1 0 0 0 6 1267 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1091 7 0 0 0 7 1090 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1092 1 0 0 0 7 2177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1093 1 0 0 0 6 1266 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1094 7 0 0 0 7 1093 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1095 1 0 0 0 7 2178 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
