V34 :0x24 clm_initializemod
21 clm_initializeMod.F90 S624 0
06/02/2026  09:20:41
use mlcanopyturbulencemod private
use mlpftconmod private
use clm_instmod private
use filtermod private
use initgridcellsmod private
use patchtype private
use columntype private
use gridcelltype private
use pftconmod private
use clm_varpar private
use decompmod private
use shr_kind_mod private
enduse
D 58 26 657 32 656 3
D 75 26 797 1560 796 7
D 135 22 7
D 137 22 7
D 139 22 7
D 141 22 7
D 143 22 7
D 145 22 7
D 147 22 7
D 149 22 7
D 151 22 7
D 2605 26 4675 2432 4674 7
D 2707 22 7
D 2709 22 7
D 2711 22 7
D 2713 22 7
D 2715 22 7
D 2717 22 7
D 2719 22 7
D 2721 22 7
D 2723 22 7
D 2725 22 7
D 2727 22 7
D 2729 22 7
D 2731 22 7
D 2733 22 7
D 2735 22 7
D 2737 22 7
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 clm_initializemod
S 626 23 0 0 0 9 653 624 5043 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 656 624 5068 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 631 23 0 0 0 9 690 624 5091 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 clm_varpar_init
S 633 23 0 0 0 9 863 624 5117 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pftcon
S 635 23 0 0 0 9 895 624 5137 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 grc
S 637 23 0 0 0 9 945 624 5152 4 0 A 0 0 0 0 B 400000 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
S 639 23 0 0 0 9 978 624 5166 4 0 A 0 0 0 0 B 400000 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 patch
S 641 23 0 0 0 6 990 624 5189 4 0 A 0 0 0 0 B 400000 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initgridcells
S 643 23 0 0 0 9 1045 624 5213 4 0 A 0 0 0 0 B 400000 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 allocfilters
S 644 23 0 0 0 9 1033 624 5226 4 0 A 0 0 0 0 B 400000 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 filter
S 646 23 0 0 0 9 4659 624 5245 4 0 A 0 0 0 0 B 400000 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 clm_instinit
S 648 23 0 0 0 6 4779 624 5270 4 0 A 0 0 0 0 B 400000 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mlpftcon
S 650 23 0 0 0 6 4911 624 5301 4 0 A 0 0 0 0 B 400000 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 lookuppsihatini
R 653 16 1 shr_kind_mod shr_kind_r8
R 656 25 2 decompmod bounds_type
R 657 5 3 decompmod begg bounds_type
R 658 5 4 decompmod endg bounds_type
R 659 5 5 decompmod begl bounds_type
R 660 5 6 decompmod endl bounds_type
R 661 5 7 decompmod begc bounds_type
R 662 5 8 decompmod endc bounds_type
R 663 5 9 decompmod begp bounds_type
R 664 5 10 decompmod endp bounds_type
R 690 14 13 clm_varpar clm_varpar_init
S 780 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 786 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 796 25 8 pftconmod pftcon_type
R 797 5 9 pftconmod dleaf pftcon_type
R 799 5 11 pftconmod dleaf$sd pftcon_type
R 800 5 12 pftconmod dleaf$p pftcon_type
R 801 5 13 pftconmod dleaf$o pftcon_type
R 803 5 15 pftconmod c3psn pftcon_type
R 805 5 17 pftconmod c3psn$sd pftcon_type
R 806 5 18 pftconmod c3psn$p pftcon_type
R 807 5 19 pftconmod c3psn$o pftcon_type
R 809 5 21 pftconmod xl pftcon_type
R 811 5 23 pftconmod xl$sd pftcon_type
R 812 5 24 pftconmod xl$p pftcon_type
R 813 5 25 pftconmod xl$o pftcon_type
R 815 5 27 pftconmod rhol pftcon_type
R 818 5 30 pftconmod rhol$sd pftcon_type
R 819 5 31 pftconmod rhol$p pftcon_type
R 820 5 32 pftconmod rhol$o pftcon_type
R 822 5 34 pftconmod rhos pftcon_type
R 825 5 37 pftconmod rhos$sd pftcon_type
R 826 5 38 pftconmod rhos$p pftcon_type
R 827 5 39 pftconmod rhos$o pftcon_type
R 829 5 41 pftconmod taul pftcon_type
R 832 5 44 pftconmod taul$sd pftcon_type
R 833 5 45 pftconmod taul$p pftcon_type
R 834 5 46 pftconmod taul$o pftcon_type
R 836 5 48 pftconmod taus pftcon_type
R 839 5 51 pftconmod taus$sd pftcon_type
R 840 5 52 pftconmod taus$p pftcon_type
R 841 5 53 pftconmod taus$o pftcon_type
R 843 5 55 pftconmod rootprof_beta pftcon_type
R 845 5 57 pftconmod rootprof_beta$sd pftcon_type
R 846 5 58 pftconmod rootprof_beta$p pftcon_type
R 847 5 59 pftconmod rootprof_beta$o pftcon_type
R 849 5 61 pftconmod slatop pftcon_type
R 851 5 63 pftconmod slatop$sd pftcon_type
R 852 5 64 pftconmod slatop$p pftcon_type
R 853 5 65 pftconmod slatop$o pftcon_type
R 858 5 70 pftconmod initread$tbp$0 pftcon_type
R 859 5 71 pftconmod initallocate$tbp$1 pftcon_type
R 860 5 72 pftconmod init$tbp$2 pftcon_type
R 863 6 75 pftconmod pftcon
R 895 6 19 gridcelltype grc
R 945 6 43 columntype col
R 978 6 26 patchtype patch
R 990 14 5 initgridcellsmod initgridcells
R 1033 6 41 filtermod filter
R 1045 14 53 filtermod allocfilters
R 4659 14 39 clm_instmod clm_instinit
R 4674 25 6 mlpftconmod mlpftcon_type
R 4675 5 7 mlpftconmod vcmaxpft mlpftcon_type
R 4677 5 9 mlpftconmod vcmaxpft$sd mlpftcon_type
R 4678 5 10 mlpftconmod vcmaxpft$p mlpftcon_type
R 4679 5 11 mlpftconmod vcmaxpft$o mlpftcon_type
R 4681 5 13 mlpftconmod gplant_spa mlpftcon_type
R 4683 5 15 mlpftconmod gplant_spa$sd mlpftcon_type
R 4684 5 16 mlpftconmod gplant_spa$p mlpftcon_type
R 4685 5 17 mlpftconmod gplant_spa$o mlpftcon_type
R 4687 5 19 mlpftconmod capac_spa mlpftcon_type
R 4689 5 21 mlpftconmod capac_spa$sd mlpftcon_type
R 4690 5 22 mlpftconmod capac_spa$p mlpftcon_type
R 4691 5 23 mlpftconmod capac_spa$o mlpftcon_type
R 4693 5 25 mlpftconmod iota_spa mlpftcon_type
R 4695 5 27 mlpftconmod iota_spa$sd mlpftcon_type
R 4696 5 28 mlpftconmod iota_spa$p mlpftcon_type
R 4697 5 29 mlpftconmod iota_spa$o mlpftcon_type
R 4699 5 31 mlpftconmod root_radius_spa mlpftcon_type
R 4701 5 33 mlpftconmod root_radius_spa$sd mlpftcon_type
R 4702 5 34 mlpftconmod root_radius_spa$p mlpftcon_type
R 4703 5 35 mlpftconmod root_radius_spa$o mlpftcon_type
R 4705 5 37 mlpftconmod root_density_spa mlpftcon_type
R 4707 5 39 mlpftconmod root_density_spa$sd mlpftcon_type
R 4708 5 40 mlpftconmod root_density_spa$p mlpftcon_type
R 4709 5 41 mlpftconmod root_density_spa$o mlpftcon_type
R 4711 5 43 mlpftconmod root_resist_spa mlpftcon_type
R 4713 5 45 mlpftconmod root_resist_spa$sd mlpftcon_type
R 4714 5 46 mlpftconmod root_resist_spa$p mlpftcon_type
R 4715 5 47 mlpftconmod root_resist_spa$o mlpftcon_type
R 4717 5 49 mlpftconmod gsmin_spa mlpftcon_type
R 4719 5 51 mlpftconmod gsmin_spa$sd mlpftcon_type
R 4720 5 52 mlpftconmod gsmin_spa$p mlpftcon_type
R 4721 5 53 mlpftconmod gsmin_spa$o mlpftcon_type
R 4723 5 55 mlpftconmod g0_bb mlpftcon_type
R 4725 5 57 mlpftconmod g0_bb$sd mlpftcon_type
R 4726 5 58 mlpftconmod g0_bb$p mlpftcon_type
R 4727 5 59 mlpftconmod g0_bb$o mlpftcon_type
R 4729 5 61 mlpftconmod g1_bb mlpftcon_type
R 4731 5 63 mlpftconmod g1_bb$sd mlpftcon_type
R 4732 5 64 mlpftconmod g1_bb$p mlpftcon_type
R 4733 5 65 mlpftconmod g1_bb$o mlpftcon_type
R 4735 5 67 mlpftconmod g0_med mlpftcon_type
R 4737 5 69 mlpftconmod g0_med$sd mlpftcon_type
R 4738 5 70 mlpftconmod g0_med$p mlpftcon_type
R 4739 5 71 mlpftconmod g0_med$o mlpftcon_type
R 4741 5 73 mlpftconmod g1_med mlpftcon_type
R 4743 5 75 mlpftconmod g1_med$sd mlpftcon_type
R 4744 5 76 mlpftconmod g1_med$p mlpftcon_type
R 4745 5 77 mlpftconmod g1_med$o mlpftcon_type
R 4747 5 79 mlpftconmod psi50_gs mlpftcon_type
R 4749 5 81 mlpftconmod psi50_gs$sd mlpftcon_type
R 4750 5 82 mlpftconmod psi50_gs$p mlpftcon_type
R 4751 5 83 mlpftconmod psi50_gs$o mlpftcon_type
R 4753 5 85 mlpftconmod shape_gs mlpftcon_type
R 4755 5 87 mlpftconmod shape_gs$sd mlpftcon_type
R 4756 5 88 mlpftconmod shape_gs$p mlpftcon_type
R 4757 5 89 mlpftconmod shape_gs$o mlpftcon_type
R 4759 5 91 mlpftconmod emleaf mlpftcon_type
R 4761 5 93 mlpftconmod emleaf$sd mlpftcon_type
R 4762 5 94 mlpftconmod emleaf$p mlpftcon_type
R 4763 5 95 mlpftconmod emleaf$o mlpftcon_type
R 4765 5 97 mlpftconmod clump_fac mlpftcon_type
R 4767 5 99 mlpftconmod clump_fac$sd mlpftcon_type
R 4768 5 100 mlpftconmod clump_fac$p mlpftcon_type
R 4769 5 101 mlpftconmod clump_fac$o mlpftcon_type
R 4774 5 106 mlpftconmod initread$tbp$0 mlpftcon_type
R 4775 5 107 mlpftconmod initallocate$tbp$1 mlpftcon_type
R 4776 5 108 mlpftconmod init$tbp$2 mlpftcon_type
R 4779 6 111 mlpftconmod mlpftcon
R 4911 14 115 mlcanopyturbulencemod lookuppsihatini
S 4912 27 0 0 0 6 4914 624 47895 0 8000000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initialize1
S 4913 27 0 0 0 6 4916 624 47907 0 8000000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initialize2
S 4914 23 5 0 0 0 4915 624 47895 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initialize1
S 4915 14 5 0 0 0 1 4914 47895 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 261 0 0 0 0 0 0 0 0 0 0 0 0 0 32 0 624 0 0 0 0 initialize1 initialize1 
F 4915 0
S 4916 23 5 0 0 0 4918 624 47907 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initialize2
S 4917 1 3 1 0 58 1 4916 5414 4 3000 A 0 0 0 0 B 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 4918 14 5 0 0 0 1 4916 47907 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 262 1 0 0 0 0 0 0 0 0 0 0 0 0 48 0 624 0 0 0 0 initialize2 initialize2 
F 4918 1 4917
A 102 2 0 0 0 7 780 0 0 0 102 0 0 0 0 0 0 0 0 0 0 0
A 132 2 0 0 0 7 786 0 0 0 132 0 0 0 0 0 0 0 0 0 0 0
Z
T 796 75 0 0 0 0
A 800 7 135 0 1 2 1
A 799 7 0 102 1 10 1
A 806 7 137 0 1 2 1
A 805 7 0 102 1 10 1
A 812 7 139 0 1 2 1
A 811 7 0 102 1 10 1
A 819 7 141 0 1 2 1
A 818 7 0 132 1 10 1
A 826 7 143 0 1 2 1
A 825 7 0 132 1 10 1
A 833 7 145 0 1 2 1
A 832 7 0 132 1 10 1
A 840 7 147 0 1 2 1
A 839 7 0 132 1 10 1
A 846 7 149 0 1 2 1
A 845 7 0 102 1 10 1
A 852 7 151 0 1 2 1
A 851 7 0 102 1 10 0
T 4674 2605 0 0 0 0
A 4678 7 2707 0 1 2 1
A 4677 7 0 102 1 10 1
A 4684 7 2709 0 1 2 1
A 4683 7 0 102 1 10 1
A 4690 7 2711 0 1 2 1
A 4689 7 0 102 1 10 1
A 4696 7 2713 0 1 2 1
A 4695 7 0 102 1 10 1
A 4702 7 2715 0 1 2 1
A 4701 7 0 102 1 10 1
A 4708 7 2717 0 1 2 1
A 4707 7 0 102 1 10 1
A 4714 7 2719 0 1 2 1
A 4713 7 0 102 1 10 1
A 4720 7 2721 0 1 2 1
A 4719 7 0 102 1 10 1
A 4726 7 2723 0 1 2 1
A 4725 7 0 102 1 10 1
A 4732 7 2725 0 1 2 1
A 4731 7 0 102 1 10 1
A 4738 7 2727 0 1 2 1
A 4737 7 0 102 1 10 1
A 4744 7 2729 0 1 2 1
A 4743 7 0 102 1 10 1
A 4750 7 2731 0 1 2 1
A 4749 7 0 102 1 10 1
A 4756 7 2733 0 1 2 1
A 4755 7 0 102 1 10 1
A 4762 7 2735 0 1 2 1
A 4761 7 0 102 1 10 1
A 4768 7 2737 0 1 2 1
A 4767 7 0 102 1 10 0
Z
