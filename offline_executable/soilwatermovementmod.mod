V34 :0x24 soilwatermovementmod
24 SoilWaterMovementMod.F90 S624 0
06/02/2026  09:20:29
use waterstatebulktype private
use soilstatetype private
use decompmod private
use shr_kind_mod private
enduse
D 58 26 636 32 635 3
D 75 26 733 752 732 7
D 114 26 784 3104 783 7
D 219 26 784 3104 783 7
D 225 26 733 752 732 7
D 231 23 6 1 316 319 1 1 0 0 1
 11 317 11 11 317 318
D 234 23 6 1 320 323 1 1 0 0 1
 11 321 11 11 321 322
D 237 23 10 1 11 326 0 0 1 0 0
 11 325 11 11 326 326
D 240 23 10 1 11 326 0 0 1 0 0
 11 325 11 11 326 326
D 243 23 10 1 11 326 0 0 1 0 0
 11 325 11 11 326 326
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 soilwatermovementmod
S 626 23 0 0 0 9 632 624 5046 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 635 624 5071 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
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
S 649 27 0 0 0 9 908 624 5187 0 8000000 A 0 0 0 0 B 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilwater
S 650 27 0 0 0 9 919 624 5197 10 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilwater_moisture_form
S 651 27 0 0 0 9 930 624 5221 10 8000000 A 0 0 0 0 B 0 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 compute_hydraulic_properties
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
R 783 25 8 soilstatetype soilstate_type
R 784 5 9 soilstatetype cellorg_col soilstate_type
R 787 5 12 soilstatetype cellorg_col$sd soilstate_type
R 788 5 13 soilstatetype cellorg_col$p soilstate_type
R 789 5 14 soilstatetype cellorg_col$o soilstate_type
R 791 5 16 soilstatetype cellsand_col soilstate_type
R 794 5 19 soilstatetype cellsand_col$sd soilstate_type
R 795 5 20 soilstatetype cellsand_col$p soilstate_type
R 796 5 21 soilstatetype cellsand_col$o soilstate_type
R 798 5 23 soilstatetype cellclay_col soilstate_type
R 801 5 26 soilstatetype cellclay_col$sd soilstate_type
R 802 5 27 soilstatetype cellclay_col$p soilstate_type
R 803 5 28 soilstatetype cellclay_col$o soilstate_type
R 805 5 30 soilstatetype hksat_col soilstate_type
R 808 5 33 soilstatetype hksat_col$sd soilstate_type
R 809 5 34 soilstatetype hksat_col$p soilstate_type
R 810 5 35 soilstatetype hksat_col$o soilstate_type
R 812 5 37 soilstatetype hk_l_col soilstate_type
R 815 5 40 soilstatetype hk_l_col$sd soilstate_type
R 816 5 41 soilstatetype hk_l_col$p soilstate_type
R 817 5 42 soilstatetype hk_l_col$o soilstate_type
R 819 5 44 soilstatetype smp_l_col soilstate_type
R 822 5 47 soilstatetype smp_l_col$sd soilstate_type
R 823 5 48 soilstatetype smp_l_col$p soilstate_type
R 824 5 49 soilstatetype smp_l_col$o soilstate_type
R 826 5 51 soilstatetype bsw_col soilstate_type
R 829 5 54 soilstatetype bsw_col$sd soilstate_type
R 830 5 55 soilstatetype bsw_col$p soilstate_type
R 831 5 56 soilstatetype bsw_col$o soilstate_type
R 833 5 58 soilstatetype watsat_col soilstate_type
R 836 5 61 soilstatetype watsat_col$sd soilstate_type
R 837 5 62 soilstatetype watsat_col$p soilstate_type
R 838 5 63 soilstatetype watsat_col$o soilstate_type
R 840 5 65 soilstatetype sucsat_col soilstate_type
R 843 5 68 soilstatetype sucsat_col$sd soilstate_type
R 844 5 69 soilstatetype sucsat_col$p soilstate_type
R 845 5 70 soilstatetype sucsat_col$o soilstate_type
R 847 5 72 soilstatetype dsl_col soilstate_type
R 849 5 74 soilstatetype dsl_col$sd soilstate_type
R 850 5 75 soilstatetype dsl_col$p soilstate_type
R 851 5 76 soilstatetype dsl_col$o soilstate_type
R 853 5 78 soilstatetype soilresis_col soilstate_type
R 855 5 80 soilstatetype soilresis_col$sd soilstate_type
R 856 5 81 soilstatetype soilresis_col$p soilstate_type
R 857 5 82 soilstatetype soilresis_col$o soilstate_type
R 859 5 84 soilstatetype thk_col soilstate_type
R 862 5 87 soilstatetype thk_col$sd soilstate_type
R 863 5 88 soilstatetype thk_col$p soilstate_type
R 864 5 89 soilstatetype thk_col$o soilstate_type
R 866 5 91 soilstatetype tkmg_col soilstate_type
R 869 5 94 soilstatetype tkmg_col$sd soilstate_type
R 870 5 95 soilstatetype tkmg_col$p soilstate_type
R 871 5 96 soilstatetype tkmg_col$o soilstate_type
R 873 5 98 soilstatetype tkdry_col soilstate_type
R 876 5 101 soilstatetype tkdry_col$sd soilstate_type
R 877 5 102 soilstatetype tkdry_col$p soilstate_type
R 878 5 103 soilstatetype tkdry_col$o soilstate_type
R 880 5 105 soilstatetype csol_col soilstate_type
R 883 5 108 soilstatetype csol_col$sd soilstate_type
R 884 5 109 soilstatetype csol_col$p soilstate_type
R 885 5 110 soilstatetype csol_col$o soilstate_type
R 887 5 112 soilstatetype rootfr_patch soilstate_type
R 890 5 115 soilstatetype rootfr_patch$sd soilstate_type
R 891 5 116 soilstatetype rootfr_patch$p soilstate_type
R 892 5 117 soilstatetype rootfr_patch$o soilstate_type
R 896 5 121 soilstatetype initallocate$tbp$0 soilstate_type
R 897 5 122 soilstatetype init$tbp$1 soilstate_type
S 908 23 5 0 0 0 914 624 5187 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilwater
S 909 1 3 1 0 58 1 908 5180 4 3000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 910 1 3 1 0 6 1 908 7445 4 3000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_hydrologyc
S 911 7 3 1 0 231 1 908 7460 20000004 10003000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_hydrologyc
S 912 1 3 3 0 219 1 908 7478 4 3000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 913 1 3 1 0 225 1 908 7493 4 3000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 914 14 5 0 0 0 1 908 5187 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 18 5 0 0 0 0 0 0 0 0 0 0 0 0 25 0 624 0 0 0 0 soilwater soilwater 
F 914 5 909 910 911 912 913
S 915 6 1 0 0 7 1 908 7513 40800006 3000 A 0 0 0 0 B 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 916 6 1 0 0 7 1 908 7521 40800006 3000 A 0 0 0 0 B 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 917 6 1 0 0 7 1 908 7529 40800006 3000 A 0 0 0 0 B 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 918 6 1 0 0 7 1 908 7537 40800006 3000 A 0 0 0 0 B 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_321
S 919 23 5 0 0 0 925 624 5197 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilwater_moisture_form
S 920 6 3 1 0 58 1 919 5180 800004 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 921 1 3 1 0 6 1 919 7445 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_hydrologyc
S 922 7 3 1 0 234 1 919 7460 20000004 10003000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_hydrologyc
S 923 1 3 3 0 114 1 919 7478 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 924 1 3 1 0 75 1 919 7493 4 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 925 14 5 0 0 0 1 919 5197 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 24 5 0 0 0 0 0 0 0 0 0 0 0 0 50 0 624 0 0 0 0 soilwater_moisture_form soilwater_moisture_form 
F 925 5 920 921 922 923 924
S 926 6 1 0 0 7 1 919 7513 40800006 3000 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 927 6 1 0 0 7 1 919 7521 40800006 3000 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 928 6 1 0 0 7 1 919 7529 40800006 3000 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 929 6 1 0 0 7 1 919 7545 40800006 3000 A 0 0 0 0 B 0 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_380
S 930 23 5 0 0 0 937 624 5221 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 compute_hydraulic_properties
S 931 1 3 1 0 6 1 930 7553 4 3000 A 0 0 0 0 B 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 932 6 3 1 0 6 1 930 7555 800004 3000 A 0 0 0 0 B 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nlayers
S 933 1 3 3 0 114 1 930 7478 4 3000 A 0 0 0 0 B 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 934 7 3 1 0 237 1 930 7563 800204 3000 A 0 0 0 0 B 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 vwc_liq
S 935 7 3 2 0 240 1 930 7571 800204 3000 A 0 0 0 0 B 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 hk
S 936 7 3 2 0 243 1 930 7574 800204 3000 A 0 0 0 0 B 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 smp
S 937 14 5 0 0 0 1 930 5221 210 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 30 6 0 0 0 0 0 0 0 0 0 0 0 0 112 0 624 0 0 0 0 compute_hydraulic_properties compute_hydraulic_properties 
F 937 6 931 932 933 934 935 936
S 938 6 1 0 0 7 1 930 7578 40800006 3000 A 0 0 0 0 B 0 125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_325
A 316 1 0 0 0 7 917 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 317 1 0 0 0 7 915 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 318 1 0 0 0 7 918 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 319 1 0 0 0 7 916 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 320 1 0 0 0 7 928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 321 1 0 0 0 7 926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 322 1 0 0 0 7 929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 323 1 0 0 0 7 927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 324 1 0 0 0 6 932 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 325 7 0 0 0 7 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 326 1 0 0 0 7 938 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
