V34 :0x24 surfacealbedomod
20 SurfaceAlbedoMod.F90 S624 0
06/02/2026  09:20:28
use surfacealbedotype private
use waterstatebulktype private
use decompmod private
use shr_kind_mod private
enduse
D 58 26 640 32 639 3
D 75 26 733 752 732 7
D 114 26 781 952 780 7
D 153 23 10 2 193 192 0 1 0 0 1
 182 185 190 182 185 183
 186 189 191 186 189 187
D 156 23 7 1 0 180 0 0 0 0 0
 0 180 0 11 180 0
D 159 23 10 2 208 207 0 1 0 0 1
 197 200 205 197 200 198
 201 204 206 201 204 202
D 162 23 7 1 0 180 0 0 0 0 0
 0 180 0 11 180 0
D 165 23 6 1 218 217 0 1 0 0 1
 212 215 216 212 215 213
D 168 23 7 1 0 210 0 0 0 0 0
 0 210 0 11 210 0
D 171 23 6 1 219 222 1 1 0 0 1
 11 220 11 11 220 221
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 surfacealbedomod
S 626 23 0 0 0 9 636 624 5042 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 639 624 5067 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 631 23 0 0 0 9 732 624 5098 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 waterstatebulk_type
S 633 23 0 0 0 9 780 624 5136 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 surfalb_type
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
S 718 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 719 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 720 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 721 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 722 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 723 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 724 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 725 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 732 25 7 waterstatebulktype waterstatebulk_type
R 733 5 8 waterstatebulktype h2osoi_liq_col waterstatebulk_type
R 736 5 11 waterstatebulktype h2osoi_liq_col$sd waterstatebulk_type
R 737 5 12 waterstatebulktype h2osoi_liq_col$p waterstatebulk_type
R 738 5 13 waterstatebulktype h2osoi_liq_col$o waterstatebulk_type
R 740 5 15 waterstatebulktype h2osoi_ice_col waterstatebulk_type
R 743 5 18 waterstatebulktype h2osoi_ice_col$sd waterstatebulk_type
R 744 5 19 waterstatebulktype h2osoi_ice_col$p waterstatebulk_type
R 745 5 20 waterstatebulktype h2osoi_ice_col$o waterstatebulk_type
R 747 5 22 waterstatebulktype h2osoi_vol_col waterstatebulk_type
R 750 5 25 waterstatebulktype h2osoi_vol_col$sd waterstatebulk_type
R 751 5 26 waterstatebulktype h2osoi_vol_col$p waterstatebulk_type
R 752 5 27 waterstatebulktype h2osoi_vol_col$o waterstatebulk_type
R 754 5 29 waterstatebulktype h2osfc_col waterstatebulk_type
R 756 5 31 waterstatebulktype h2osfc_col$sd waterstatebulk_type
R 757 5 32 waterstatebulktype h2osfc_col$p waterstatebulk_type
R 758 5 33 waterstatebulktype h2osfc_col$o waterstatebulk_type
R 762 5 37 waterstatebulktype initallocate$tbp$0 waterstatebulk_type
R 763 5 38 waterstatebulktype init$tbp$1 waterstatebulk_type
R 780 25 6 surfacealbedotype surfalb_type
R 781 5 7 surfacealbedotype coszen_col surfalb_type
R 783 5 9 surfacealbedotype coszen_col$sd surfalb_type
R 784 5 10 surfacealbedotype coszen_col$p surfalb_type
R 785 5 11 surfacealbedotype coszen_col$o surfalb_type
R 787 5 13 surfacealbedotype albd_patch surfalb_type
R 790 5 16 surfacealbedotype albd_patch$sd surfalb_type
R 791 5 17 surfacealbedotype albd_patch$p surfalb_type
R 792 5 18 surfacealbedotype albd_patch$o surfalb_type
R 794 5 20 surfacealbedotype albi_patch surfalb_type
R 797 5 23 surfacealbedotype albi_patch$sd surfalb_type
R 798 5 24 surfacealbedotype albi_patch$p surfalb_type
R 799 5 25 surfacealbedotype albi_patch$o surfalb_type
R 801 5 27 surfacealbedotype albgrd_col surfalb_type
R 804 5 30 surfacealbedotype albgrd_col$sd surfalb_type
R 805 5 31 surfacealbedotype albgrd_col$p surfalb_type
R 806 5 32 surfacealbedotype albgrd_col$o surfalb_type
R 808 5 34 surfacealbedotype albgri_col surfalb_type
R 811 5 37 surfacealbedotype albgri_col$sd surfalb_type
R 812 5 38 surfacealbedotype albgri_col$p surfalb_type
R 813 5 39 surfacealbedotype albgri_col$o surfalb_type
R 817 5 43 surfacealbedotype initallocate$tbp$0 surfalb_type
R 818 5 44 surfacealbedotype init$tbp$1 surfalb_type
S 829 27 0 0 0 9 859 624 6521 0 8000000 A 0 0 0 0 B 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilalbedo
S 830 27 0 0 0 9 856 624 6532 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 surfacealbedoinittimeconst
S 831 7 6 0 0 153 1 624 6559 10a00014 51 A 0 0 0 0 B 0 21 0 0 0 0 836 0 0 0 838 0 0 0 0 0 0 0 0 835 0 0 837 624 0 0 0 0 albsat
S 832 6 4 0 0 7 833 624 6566 40800006 0 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 853 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_0_1
S 833 6 4 0 0 7 840 624 6574 40800006 0 A 0 0 0 0 B 0 21 0 0 0 8 0 0 0 0 0 0 853 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_1_1
S 834 3 0 0 0 7 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 835 8 4 0 0 156 843 624 6582 40822014 1020 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 855 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albsat$sd
S 836 6 4 0 0 7 837 624 6592 40802011 1020 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 855 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albsat$p
S 837 6 4 0 0 7 835 624 6601 40802010 1020 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 855 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albsat$o
S 838 22 1 0 0 9 1 624 6610 40000000 1000 A 0 0 0 0 B 0 21 0 0 0 0 0 831 0 0 0 0 835 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albsat$arrdsc
S 839 7 6 0 0 159 1 624 6624 10a00014 51 A 0 0 0 0 B 0 22 0 0 0 0 843 0 0 0 845 0 0 0 0 0 0 0 0 842 0 0 844 624 0 0 0 0 albdry
S 840 6 4 0 0 7 841 624 6631 40800006 0 A 0 0 0 0 B 0 22 0 0 0 16 0 0 0 0 0 0 853 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_2_1
S 841 6 4 0 0 7 847 624 6639 40800006 0 A 0 0 0 0 B 0 22 0 0 0 24 0 0 0 0 0 0 853 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_3_1
S 842 8 4 0 0 162 1 624 6647 40822014 1020 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 855 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albdry$sd
S 843 6 4 0 0 7 844 624 6657 40802011 1020 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 855 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albdry$p
S 844 6 4 0 0 7 842 624 6666 40802010 1020 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 855 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albdry$o
S 845 22 1 0 0 9 1 624 6675 40000000 1000 A 0 0 0 0 B 0 22 0 0 0 0 0 839 0 0 0 0 842 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 albdry$arrdsc
S 846 7 6 0 0 165 1 624 6689 10a00004 51 A 0 0 0 0 B 0 23 0 0 0 0 850 0 0 0 852 0 0 0 0 0 0 0 0 849 0 0 851 624 0 0 0 0 isoicol
S 847 6 4 0 0 7 1 624 6697 40800006 0 A 0 0 0 0 B 0 23 0 0 0 32 0 0 0 0 0 0 853 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_4_1
S 848 3 0 0 0 7 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 849 8 4 0 0 168 1 624 6705 40822004 1020 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 854 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 isoicol$sd
S 850 6 4 0 0 7 851 624 6716 40802001 1020 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 854 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 isoicol$p
S 851 6 4 0 0 7 849 624 6726 40802000 1020 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 854 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 isoicol$o
S 852 22 1 0 0 6 1 624 6736 40000000 1000 A 0 0 0 0 B 0 23 0 0 0 0 0 846 0 0 0 0 849 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 isoicol$arrdsc
S 853 11 0 0 0 9 820 624 6751 40800000 805000 A 0 0 0 0 B 0 26 0 0 0 40 0 0 832 847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _surfacealbedomod$2
S 854 11 0 0 0 9 853 624 6771 40800000 805000 A 0 0 0 0 B 0 26 0 0 0 144 0 0 850 849 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _surfacealbedomod$0
S 855 11 0 0 0 9 854 624 6791 40800010 805000 A 0 0 0 0 B 0 26 0 0 0 384 0 0 836 842 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _surfacealbedomod$4
S 856 23 5 0 0 0 858 624 6532 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 surfacealbedoinittimeconst
S 857 1 3 1 0 58 1 856 5246 4 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 858 14 5 0 0 0 1 856 6532 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 18 1 0 0 0 0 0 0 0 0 0 0 0 0 29 0 624 0 0 0 0 surfacealbedoinittimeconst surfacealbedoinittimeconst 
F 858 1 857
S 859 23 5 0 0 0 865 624 6521 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilalbedo
S 860 1 3 1 0 58 1 859 5246 4 3000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 861 1 3 1 0 6 1 859 6811 4 3000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_nourbanc
S 862 7 3 1 0 171 1 859 6824 20000004 10003000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_nourbanc
S 863 1 3 1 0 75 1 859 6840 4 3000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 864 1 3 2 0 114 1 859 6860 4 3000 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 surfalb_inst
S 865 14 5 0 0 0 1 859 6521 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 20 5 0 0 0 0 0 0 0 0 0 0 0 0 86 0 624 0 0 0 0 soilalbedo soilalbedo 
F 865 5 860 861 862 863 864
S 866 6 1 0 0 7 1 859 6873 40800006 3000 A 0 0 0 0 B 0 98 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_2
S 867 6 1 0 0 7 1 859 6881 40800006 3000 A 0 0 0 0 B 0 98 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_2
S 868 6 1 0 0 7 1 859 6889 40800006 3000 A 0 0 0 0 B 0 98 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_2
S 869 6 1 0 0 7 1 859 6897 40800006 3000 A 0 0 0 0 B 0 98 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_224
A 64 2 0 0 0 7 725 0 0 0 64 0 0 0 0 0 0 0 0 0 0 0
A 66 2 0 0 0 7 718 0 0 0 66 0 0 0 0 0 0 0 0 0 0 0
A 68 2 0 0 0 7 719 0 0 0 68 0 0 0 0 0 0 0 0 0 0 0
A 72 2 0 0 0 7 722 0 0 0 72 0 0 0 0 0 0 0 0 0 0 0
A 74 2 0 0 0 7 720 0 0 0 74 0 0 0 0 0 0 0 0 0 0 0
A 76 2 0 0 0 7 721 0 0 0 76 0 0 0 0 0 0 0 0 0 0 0
A 80 2 0 0 0 7 723 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0
A 82 2 0 0 0 7 724 0 0 0 82 0 0 0 0 0 0 0 0 0 0 0
A 180 2 0 0 31 7 834 0 0 0 180 0 0 0 0 0 0 0 0 0 0 0
A 181 1 0 5 0 156 835 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 182 10 0 0 0 7 181 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 66
A 183 10 0 0 182 7 181 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 68
A 184 4 0 0 0 7 183 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 185 4 0 0 0 7 182 0 184 0 0 0 0 1 0 0 0 0 0 0 0 0
A 186 10 0 0 183 7 181 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 74
A 187 10 0 0 186 7 181 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 76
A 188 4 0 0 0 7 187 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 189 4 0 0 0 7 186 0 188 0 0 0 0 1 0 0 0 0 0 0 0 0
A 190 10 0 0 187 7 181 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 72
A 191 10 0 0 190 7 181 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 80
A 192 10 0 0 191 7 181 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 82
A 193 10 0 0 192 7 181 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 64
A 196 1 0 5 0 162 842 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 197 10 0 0 0 7 196 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 66
A 198 10 0 0 197 7 196 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 68
A 199 4 0 0 0 7 198 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 200 4 0 0 0 7 197 0 199 0 0 0 0 1 0 0 0 0 0 0 0 0
A 201 10 0 0 198 7 196 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 74
A 202 10 0 0 201 7 196 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 76
A 203 4 0 0 0 7 202 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 204 4 0 0 0 7 201 0 203 0 0 0 0 1 0 0 0 0 0 0 0 0
A 205 10 0 0 202 7 196 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 72
A 206 10 0 0 205 7 196 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 80
A 207 10 0 0 206 7 196 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 82
A 208 10 0 0 207 7 196 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 64
A 210 2 0 0 20 7 848 0 0 0 210 0 0 0 0 0 0 0 0 0 0 0
A 211 1 0 7 0 168 849 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 212 10 0 0 0 7 211 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 66
A 213 10 0 0 212 7 211 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 68
A 214 4 0 0 0 7 213 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 215 4 0 0 0 7 212 0 214 0 0 0 0 1 0 0 0 0 0 0 0 0
A 216 10 0 0 213 7 211 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 72
A 217 10 0 0 216 7 211 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 82
A 218 10 0 0 217 7 211 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 64
A 219 1 0 0 0 7 868 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 220 1 0 0 0 7 866 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 221 1 0 0 0 7 869 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 222 1 0 0 0 7 867 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
