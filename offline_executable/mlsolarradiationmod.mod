V34 :0x24 mlsolarradiationmod
23 MLSolarRadiationMod.F90 S624 0
06/02/2026  09:20:33
use mlcanopyfluxestype private
use mlpftconmod private
use shr_kind_mod private
use pftconmod private
use patchtype private
use decompmod private
use clm_varctl private
use abortutils private
enduse
D 66 26 1215 32 1214 3
D 104 26 1378 1560 1377 7
D 164 22 7
D 166 22 7
D 168 22 7
D 170 22 7
D 172 22 7
D 174 22 7
D 176 22 7
D 178 22 7
D 180 22 7
D 185 26 1467 2432 1466 7
D 287 22 7
D 289 22 7
D 291 22 7
D 293 22 7
D 295 22 7
D 297 22 7
D 299 22 7
D 301 22 7
D 303 22 7
D 305 22 7
D 307 22 7
D 309 22 7
D 311 22 7
D 313 22 7
D 315 22 7
D 317 22 7
D 345 26 2120 48080 2119 7
D 1896 23 6 1 3928 3931 1 1 0 0 1
 11 3929 11 11 3929 3930
D 1899 23 6 1 3932 3935 1 1 0 0 1
 11 3933 11 11 3933 3934
D 1902 23 10 3 3936 3950 0 0 1 0 0
 3940 3943 11 3944 3945 3946
 11 3947 3946 11 3947 3947
 11 3948 3949 11 3948 3948
D 1905 23 10 3 3936 3950 0 0 1 0 0
 3940 3943 11 3944 3945 3946
 11 3947 3946 11 3947 3947
 11 3948 3949 11 3948 3948
D 1908 23 10 3 3936 3950 0 0 1 0 0
 3940 3943 11 3944 3945 3946
 11 3947 3946 11 3947 3947
 11 3948 3949 11 3948 3948
D 1911 23 6 1 3951 3954 1 1 0 0 1
 11 3952 11 11 3952 3953
D 1914 23 10 3 3955 3965 0 0 1 0 0
 3958 3960 11 3961 3962 3963
 11 3947 3963 11 3947 3947
 0 3948 3964 11 3948 3948
D 1917 23 10 2 3966 3964 0 0 1 0 0
 3958 3960 11 3961 3962 3963
 11 3947 3963 11 3947 3947
D 1920 23 10 3 3955 3965 0 0 1 0 0
 3958 3960 11 3961 3962 3963
 11 3947 3963 11 3947 3947
 0 3948 3964 11 3948 3948
D 1923 23 10 3 3955 3965 0 0 1 0 0
 3958 3960 11 3961 3962 3963
 11 3947 3963 11 3947 3947
 0 3948 3964 11 3948 3948
D 1926 23 10 2 3966 3964 0 0 1 0 0
 3958 3960 11 3961 3962 3963
 11 3947 3963 11 3947 3947
S 624 24 0 0 0 6 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 mlsolarradiationmod
S 626 23 0 0 0 9 1208 624 5043 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 628 23 0 0 0 6 651 624 5061 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 iulog
S 630 23 0 0 0 9 1214 624 5077 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 632 23 0 0 0 9 1301 624 5099 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 patch
S 634 23 0 0 0 9 1444 624 5115 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pftcon
S 636 23 0 0 0 9 644 624 5135 4 0 A 0 0 0 0 B 400000 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 639 23 0 0 0 6 1571 624 5162 4 0 A 0 0 0 0 B 400000 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mlpftcon
S 641 23 0 0 0 6 2119 624 5190 4 0 A 0 0 0 0 B 400000 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mlcanopy_type
R 644 16 1 shr_kind_mod shr_kind_r8
R 651 6 2 clm_varctl iulog
R 1208 14 450 abortutils endrun
R 1214 25 2 decompmod bounds_type
R 1215 5 3 decompmod begg bounds_type
R 1216 5 4 decompmod endg bounds_type
R 1217 5 5 decompmod begl bounds_type
R 1218 5 6 decompmod endl bounds_type
R 1219 5 7 decompmod begc bounds_type
R 1220 5 8 decompmod endc bounds_type
R 1221 5 9 decompmod begp bounds_type
R 1222 5 10 decompmod endp bounds_type
S 1270 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1301 6 26 patchtype patch
S 1367 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1377 25 8 pftconmod pftcon_type
R 1378 5 9 pftconmod dleaf pftcon_type
R 1380 5 11 pftconmod dleaf$sd pftcon_type
R 1381 5 12 pftconmod dleaf$p pftcon_type
R 1382 5 13 pftconmod dleaf$o pftcon_type
R 1384 5 15 pftconmod c3psn pftcon_type
R 1386 5 17 pftconmod c3psn$sd pftcon_type
R 1387 5 18 pftconmod c3psn$p pftcon_type
R 1388 5 19 pftconmod c3psn$o pftcon_type
R 1390 5 21 pftconmod xl pftcon_type
R 1392 5 23 pftconmod xl$sd pftcon_type
R 1393 5 24 pftconmod xl$p pftcon_type
R 1394 5 25 pftconmod xl$o pftcon_type
R 1396 5 27 pftconmod rhol pftcon_type
R 1399 5 30 pftconmod rhol$sd pftcon_type
R 1400 5 31 pftconmod rhol$p pftcon_type
R 1401 5 32 pftconmod rhol$o pftcon_type
R 1403 5 34 pftconmod rhos pftcon_type
R 1406 5 37 pftconmod rhos$sd pftcon_type
R 1407 5 38 pftconmod rhos$p pftcon_type
R 1408 5 39 pftconmod rhos$o pftcon_type
R 1410 5 41 pftconmod taul pftcon_type
R 1413 5 44 pftconmod taul$sd pftcon_type
R 1414 5 45 pftconmod taul$p pftcon_type
R 1415 5 46 pftconmod taul$o pftcon_type
R 1417 5 48 pftconmod taus pftcon_type
R 1420 5 51 pftconmod taus$sd pftcon_type
R 1421 5 52 pftconmod taus$p pftcon_type
R 1422 5 53 pftconmod taus$o pftcon_type
R 1424 5 55 pftconmod rootprof_beta pftcon_type
R 1426 5 57 pftconmod rootprof_beta$sd pftcon_type
R 1427 5 58 pftconmod rootprof_beta$p pftcon_type
R 1428 5 59 pftconmod rootprof_beta$o pftcon_type
R 1430 5 61 pftconmod slatop pftcon_type
R 1432 5 63 pftconmod slatop$sd pftcon_type
R 1433 5 64 pftconmod slatop$p pftcon_type
R 1434 5 65 pftconmod slatop$o pftcon_type
R 1439 5 70 pftconmod initread$tbp$0 pftcon_type
R 1440 5 71 pftconmod initallocate$tbp$1 pftcon_type
R 1441 5 72 pftconmod init$tbp$2 pftcon_type
R 1444 6 75 pftconmod pftcon
R 1466 25 6 mlpftconmod mlpftcon_type
R 1467 5 7 mlpftconmod vcmaxpft mlpftcon_type
R 1469 5 9 mlpftconmod vcmaxpft$sd mlpftcon_type
R 1470 5 10 mlpftconmod vcmaxpft$p mlpftcon_type
R 1471 5 11 mlpftconmod vcmaxpft$o mlpftcon_type
R 1473 5 13 mlpftconmod gplant_spa mlpftcon_type
R 1475 5 15 mlpftconmod gplant_spa$sd mlpftcon_type
R 1476 5 16 mlpftconmod gplant_spa$p mlpftcon_type
R 1477 5 17 mlpftconmod gplant_spa$o mlpftcon_type
R 1479 5 19 mlpftconmod capac_spa mlpftcon_type
R 1481 5 21 mlpftconmod capac_spa$sd mlpftcon_type
R 1482 5 22 mlpftconmod capac_spa$p mlpftcon_type
R 1483 5 23 mlpftconmod capac_spa$o mlpftcon_type
R 1485 5 25 mlpftconmod iota_spa mlpftcon_type
R 1487 5 27 mlpftconmod iota_spa$sd mlpftcon_type
R 1488 5 28 mlpftconmod iota_spa$p mlpftcon_type
R 1489 5 29 mlpftconmod iota_spa$o mlpftcon_type
R 1491 5 31 mlpftconmod root_radius_spa mlpftcon_type
R 1493 5 33 mlpftconmod root_radius_spa$sd mlpftcon_type
R 1494 5 34 mlpftconmod root_radius_spa$p mlpftcon_type
R 1495 5 35 mlpftconmod root_radius_spa$o mlpftcon_type
R 1497 5 37 mlpftconmod root_density_spa mlpftcon_type
R 1499 5 39 mlpftconmod root_density_spa$sd mlpftcon_type
R 1500 5 40 mlpftconmod root_density_spa$p mlpftcon_type
R 1501 5 41 mlpftconmod root_density_spa$o mlpftcon_type
R 1503 5 43 mlpftconmod root_resist_spa mlpftcon_type
R 1505 5 45 mlpftconmod root_resist_spa$sd mlpftcon_type
R 1506 5 46 mlpftconmod root_resist_spa$p mlpftcon_type
R 1507 5 47 mlpftconmod root_resist_spa$o mlpftcon_type
R 1509 5 49 mlpftconmod gsmin_spa mlpftcon_type
R 1511 5 51 mlpftconmod gsmin_spa$sd mlpftcon_type
R 1512 5 52 mlpftconmod gsmin_spa$p mlpftcon_type
R 1513 5 53 mlpftconmod gsmin_spa$o mlpftcon_type
R 1515 5 55 mlpftconmod g0_bb mlpftcon_type
R 1517 5 57 mlpftconmod g0_bb$sd mlpftcon_type
R 1518 5 58 mlpftconmod g0_bb$p mlpftcon_type
R 1519 5 59 mlpftconmod g0_bb$o mlpftcon_type
R 1521 5 61 mlpftconmod g1_bb mlpftcon_type
R 1523 5 63 mlpftconmod g1_bb$sd mlpftcon_type
R 1524 5 64 mlpftconmod g1_bb$p mlpftcon_type
R 1525 5 65 mlpftconmod g1_bb$o mlpftcon_type
R 1527 5 67 mlpftconmod g0_med mlpftcon_type
R 1529 5 69 mlpftconmod g0_med$sd mlpftcon_type
R 1530 5 70 mlpftconmod g0_med$p mlpftcon_type
R 1531 5 71 mlpftconmod g0_med$o mlpftcon_type
R 1533 5 73 mlpftconmod g1_med mlpftcon_type
R 1535 5 75 mlpftconmod g1_med$sd mlpftcon_type
R 1536 5 76 mlpftconmod g1_med$p mlpftcon_type
R 1537 5 77 mlpftconmod g1_med$o mlpftcon_type
R 1539 5 79 mlpftconmod psi50_gs mlpftcon_type
R 1541 5 81 mlpftconmod psi50_gs$sd mlpftcon_type
R 1542 5 82 mlpftconmod psi50_gs$p mlpftcon_type
R 1543 5 83 mlpftconmod psi50_gs$o mlpftcon_type
R 1545 5 85 mlpftconmod shape_gs mlpftcon_type
R 1547 5 87 mlpftconmod shape_gs$sd mlpftcon_type
R 1548 5 88 mlpftconmod shape_gs$p mlpftcon_type
R 1549 5 89 mlpftconmod shape_gs$o mlpftcon_type
R 1551 5 91 mlpftconmod emleaf mlpftcon_type
R 1553 5 93 mlpftconmod emleaf$sd mlpftcon_type
R 1554 5 94 mlpftconmod emleaf$p mlpftcon_type
R 1555 5 95 mlpftconmod emleaf$o mlpftcon_type
R 1557 5 97 mlpftconmod clump_fac mlpftcon_type
R 1559 5 99 mlpftconmod clump_fac$sd mlpftcon_type
R 1560 5 100 mlpftconmod clump_fac$p mlpftcon_type
R 1561 5 101 mlpftconmod clump_fac$o mlpftcon_type
R 1566 5 106 mlpftconmod initread$tbp$0 mlpftcon_type
R 1567 5 107 mlpftconmod initallocate$tbp$1 mlpftcon_type
R 1568 5 108 mlpftconmod init$tbp$2 mlpftcon_type
R 1571 6 111 mlpftconmod mlpftcon
R 2119 25 11 mlcanopyfluxestype mlcanopy_type
R 2120 5 12 mlcanopyfluxestype ztop_canopy mlcanopy_type
R 2122 5 14 mlcanopyfluxestype ztop_canopy$sd mlcanopy_type
R 2123 5 15 mlcanopyfluxestype ztop_canopy$p mlcanopy_type
R 2124 5 16 mlcanopyfluxestype ztop_canopy$o mlcanopy_type
R 2126 5 18 mlcanopyfluxestype zbot_canopy mlcanopy_type
R 2128 5 20 mlcanopyfluxestype zbot_canopy$sd mlcanopy_type
R 2129 5 21 mlcanopyfluxestype zbot_canopy$p mlcanopy_type
R 2130 5 22 mlcanopyfluxestype zbot_canopy$o mlcanopy_type
R 2132 5 24 mlcanopyfluxestype lai_canopy mlcanopy_type
R 2134 5 26 mlcanopyfluxestype lai_canopy$sd mlcanopy_type
R 2135 5 27 mlcanopyfluxestype lai_canopy$p mlcanopy_type
R 2136 5 28 mlcanopyfluxestype lai_canopy$o mlcanopy_type
R 2138 5 30 mlcanopyfluxestype sai_canopy mlcanopy_type
R 2140 5 32 mlcanopyfluxestype sai_canopy$sd mlcanopy_type
R 2141 5 33 mlcanopyfluxestype sai_canopy$p mlcanopy_type
R 2142 5 34 mlcanopyfluxestype sai_canopy$o mlcanopy_type
R 2144 5 36 mlcanopyfluxestype root_biomass_canopy mlcanopy_type
R 2146 5 38 mlcanopyfluxestype root_biomass_canopy$sd mlcanopy_type
R 2147 5 39 mlcanopyfluxestype root_biomass_canopy$p mlcanopy_type
R 2148 5 40 mlcanopyfluxestype root_biomass_canopy$o mlcanopy_type
R 2150 5 42 mlcanopyfluxestype pbeta_lai_canopy mlcanopy_type
R 2153 5 45 mlcanopyfluxestype pbeta_lai_canopy$sd mlcanopy_type
R 2154 5 46 mlcanopyfluxestype pbeta_lai_canopy$p mlcanopy_type
R 2155 5 47 mlcanopyfluxestype pbeta_lai_canopy$o mlcanopy_type
R 2157 5 49 mlcanopyfluxestype pbeta_sai_canopy mlcanopy_type
R 2160 5 52 mlcanopyfluxestype pbeta_sai_canopy$sd mlcanopy_type
R 2161 5 53 mlcanopyfluxestype pbeta_sai_canopy$p mlcanopy_type
R 2162 5 54 mlcanopyfluxestype pbeta_sai_canopy$o mlcanopy_type
R 2164 5 56 mlcanopyfluxestype zref_forcing mlcanopy_type
R 2166 5 58 mlcanopyfluxestype zref_forcing$sd mlcanopy_type
R 2167 5 59 mlcanopyfluxestype zref_forcing$p mlcanopy_type
R 2168 5 60 mlcanopyfluxestype zref_forcing$o mlcanopy_type
R 2170 5 62 mlcanopyfluxestype tref_forcing mlcanopy_type
R 2172 5 64 mlcanopyfluxestype tref_forcing$sd mlcanopy_type
R 2173 5 65 mlcanopyfluxestype tref_forcing$p mlcanopy_type
R 2174 5 66 mlcanopyfluxestype tref_forcing$o mlcanopy_type
R 2176 5 68 mlcanopyfluxestype tref_bef_forcing mlcanopy_type
R 2178 5 70 mlcanopyfluxestype tref_bef_forcing$sd mlcanopy_type
R 2179 5 71 mlcanopyfluxestype tref_bef_forcing$p mlcanopy_type
R 2180 5 72 mlcanopyfluxestype tref_bef_forcing$o mlcanopy_type
R 2182 5 74 mlcanopyfluxestype tref_cur_forcing mlcanopy_type
R 2184 5 76 mlcanopyfluxestype tref_cur_forcing$sd mlcanopy_type
R 2185 5 77 mlcanopyfluxestype tref_cur_forcing$p mlcanopy_type
R 2186 5 78 mlcanopyfluxestype tref_cur_forcing$o mlcanopy_type
R 2188 5 80 mlcanopyfluxestype tref_next_forcing mlcanopy_type
R 2190 5 82 mlcanopyfluxestype tref_next_forcing$sd mlcanopy_type
R 2191 5 83 mlcanopyfluxestype tref_next_forcing$p mlcanopy_type
R 2192 5 84 mlcanopyfluxestype tref_next_forcing$o mlcanopy_type
R 2194 5 86 mlcanopyfluxestype qref_forcing mlcanopy_type
R 2196 5 88 mlcanopyfluxestype qref_forcing$sd mlcanopy_type
R 2197 5 89 mlcanopyfluxestype qref_forcing$p mlcanopy_type
R 2198 5 90 mlcanopyfluxestype qref_forcing$o mlcanopy_type
R 2200 5 92 mlcanopyfluxestype qref_bef_forcing mlcanopy_type
R 2202 5 94 mlcanopyfluxestype qref_bef_forcing$sd mlcanopy_type
R 2203 5 95 mlcanopyfluxestype qref_bef_forcing$p mlcanopy_type
R 2204 5 96 mlcanopyfluxestype qref_bef_forcing$o mlcanopy_type
R 2206 5 98 mlcanopyfluxestype qref_cur_forcing mlcanopy_type
R 2208 5 100 mlcanopyfluxestype qref_cur_forcing$sd mlcanopy_type
R 2209 5 101 mlcanopyfluxestype qref_cur_forcing$p mlcanopy_type
R 2210 5 102 mlcanopyfluxestype qref_cur_forcing$o mlcanopy_type
R 2212 5 104 mlcanopyfluxestype qref_next_forcing mlcanopy_type
R 2214 5 106 mlcanopyfluxestype qref_next_forcing$sd mlcanopy_type
R 2215 5 107 mlcanopyfluxestype qref_next_forcing$p mlcanopy_type
R 2216 5 108 mlcanopyfluxestype qref_next_forcing$o mlcanopy_type
R 2218 5 110 mlcanopyfluxestype uref_forcing mlcanopy_type
R 2220 5 112 mlcanopyfluxestype uref_forcing$sd mlcanopy_type
R 2221 5 113 mlcanopyfluxestype uref_forcing$p mlcanopy_type
R 2222 5 114 mlcanopyfluxestype uref_forcing$o mlcanopy_type
R 2224 5 116 mlcanopyfluxestype uref_bef_forcing mlcanopy_type
R 2226 5 118 mlcanopyfluxestype uref_bef_forcing$sd mlcanopy_type
R 2227 5 119 mlcanopyfluxestype uref_bef_forcing$p mlcanopy_type
R 2228 5 120 mlcanopyfluxestype uref_bef_forcing$o mlcanopy_type
R 2230 5 122 mlcanopyfluxestype uref_cur_forcing mlcanopy_type
R 2232 5 124 mlcanopyfluxestype uref_cur_forcing$sd mlcanopy_type
R 2233 5 125 mlcanopyfluxestype uref_cur_forcing$p mlcanopy_type
R 2234 5 126 mlcanopyfluxestype uref_cur_forcing$o mlcanopy_type
R 2236 5 128 mlcanopyfluxestype uref_next_forcing mlcanopy_type
R 2238 5 130 mlcanopyfluxestype uref_next_forcing$sd mlcanopy_type
R 2239 5 131 mlcanopyfluxestype uref_next_forcing$p mlcanopy_type
R 2240 5 132 mlcanopyfluxestype uref_next_forcing$o mlcanopy_type
R 2242 5 134 mlcanopyfluxestype pref_forcing mlcanopy_type
R 2244 5 136 mlcanopyfluxestype pref_forcing$sd mlcanopy_type
R 2245 5 137 mlcanopyfluxestype pref_forcing$p mlcanopy_type
R 2246 5 138 mlcanopyfluxestype pref_forcing$o mlcanopy_type
R 2248 5 140 mlcanopyfluxestype pref_bef_forcing mlcanopy_type
R 2250 5 142 mlcanopyfluxestype pref_bef_forcing$sd mlcanopy_type
R 2251 5 143 mlcanopyfluxestype pref_bef_forcing$p mlcanopy_type
R 2252 5 144 mlcanopyfluxestype pref_bef_forcing$o mlcanopy_type
R 2254 5 146 mlcanopyfluxestype pref_cur_forcing mlcanopy_type
R 2256 5 148 mlcanopyfluxestype pref_cur_forcing$sd mlcanopy_type
R 2257 5 149 mlcanopyfluxestype pref_cur_forcing$p mlcanopy_type
R 2258 5 150 mlcanopyfluxestype pref_cur_forcing$o mlcanopy_type
R 2260 5 152 mlcanopyfluxestype pref_next_forcing mlcanopy_type
R 2262 5 154 mlcanopyfluxestype pref_next_forcing$sd mlcanopy_type
R 2263 5 155 mlcanopyfluxestype pref_next_forcing$p mlcanopy_type
R 2264 5 156 mlcanopyfluxestype pref_next_forcing$o mlcanopy_type
R 2266 5 158 mlcanopyfluxestype co2ref_forcing mlcanopy_type
R 2268 5 160 mlcanopyfluxestype co2ref_forcing$sd mlcanopy_type
R 2269 5 161 mlcanopyfluxestype co2ref_forcing$p mlcanopy_type
R 2270 5 162 mlcanopyfluxestype co2ref_forcing$o mlcanopy_type
R 2272 5 164 mlcanopyfluxestype co2ref_bef_forcing mlcanopy_type
R 2274 5 166 mlcanopyfluxestype co2ref_bef_forcing$sd mlcanopy_type
R 2275 5 167 mlcanopyfluxestype co2ref_bef_forcing$p mlcanopy_type
R 2276 5 168 mlcanopyfluxestype co2ref_bef_forcing$o mlcanopy_type
R 2278 5 170 mlcanopyfluxestype co2ref_cur_forcing mlcanopy_type
R 2280 5 172 mlcanopyfluxestype co2ref_cur_forcing$sd mlcanopy_type
R 2281 5 173 mlcanopyfluxestype co2ref_cur_forcing$p mlcanopy_type
R 2282 5 174 mlcanopyfluxestype co2ref_cur_forcing$o mlcanopy_type
R 2284 5 176 mlcanopyfluxestype co2ref_next_forcing mlcanopy_type
R 2286 5 178 mlcanopyfluxestype co2ref_next_forcing$sd mlcanopy_type
R 2287 5 179 mlcanopyfluxestype co2ref_next_forcing$p mlcanopy_type
R 2288 5 180 mlcanopyfluxestype co2ref_next_forcing$o mlcanopy_type
R 2290 5 182 mlcanopyfluxestype o2ref_forcing mlcanopy_type
R 2292 5 184 mlcanopyfluxestype o2ref_forcing$sd mlcanopy_type
R 2293 5 185 mlcanopyfluxestype o2ref_forcing$p mlcanopy_type
R 2294 5 186 mlcanopyfluxestype o2ref_forcing$o mlcanopy_type
R 2296 5 188 mlcanopyfluxestype swskyb_forcing mlcanopy_type
R 2299 5 191 mlcanopyfluxestype swskyb_forcing$sd mlcanopy_type
R 2300 5 192 mlcanopyfluxestype swskyb_forcing$p mlcanopy_type
R 2301 5 193 mlcanopyfluxestype swskyb_forcing$o mlcanopy_type
R 2303 5 195 mlcanopyfluxestype swskyb_bef_forcing mlcanopy_type
R 2306 5 198 mlcanopyfluxestype swskyb_bef_forcing$sd mlcanopy_type
R 2307 5 199 mlcanopyfluxestype swskyb_bef_forcing$p mlcanopy_type
R 2308 5 200 mlcanopyfluxestype swskyb_bef_forcing$o mlcanopy_type
R 2310 5 202 mlcanopyfluxestype swskyb_cur_forcing mlcanopy_type
R 2313 5 205 mlcanopyfluxestype swskyb_cur_forcing$sd mlcanopy_type
R 2314 5 206 mlcanopyfluxestype swskyb_cur_forcing$p mlcanopy_type
R 2315 5 207 mlcanopyfluxestype swskyb_cur_forcing$o mlcanopy_type
R 2317 5 209 mlcanopyfluxestype swskyb_next_forcing mlcanopy_type
R 2320 5 212 mlcanopyfluxestype swskyb_next_forcing$sd mlcanopy_type
R 2321 5 213 mlcanopyfluxestype swskyb_next_forcing$p mlcanopy_type
R 2322 5 214 mlcanopyfluxestype swskyb_next_forcing$o mlcanopy_type
R 2324 5 216 mlcanopyfluxestype swskyd_forcing mlcanopy_type
R 2327 5 219 mlcanopyfluxestype swskyd_forcing$sd mlcanopy_type
R 2328 5 220 mlcanopyfluxestype swskyd_forcing$p mlcanopy_type
R 2329 5 221 mlcanopyfluxestype swskyd_forcing$o mlcanopy_type
R 2331 5 223 mlcanopyfluxestype swskyd_bef_forcing mlcanopy_type
R 2334 5 226 mlcanopyfluxestype swskyd_bef_forcing$sd mlcanopy_type
R 2335 5 227 mlcanopyfluxestype swskyd_bef_forcing$p mlcanopy_type
R 2336 5 228 mlcanopyfluxestype swskyd_bef_forcing$o mlcanopy_type
R 2338 5 230 mlcanopyfluxestype swskyd_cur_forcing mlcanopy_type
R 2341 5 233 mlcanopyfluxestype swskyd_cur_forcing$sd mlcanopy_type
R 2342 5 234 mlcanopyfluxestype swskyd_cur_forcing$p mlcanopy_type
R 2343 5 235 mlcanopyfluxestype swskyd_cur_forcing$o mlcanopy_type
R 2345 5 237 mlcanopyfluxestype swskyd_next_forcing mlcanopy_type
R 2348 5 240 mlcanopyfluxestype swskyd_next_forcing$sd mlcanopy_type
R 2349 5 241 mlcanopyfluxestype swskyd_next_forcing$p mlcanopy_type
R 2350 5 242 mlcanopyfluxestype swskyd_next_forcing$o mlcanopy_type
R 2352 5 244 mlcanopyfluxestype lwsky_forcing mlcanopy_type
R 2354 5 246 mlcanopyfluxestype lwsky_forcing$sd mlcanopy_type
R 2355 5 247 mlcanopyfluxestype lwsky_forcing$p mlcanopy_type
R 2356 5 248 mlcanopyfluxestype lwsky_forcing$o mlcanopy_type
R 2358 5 250 mlcanopyfluxestype lwsky_bef_forcing mlcanopy_type
R 2360 5 252 mlcanopyfluxestype lwsky_bef_forcing$sd mlcanopy_type
R 2361 5 253 mlcanopyfluxestype lwsky_bef_forcing$p mlcanopy_type
R 2362 5 254 mlcanopyfluxestype lwsky_bef_forcing$o mlcanopy_type
R 2364 5 256 mlcanopyfluxestype lwsky_cur_forcing mlcanopy_type
R 2366 5 258 mlcanopyfluxestype lwsky_cur_forcing$sd mlcanopy_type
R 2367 5 259 mlcanopyfluxestype lwsky_cur_forcing$p mlcanopy_type
R 2368 5 260 mlcanopyfluxestype lwsky_cur_forcing$o mlcanopy_type
R 2370 5 262 mlcanopyfluxestype lwsky_next_forcing mlcanopy_type
R 2372 5 264 mlcanopyfluxestype lwsky_next_forcing$sd mlcanopy_type
R 2373 5 265 mlcanopyfluxestype lwsky_next_forcing$p mlcanopy_type
R 2374 5 266 mlcanopyfluxestype lwsky_next_forcing$o mlcanopy_type
R 2376 5 268 mlcanopyfluxestype qflx_rain_forcing mlcanopy_type
R 2378 5 270 mlcanopyfluxestype qflx_rain_forcing$sd mlcanopy_type
R 2379 5 271 mlcanopyfluxestype qflx_rain_forcing$p mlcanopy_type
R 2380 5 272 mlcanopyfluxestype qflx_rain_forcing$o mlcanopy_type
R 2382 5 274 mlcanopyfluxestype qflx_snow_forcing mlcanopy_type
R 2384 5 276 mlcanopyfluxestype qflx_snow_forcing$sd mlcanopy_type
R 2385 5 277 mlcanopyfluxestype qflx_snow_forcing$p mlcanopy_type
R 2386 5 278 mlcanopyfluxestype qflx_snow_forcing$o mlcanopy_type
R 2388 5 280 mlcanopyfluxestype tacclim_forcing mlcanopy_type
R 2390 5 282 mlcanopyfluxestype tacclim_forcing$sd mlcanopy_type
R 2391 5 283 mlcanopyfluxestype tacclim_forcing$p mlcanopy_type
R 2392 5 284 mlcanopyfluxestype tacclim_forcing$o mlcanopy_type
R 2394 5 286 mlcanopyfluxestype eref_forcing mlcanopy_type
R 2396 5 288 mlcanopyfluxestype eref_forcing$sd mlcanopy_type
R 2397 5 289 mlcanopyfluxestype eref_forcing$p mlcanopy_type
R 2398 5 290 mlcanopyfluxestype eref_forcing$o mlcanopy_type
R 2400 5 292 mlcanopyfluxestype thref_forcing mlcanopy_type
R 2402 5 294 mlcanopyfluxestype thref_forcing$sd mlcanopy_type
R 2403 5 295 mlcanopyfluxestype thref_forcing$p mlcanopy_type
R 2404 5 296 mlcanopyfluxestype thref_forcing$o mlcanopy_type
R 2406 5 298 mlcanopyfluxestype thvref_forcing mlcanopy_type
R 2408 5 300 mlcanopyfluxestype thvref_forcing$sd mlcanopy_type
R 2409 5 301 mlcanopyfluxestype thvref_forcing$p mlcanopy_type
R 2410 5 302 mlcanopyfluxestype thvref_forcing$o mlcanopy_type
R 2412 5 304 mlcanopyfluxestype rhoair_forcing mlcanopy_type
R 2414 5 306 mlcanopyfluxestype rhoair_forcing$sd mlcanopy_type
R 2415 5 307 mlcanopyfluxestype rhoair_forcing$p mlcanopy_type
R 2416 5 308 mlcanopyfluxestype rhoair_forcing$o mlcanopy_type
R 2418 5 310 mlcanopyfluxestype rhomol_forcing mlcanopy_type
R 2420 5 312 mlcanopyfluxestype rhomol_forcing$sd mlcanopy_type
R 2421 5 313 mlcanopyfluxestype rhomol_forcing$p mlcanopy_type
R 2422 5 314 mlcanopyfluxestype rhomol_forcing$o mlcanopy_type
R 2424 5 316 mlcanopyfluxestype mmair_forcing mlcanopy_type
R 2426 5 318 mlcanopyfluxestype mmair_forcing$sd mlcanopy_type
R 2427 5 319 mlcanopyfluxestype mmair_forcing$p mlcanopy_type
R 2428 5 320 mlcanopyfluxestype mmair_forcing$o mlcanopy_type
R 2430 5 322 mlcanopyfluxestype cpair_forcing mlcanopy_type
R 2432 5 324 mlcanopyfluxestype cpair_forcing$sd mlcanopy_type
R 2433 5 325 mlcanopyfluxestype cpair_forcing$p mlcanopy_type
R 2434 5 326 mlcanopyfluxestype cpair_forcing$o mlcanopy_type
R 2436 5 328 mlcanopyfluxestype solar_zen_forcing mlcanopy_type
R 2438 5 330 mlcanopyfluxestype solar_zen_forcing$sd mlcanopy_type
R 2439 5 331 mlcanopyfluxestype solar_zen_forcing$p mlcanopy_type
R 2440 5 332 mlcanopyfluxestype solar_zen_forcing$o mlcanopy_type
R 2442 5 334 mlcanopyfluxestype swveg_canopy mlcanopy_type
R 2445 5 337 mlcanopyfluxestype swveg_canopy$sd mlcanopy_type
R 2446 5 338 mlcanopyfluxestype swveg_canopy$p mlcanopy_type
R 2447 5 339 mlcanopyfluxestype swveg_canopy$o mlcanopy_type
R 2449 5 341 mlcanopyfluxestype swvegsun_canopy mlcanopy_type
R 2452 5 344 mlcanopyfluxestype swvegsun_canopy$sd mlcanopy_type
R 2453 5 345 mlcanopyfluxestype swvegsun_canopy$p mlcanopy_type
R 2454 5 346 mlcanopyfluxestype swvegsun_canopy$o mlcanopy_type
R 2456 5 348 mlcanopyfluxestype swvegsha_canopy mlcanopy_type
R 2459 5 351 mlcanopyfluxestype swvegsha_canopy$sd mlcanopy_type
R 2460 5 352 mlcanopyfluxestype swvegsha_canopy$p mlcanopy_type
R 2461 5 353 mlcanopyfluxestype swvegsha_canopy$o mlcanopy_type
R 2463 5 355 mlcanopyfluxestype lwveg_canopy mlcanopy_type
R 2465 5 357 mlcanopyfluxestype lwveg_canopy$sd mlcanopy_type
R 2466 5 358 mlcanopyfluxestype lwveg_canopy$p mlcanopy_type
R 2467 5 359 mlcanopyfluxestype lwveg_canopy$o mlcanopy_type
R 2469 5 361 mlcanopyfluxestype lwvegsun_canopy mlcanopy_type
R 2471 5 363 mlcanopyfluxestype lwvegsun_canopy$sd mlcanopy_type
R 2472 5 364 mlcanopyfluxestype lwvegsun_canopy$p mlcanopy_type
R 2473 5 365 mlcanopyfluxestype lwvegsun_canopy$o mlcanopy_type
R 2475 5 367 mlcanopyfluxestype lwvegsha_canopy mlcanopy_type
R 2477 5 369 mlcanopyfluxestype lwvegsha_canopy$sd mlcanopy_type
R 2478 5 370 mlcanopyfluxestype lwvegsha_canopy$p mlcanopy_type
R 2479 5 371 mlcanopyfluxestype lwvegsha_canopy$o mlcanopy_type
R 2481 5 373 mlcanopyfluxestype shveg_canopy mlcanopy_type
R 2483 5 375 mlcanopyfluxestype shveg_canopy$sd mlcanopy_type
R 2484 5 376 mlcanopyfluxestype shveg_canopy$p mlcanopy_type
R 2485 5 377 mlcanopyfluxestype shveg_canopy$o mlcanopy_type
R 2487 5 379 mlcanopyfluxestype shvegsun_canopy mlcanopy_type
R 2489 5 381 mlcanopyfluxestype shvegsun_canopy$sd mlcanopy_type
R 2490 5 382 mlcanopyfluxestype shvegsun_canopy$p mlcanopy_type
R 2491 5 383 mlcanopyfluxestype shvegsun_canopy$o mlcanopy_type
R 2493 5 385 mlcanopyfluxestype shvegsha_canopy mlcanopy_type
R 2495 5 387 mlcanopyfluxestype shvegsha_canopy$sd mlcanopy_type
R 2496 5 388 mlcanopyfluxestype shvegsha_canopy$p mlcanopy_type
R 2497 5 389 mlcanopyfluxestype shvegsha_canopy$o mlcanopy_type
R 2499 5 391 mlcanopyfluxestype lhveg_canopy mlcanopy_type
R 2501 5 393 mlcanopyfluxestype lhveg_canopy$sd mlcanopy_type
R 2502 5 394 mlcanopyfluxestype lhveg_canopy$p mlcanopy_type
R 2503 5 395 mlcanopyfluxestype lhveg_canopy$o mlcanopy_type
R 2505 5 397 mlcanopyfluxestype lhvegsun_canopy mlcanopy_type
R 2507 5 399 mlcanopyfluxestype lhvegsun_canopy$sd mlcanopy_type
R 2508 5 400 mlcanopyfluxestype lhvegsun_canopy$p mlcanopy_type
R 2509 5 401 mlcanopyfluxestype lhvegsun_canopy$o mlcanopy_type
R 2511 5 403 mlcanopyfluxestype lhvegsha_canopy mlcanopy_type
R 2513 5 405 mlcanopyfluxestype lhvegsha_canopy$sd mlcanopy_type
R 2514 5 406 mlcanopyfluxestype lhvegsha_canopy$p mlcanopy_type
R 2515 5 407 mlcanopyfluxestype lhvegsha_canopy$o mlcanopy_type
R 2517 5 409 mlcanopyfluxestype etveg_canopy mlcanopy_type
R 2519 5 411 mlcanopyfluxestype etveg_canopy$sd mlcanopy_type
R 2520 5 412 mlcanopyfluxestype etveg_canopy$p mlcanopy_type
R 2521 5 413 mlcanopyfluxestype etveg_canopy$o mlcanopy_type
R 2523 5 415 mlcanopyfluxestype etvegsun_canopy mlcanopy_type
R 2525 5 417 mlcanopyfluxestype etvegsun_canopy$sd mlcanopy_type
R 2526 5 418 mlcanopyfluxestype etvegsun_canopy$p mlcanopy_type
R 2527 5 419 mlcanopyfluxestype etvegsun_canopy$o mlcanopy_type
R 2529 5 421 mlcanopyfluxestype etvegsha_canopy mlcanopy_type
R 2531 5 423 mlcanopyfluxestype etvegsha_canopy$sd mlcanopy_type
R 2532 5 424 mlcanopyfluxestype etvegsha_canopy$p mlcanopy_type
R 2533 5 425 mlcanopyfluxestype etvegsha_canopy$o mlcanopy_type
R 2535 5 427 mlcanopyfluxestype trveg_canopy mlcanopy_type
R 2537 5 429 mlcanopyfluxestype trveg_canopy$sd mlcanopy_type
R 2538 5 430 mlcanopyfluxestype trveg_canopy$p mlcanopy_type
R 2539 5 431 mlcanopyfluxestype trveg_canopy$o mlcanopy_type
R 2541 5 433 mlcanopyfluxestype evveg_canopy mlcanopy_type
R 2543 5 435 mlcanopyfluxestype evveg_canopy$sd mlcanopy_type
R 2544 5 436 mlcanopyfluxestype evveg_canopy$p mlcanopy_type
R 2545 5 437 mlcanopyfluxestype evveg_canopy$o mlcanopy_type
R 2547 5 439 mlcanopyfluxestype gppveg_canopy mlcanopy_type
R 2549 5 441 mlcanopyfluxestype gppveg_canopy$sd mlcanopy_type
R 2550 5 442 mlcanopyfluxestype gppveg_canopy$p mlcanopy_type
R 2551 5 443 mlcanopyfluxestype gppveg_canopy$o mlcanopy_type
R 2553 5 445 mlcanopyfluxestype gppvegsun_canopy mlcanopy_type
R 2555 5 447 mlcanopyfluxestype gppvegsun_canopy$sd mlcanopy_type
R 2556 5 448 mlcanopyfluxestype gppvegsun_canopy$p mlcanopy_type
R 2557 5 449 mlcanopyfluxestype gppvegsun_canopy$o mlcanopy_type
R 2559 5 451 mlcanopyfluxestype gppvegsha_canopy mlcanopy_type
R 2561 5 453 mlcanopyfluxestype gppvegsha_canopy$sd mlcanopy_type
R 2562 5 454 mlcanopyfluxestype gppvegsha_canopy$p mlcanopy_type
R 2563 5 455 mlcanopyfluxestype gppvegsha_canopy$o mlcanopy_type
R 2565 5 457 mlcanopyfluxestype vcmax25veg_canopy mlcanopy_type
R 2567 5 459 mlcanopyfluxestype vcmax25veg_canopy$sd mlcanopy_type
R 2568 5 460 mlcanopyfluxestype vcmax25veg_canopy$p mlcanopy_type
R 2569 5 461 mlcanopyfluxestype vcmax25veg_canopy$o mlcanopy_type
R 2571 5 463 mlcanopyfluxestype vcmax25sun_canopy mlcanopy_type
R 2573 5 465 mlcanopyfluxestype vcmax25sun_canopy$sd mlcanopy_type
R 2574 5 466 mlcanopyfluxestype vcmax25sun_canopy$p mlcanopy_type
R 2575 5 467 mlcanopyfluxestype vcmax25sun_canopy$o mlcanopy_type
R 2577 5 469 mlcanopyfluxestype vcmax25sha_canopy mlcanopy_type
R 2579 5 471 mlcanopyfluxestype vcmax25sha_canopy$sd mlcanopy_type
R 2580 5 472 mlcanopyfluxestype vcmax25sha_canopy$p mlcanopy_type
R 2581 5 473 mlcanopyfluxestype vcmax25sha_canopy$o mlcanopy_type
R 2583 5 475 mlcanopyfluxestype gsveg_canopy mlcanopy_type
R 2585 5 477 mlcanopyfluxestype gsveg_canopy$sd mlcanopy_type
R 2586 5 478 mlcanopyfluxestype gsveg_canopy$p mlcanopy_type
R 2587 5 479 mlcanopyfluxestype gsveg_canopy$o mlcanopy_type
R 2589 5 481 mlcanopyfluxestype gsvegsun_canopy mlcanopy_type
R 2591 5 483 mlcanopyfluxestype gsvegsun_canopy$sd mlcanopy_type
R 2592 5 484 mlcanopyfluxestype gsvegsun_canopy$p mlcanopy_type
R 2593 5 485 mlcanopyfluxestype gsvegsun_canopy$o mlcanopy_type
R 2595 5 487 mlcanopyfluxestype gsvegsha_canopy mlcanopy_type
R 2597 5 489 mlcanopyfluxestype gsvegsha_canopy$sd mlcanopy_type
R 2598 5 490 mlcanopyfluxestype gsvegsha_canopy$p mlcanopy_type
R 2599 5 491 mlcanopyfluxestype gsvegsha_canopy$o mlcanopy_type
R 2601 5 493 mlcanopyfluxestype windveg_canopy mlcanopy_type
R 2603 5 495 mlcanopyfluxestype windveg_canopy$sd mlcanopy_type
R 2604 5 496 mlcanopyfluxestype windveg_canopy$p mlcanopy_type
R 2605 5 497 mlcanopyfluxestype windveg_canopy$o mlcanopy_type
R 2607 5 499 mlcanopyfluxestype windvegsun_canopy mlcanopy_type
R 2609 5 501 mlcanopyfluxestype windvegsun_canopy$sd mlcanopy_type
R 2610 5 502 mlcanopyfluxestype windvegsun_canopy$p mlcanopy_type
R 2611 5 503 mlcanopyfluxestype windvegsun_canopy$o mlcanopy_type
R 2613 5 505 mlcanopyfluxestype windvegsha_canopy mlcanopy_type
R 2615 5 507 mlcanopyfluxestype windvegsha_canopy$sd mlcanopy_type
R 2616 5 508 mlcanopyfluxestype windvegsha_canopy$p mlcanopy_type
R 2617 5 509 mlcanopyfluxestype windvegsha_canopy$o mlcanopy_type
R 2619 5 511 mlcanopyfluxestype tlveg_canopy mlcanopy_type
R 2621 5 513 mlcanopyfluxestype tlveg_canopy$sd mlcanopy_type
R 2622 5 514 mlcanopyfluxestype tlveg_canopy$p mlcanopy_type
R 2623 5 515 mlcanopyfluxestype tlveg_canopy$o mlcanopy_type
R 2625 5 517 mlcanopyfluxestype tlvegsun_canopy mlcanopy_type
R 2627 5 519 mlcanopyfluxestype tlvegsun_canopy$sd mlcanopy_type
R 2628 5 520 mlcanopyfluxestype tlvegsun_canopy$p mlcanopy_type
R 2629 5 521 mlcanopyfluxestype tlvegsun_canopy$o mlcanopy_type
R 2631 5 523 mlcanopyfluxestype tlvegsha_canopy mlcanopy_type
R 2633 5 525 mlcanopyfluxestype tlvegsha_canopy$sd mlcanopy_type
R 2634 5 526 mlcanopyfluxestype tlvegsha_canopy$p mlcanopy_type
R 2635 5 527 mlcanopyfluxestype tlvegsha_canopy$o mlcanopy_type
R 2637 5 529 mlcanopyfluxestype taveg_canopy mlcanopy_type
R 2639 5 531 mlcanopyfluxestype taveg_canopy$sd mlcanopy_type
R 2640 5 532 mlcanopyfluxestype taveg_canopy$p mlcanopy_type
R 2641 5 533 mlcanopyfluxestype taveg_canopy$o mlcanopy_type
R 2643 5 535 mlcanopyfluxestype tavegsun_canopy mlcanopy_type
R 2645 5 537 mlcanopyfluxestype tavegsun_canopy$sd mlcanopy_type
R 2646 5 538 mlcanopyfluxestype tavegsun_canopy$p mlcanopy_type
R 2647 5 539 mlcanopyfluxestype tavegsun_canopy$o mlcanopy_type
R 2649 5 541 mlcanopyfluxestype tavegsha_canopy mlcanopy_type
R 2651 5 543 mlcanopyfluxestype tavegsha_canopy$sd mlcanopy_type
R 2652 5 544 mlcanopyfluxestype tavegsha_canopy$p mlcanopy_type
R 2653 5 545 mlcanopyfluxestype tavegsha_canopy$o mlcanopy_type
R 2655 5 547 mlcanopyfluxestype laisun_canopy mlcanopy_type
R 2657 5 549 mlcanopyfluxestype laisun_canopy$sd mlcanopy_type
R 2658 5 550 mlcanopyfluxestype laisun_canopy$p mlcanopy_type
R 2659 5 551 mlcanopyfluxestype laisun_canopy$o mlcanopy_type
R 2661 5 553 mlcanopyfluxestype laisha_canopy mlcanopy_type
R 2663 5 555 mlcanopyfluxestype laisha_canopy$sd mlcanopy_type
R 2664 5 556 mlcanopyfluxestype laisha_canopy$p mlcanopy_type
R 2665 5 557 mlcanopyfluxestype laisha_canopy$o mlcanopy_type
R 2667 5 559 mlcanopyfluxestype albcan_canopy mlcanopy_type
R 2670 5 562 mlcanopyfluxestype albcan_canopy$sd mlcanopy_type
R 2671 5 563 mlcanopyfluxestype albcan_canopy$p mlcanopy_type
R 2672 5 564 mlcanopyfluxestype albcan_canopy$o mlcanopy_type
R 2674 5 566 mlcanopyfluxestype lwup_canopy mlcanopy_type
R 2676 5 568 mlcanopyfluxestype lwup_canopy$sd mlcanopy_type
R 2677 5 569 mlcanopyfluxestype lwup_canopy$p mlcanopy_type
R 2678 5 570 mlcanopyfluxestype lwup_canopy$o mlcanopy_type
R 2680 5 572 mlcanopyfluxestype rnet_canopy mlcanopy_type
R 2682 5 574 mlcanopyfluxestype rnet_canopy$sd mlcanopy_type
R 2683 5 575 mlcanopyfluxestype rnet_canopy$p mlcanopy_type
R 2684 5 576 mlcanopyfluxestype rnet_canopy$o mlcanopy_type
R 2686 5 578 mlcanopyfluxestype shflx_canopy mlcanopy_type
R 2688 5 580 mlcanopyfluxestype shflx_canopy$sd mlcanopy_type
R 2689 5 581 mlcanopyfluxestype shflx_canopy$p mlcanopy_type
R 2690 5 582 mlcanopyfluxestype shflx_canopy$o mlcanopy_type
R 2692 5 584 mlcanopyfluxestype lhflx_canopy mlcanopy_type
R 2694 5 586 mlcanopyfluxestype lhflx_canopy$sd mlcanopy_type
R 2695 5 587 mlcanopyfluxestype lhflx_canopy$p mlcanopy_type
R 2696 5 588 mlcanopyfluxestype lhflx_canopy$o mlcanopy_type
R 2698 5 590 mlcanopyfluxestype etflx_canopy mlcanopy_type
R 2700 5 592 mlcanopyfluxestype etflx_canopy$sd mlcanopy_type
R 2701 5 593 mlcanopyfluxestype etflx_canopy$p mlcanopy_type
R 2702 5 594 mlcanopyfluxestype etflx_canopy$o mlcanopy_type
R 2704 5 596 mlcanopyfluxestype stflx_air_canopy mlcanopy_type
R 2706 5 598 mlcanopyfluxestype stflx_air_canopy$sd mlcanopy_type
R 2707 5 599 mlcanopyfluxestype stflx_air_canopy$p mlcanopy_type
R 2708 5 600 mlcanopyfluxestype stflx_air_canopy$o mlcanopy_type
R 2710 5 602 mlcanopyfluxestype stflx_veg_canopy mlcanopy_type
R 2712 5 604 mlcanopyfluxestype stflx_veg_canopy$sd mlcanopy_type
R 2713 5 605 mlcanopyfluxestype stflx_veg_canopy$p mlcanopy_type
R 2714 5 606 mlcanopyfluxestype stflx_veg_canopy$o mlcanopy_type
R 2716 5 608 mlcanopyfluxestype ustar_canopy mlcanopy_type
R 2718 5 610 mlcanopyfluxestype ustar_canopy$sd mlcanopy_type
R 2719 5 611 mlcanopyfluxestype ustar_canopy$p mlcanopy_type
R 2720 5 612 mlcanopyfluxestype ustar_canopy$o mlcanopy_type
R 2722 5 614 mlcanopyfluxestype gac_to_hc_canopy mlcanopy_type
R 2724 5 616 mlcanopyfluxestype gac_to_hc_canopy$sd mlcanopy_type
R 2725 5 617 mlcanopyfluxestype gac_to_hc_canopy$p mlcanopy_type
R 2726 5 618 mlcanopyfluxestype gac_to_hc_canopy$o mlcanopy_type
R 2728 5 620 mlcanopyfluxestype qflx_intr_canopy mlcanopy_type
R 2730 5 622 mlcanopyfluxestype qflx_intr_canopy$sd mlcanopy_type
R 2731 5 623 mlcanopyfluxestype qflx_intr_canopy$p mlcanopy_type
R 2732 5 624 mlcanopyfluxestype qflx_intr_canopy$o mlcanopy_type
R 2734 5 626 mlcanopyfluxestype qflx_tflrain_canopy mlcanopy_type
R 2736 5 628 mlcanopyfluxestype qflx_tflrain_canopy$sd mlcanopy_type
R 2737 5 629 mlcanopyfluxestype qflx_tflrain_canopy$p mlcanopy_type
R 2738 5 630 mlcanopyfluxestype qflx_tflrain_canopy$o mlcanopy_type
R 2740 5 632 mlcanopyfluxestype qflx_tflsnow_canopy mlcanopy_type
R 2742 5 634 mlcanopyfluxestype qflx_tflsnow_canopy$sd mlcanopy_type
R 2743 5 635 mlcanopyfluxestype qflx_tflsnow_canopy$p mlcanopy_type
R 2744 5 636 mlcanopyfluxestype qflx_tflsnow_canopy$o mlcanopy_type
R 2746 5 638 mlcanopyfluxestype uaf_canopy mlcanopy_type
R 2748 5 640 mlcanopyfluxestype uaf_canopy$sd mlcanopy_type
R 2749 5 641 mlcanopyfluxestype uaf_canopy$p mlcanopy_type
R 2750 5 642 mlcanopyfluxestype uaf_canopy$o mlcanopy_type
R 2752 5 644 mlcanopyfluxestype taf_canopy mlcanopy_type
R 2754 5 646 mlcanopyfluxestype taf_canopy$sd mlcanopy_type
R 2755 5 647 mlcanopyfluxestype taf_canopy$p mlcanopy_type
R 2756 5 648 mlcanopyfluxestype taf_canopy$o mlcanopy_type
R 2758 5 650 mlcanopyfluxestype qaf_canopy mlcanopy_type
R 2760 5 652 mlcanopyfluxestype qaf_canopy$sd mlcanopy_type
R 2761 5 653 mlcanopyfluxestype qaf_canopy$p mlcanopy_type
R 2762 5 654 mlcanopyfluxestype qaf_canopy$o mlcanopy_type
R 2764 5 656 mlcanopyfluxestype fracminlwp_canopy mlcanopy_type
R 2766 5 658 mlcanopyfluxestype fracminlwp_canopy$sd mlcanopy_type
R 2767 5 659 mlcanopyfluxestype fracminlwp_canopy$p mlcanopy_type
R 2768 5 660 mlcanopyfluxestype fracminlwp_canopy$o mlcanopy_type
R 2770 5 662 mlcanopyfluxestype obu_canopy mlcanopy_type
R 2772 5 664 mlcanopyfluxestype obu_canopy$sd mlcanopy_type
R 2773 5 665 mlcanopyfluxestype obu_canopy$p mlcanopy_type
R 2774 5 666 mlcanopyfluxestype obu_canopy$o mlcanopy_type
R 2776 5 668 mlcanopyfluxestype beta_canopy mlcanopy_type
R 2778 5 670 mlcanopyfluxestype beta_canopy$sd mlcanopy_type
R 2779 5 671 mlcanopyfluxestype beta_canopy$p mlcanopy_type
R 2780 5 672 mlcanopyfluxestype beta_canopy$o mlcanopy_type
R 2782 5 674 mlcanopyfluxestype prsc_canopy mlcanopy_type
R 2784 5 676 mlcanopyfluxestype prsc_canopy$sd mlcanopy_type
R 2785 5 677 mlcanopyfluxestype prsc_canopy$p mlcanopy_type
R 2786 5 678 mlcanopyfluxestype prsc_canopy$o mlcanopy_type
R 2788 5 680 mlcanopyfluxestype lc_canopy mlcanopy_type
R 2790 5 682 mlcanopyfluxestype lc_canopy$sd mlcanopy_type
R 2791 5 683 mlcanopyfluxestype lc_canopy$p mlcanopy_type
R 2792 5 684 mlcanopyfluxestype lc_canopy$o mlcanopy_type
R 2794 5 686 mlcanopyfluxestype zdisp_canopy mlcanopy_type
R 2796 5 688 mlcanopyfluxestype zdisp_canopy$sd mlcanopy_type
R 2797 5 689 mlcanopyfluxestype zdisp_canopy$p mlcanopy_type
R 2798 5 690 mlcanopyfluxestype zdisp_canopy$o mlcanopy_type
R 2800 5 692 mlcanopyfluxestype z0m_canopy mlcanopy_type
R 2802 5 694 mlcanopyfluxestype z0m_canopy$sd mlcanopy_type
R 2803 5 695 mlcanopyfluxestype z0m_canopy$p mlcanopy_type
R 2804 5 696 mlcanopyfluxestype z0m_canopy$o mlcanopy_type
R 2806 5 698 mlcanopyfluxestype g0_canopy mlcanopy_type
R 2808 5 700 mlcanopyfluxestype g0_canopy$sd mlcanopy_type
R 2809 5 701 mlcanopyfluxestype g0_canopy$p mlcanopy_type
R 2810 5 702 mlcanopyfluxestype g0_canopy$o mlcanopy_type
R 2812 5 704 mlcanopyfluxestype g1_canopy mlcanopy_type
R 2814 5 706 mlcanopyfluxestype g1_canopy$sd mlcanopy_type
R 2815 5 707 mlcanopyfluxestype g1_canopy$p mlcanopy_type
R 2816 5 708 mlcanopyfluxestype g1_canopy$o mlcanopy_type
R 2818 5 710 mlcanopyfluxestype albsoib_soil mlcanopy_type
R 2821 5 713 mlcanopyfluxestype albsoib_soil$sd mlcanopy_type
R 2822 5 714 mlcanopyfluxestype albsoib_soil$p mlcanopy_type
R 2823 5 715 mlcanopyfluxestype albsoib_soil$o mlcanopy_type
R 2825 5 717 mlcanopyfluxestype albsoid_soil mlcanopy_type
R 2828 5 720 mlcanopyfluxestype albsoid_soil$sd mlcanopy_type
R 2829 5 721 mlcanopyfluxestype albsoid_soil$p mlcanopy_type
R 2830 5 722 mlcanopyfluxestype albsoid_soil$o mlcanopy_type
R 2832 5 724 mlcanopyfluxestype swsoi_soil mlcanopy_type
R 2835 5 727 mlcanopyfluxestype swsoi_soil$sd mlcanopy_type
R 2836 5 728 mlcanopyfluxestype swsoi_soil$p mlcanopy_type
R 2837 5 729 mlcanopyfluxestype swsoi_soil$o mlcanopy_type
R 2839 5 731 mlcanopyfluxestype lwsoi_soil mlcanopy_type
R 2841 5 733 mlcanopyfluxestype lwsoi_soil$sd mlcanopy_type
R 2842 5 734 mlcanopyfluxestype lwsoi_soil$p mlcanopy_type
R 2843 5 735 mlcanopyfluxestype lwsoi_soil$o mlcanopy_type
R 2845 5 737 mlcanopyfluxestype rnsoi_soil mlcanopy_type
R 2847 5 739 mlcanopyfluxestype rnsoi_soil$sd mlcanopy_type
R 2848 5 740 mlcanopyfluxestype rnsoi_soil$p mlcanopy_type
R 2849 5 741 mlcanopyfluxestype rnsoi_soil$o mlcanopy_type
R 2851 5 743 mlcanopyfluxestype shsoi_soil mlcanopy_type
R 2853 5 745 mlcanopyfluxestype shsoi_soil$sd mlcanopy_type
R 2854 5 746 mlcanopyfluxestype shsoi_soil$p mlcanopy_type
R 2855 5 747 mlcanopyfluxestype shsoi_soil$o mlcanopy_type
R 2857 5 749 mlcanopyfluxestype lhsoi_soil mlcanopy_type
R 2859 5 751 mlcanopyfluxestype lhsoi_soil$sd mlcanopy_type
R 2860 5 752 mlcanopyfluxestype lhsoi_soil$p mlcanopy_type
R 2861 5 753 mlcanopyfluxestype lhsoi_soil$o mlcanopy_type
R 2863 5 755 mlcanopyfluxestype etsoi_soil mlcanopy_type
R 2865 5 757 mlcanopyfluxestype etsoi_soil$sd mlcanopy_type
R 2866 5 758 mlcanopyfluxestype etsoi_soil$p mlcanopy_type
R 2867 5 759 mlcanopyfluxestype etsoi_soil$o mlcanopy_type
R 2869 5 761 mlcanopyfluxestype gsoi_soil mlcanopy_type
R 2871 5 763 mlcanopyfluxestype gsoi_soil$sd mlcanopy_type
R 2872 5 764 mlcanopyfluxestype gsoi_soil$p mlcanopy_type
R 2873 5 765 mlcanopyfluxestype gsoi_soil$o mlcanopy_type
R 2875 5 767 mlcanopyfluxestype tg_soil mlcanopy_type
R 2877 5 769 mlcanopyfluxestype tg_soil$sd mlcanopy_type
R 2878 5 770 mlcanopyfluxestype tg_soil$p mlcanopy_type
R 2879 5 771 mlcanopyfluxestype tg_soil$o mlcanopy_type
R 2881 5 773 mlcanopyfluxestype tg_bef_soil mlcanopy_type
R 2883 5 775 mlcanopyfluxestype tg_bef_soil$sd mlcanopy_type
R 2884 5 776 mlcanopyfluxestype tg_bef_soil$p mlcanopy_type
R 2885 5 777 mlcanopyfluxestype tg_bef_soil$o mlcanopy_type
R 2887 5 779 mlcanopyfluxestype dtg_soil mlcanopy_type
R 2890 5 782 mlcanopyfluxestype dtg_soil$sd mlcanopy_type
R 2891 5 783 mlcanopyfluxestype dtg_soil$p mlcanopy_type
R 2892 5 784 mlcanopyfluxestype dtg_soil$o mlcanopy_type
R 2894 5 786 mlcanopyfluxestype eg_soil mlcanopy_type
R 2896 5 788 mlcanopyfluxestype eg_soil$sd mlcanopy_type
R 2897 5 789 mlcanopyfluxestype eg_soil$p mlcanopy_type
R 2898 5 790 mlcanopyfluxestype eg_soil$o mlcanopy_type
R 2900 5 792 mlcanopyfluxestype rhg_soil mlcanopy_type
R 2902 5 794 mlcanopyfluxestype rhg_soil$sd mlcanopy_type
R 2903 5 795 mlcanopyfluxestype rhg_soil$p mlcanopy_type
R 2904 5 796 mlcanopyfluxestype rhg_soil$o mlcanopy_type
R 2906 5 798 mlcanopyfluxestype gac0_soil mlcanopy_type
R 2908 5 800 mlcanopyfluxestype gac0_soil$sd mlcanopy_type
R 2909 5 801 mlcanopyfluxestype gac0_soil$p mlcanopy_type
R 2910 5 802 mlcanopyfluxestype gac0_soil$o mlcanopy_type
R 2912 5 804 mlcanopyfluxestype soil_t_soil mlcanopy_type
R 2914 5 806 mlcanopyfluxestype soil_t_soil$sd mlcanopy_type
R 2915 5 807 mlcanopyfluxestype soil_t_soil$p mlcanopy_type
R 2916 5 808 mlcanopyfluxestype soil_t_soil$o mlcanopy_type
R 2918 5 810 mlcanopyfluxestype soil_dz_soil mlcanopy_type
R 2920 5 812 mlcanopyfluxestype soil_dz_soil$sd mlcanopy_type
R 2921 5 813 mlcanopyfluxestype soil_dz_soil$p mlcanopy_type
R 2922 5 814 mlcanopyfluxestype soil_dz_soil$o mlcanopy_type
R 2924 5 816 mlcanopyfluxestype soil_tk_soil mlcanopy_type
R 2926 5 818 mlcanopyfluxestype soil_tk_soil$sd mlcanopy_type
R 2927 5 819 mlcanopyfluxestype soil_tk_soil$p mlcanopy_type
R 2928 5 820 mlcanopyfluxestype soil_tk_soil$o mlcanopy_type
R 2930 5 822 mlcanopyfluxestype soilres_soil mlcanopy_type
R 2932 5 824 mlcanopyfluxestype soilres_soil$sd mlcanopy_type
R 2933 5 825 mlcanopyfluxestype soilres_soil$p mlcanopy_type
R 2934 5 826 mlcanopyfluxestype soilres_soil$o mlcanopy_type
R 2936 5 828 mlcanopyfluxestype btran_soil mlcanopy_type
R 2938 5 830 mlcanopyfluxestype btran_soil$sd mlcanopy_type
R 2939 5 831 mlcanopyfluxestype btran_soil$p mlcanopy_type
R 2940 5 832 mlcanopyfluxestype btran_soil$o mlcanopy_type
R 2942 5 834 mlcanopyfluxestype psis_soil mlcanopy_type
R 2944 5 836 mlcanopyfluxestype psis_soil$sd mlcanopy_type
R 2945 5 837 mlcanopyfluxestype psis_soil$p mlcanopy_type
R 2946 5 838 mlcanopyfluxestype psis_soil$o mlcanopy_type
R 2948 5 840 mlcanopyfluxestype rsoil_soil mlcanopy_type
R 2950 5 842 mlcanopyfluxestype rsoil_soil$sd mlcanopy_type
R 2951 5 843 mlcanopyfluxestype rsoil_soil$p mlcanopy_type
R 2952 5 844 mlcanopyfluxestype rsoil_soil$o mlcanopy_type
R 2954 5 846 mlcanopyfluxestype soil_et_loss_soil mlcanopy_type
R 2957 5 849 mlcanopyfluxestype soil_et_loss_soil$sd mlcanopy_type
R 2958 5 850 mlcanopyfluxestype soil_et_loss_soil$p mlcanopy_type
R 2959 5 851 mlcanopyfluxestype soil_et_loss_soil$o mlcanopy_type
R 2961 5 853 mlcanopyfluxestype ncan_canopy mlcanopy_type
R 2963 5 855 mlcanopyfluxestype ncan_canopy$sd mlcanopy_type
R 2964 5 856 mlcanopyfluxestype ncan_canopy$p mlcanopy_type
R 2965 5 857 mlcanopyfluxestype ncan_canopy$o mlcanopy_type
R 2967 5 859 mlcanopyfluxestype ntop_canopy mlcanopy_type
R 2969 5 861 mlcanopyfluxestype ntop_canopy$sd mlcanopy_type
R 2970 5 862 mlcanopyfluxestype ntop_canopy$p mlcanopy_type
R 2971 5 863 mlcanopyfluxestype ntop_canopy$o mlcanopy_type
R 2973 5 865 mlcanopyfluxestype nbot_canopy mlcanopy_type
R 2975 5 867 mlcanopyfluxestype nbot_canopy$sd mlcanopy_type
R 2976 5 868 mlcanopyfluxestype nbot_canopy$p mlcanopy_type
R 2977 5 869 mlcanopyfluxestype nbot_canopy$o mlcanopy_type
R 2979 5 871 mlcanopyfluxestype dlai_frac_profile mlcanopy_type
R 2982 5 874 mlcanopyfluxestype dlai_frac_profile$sd mlcanopy_type
R 2983 5 875 mlcanopyfluxestype dlai_frac_profile$p mlcanopy_type
R 2984 5 876 mlcanopyfluxestype dlai_frac_profile$o mlcanopy_type
R 2986 5 878 mlcanopyfluxestype dsai_frac_profile mlcanopy_type
R 2989 5 881 mlcanopyfluxestype dsai_frac_profile$sd mlcanopy_type
R 2990 5 882 mlcanopyfluxestype dsai_frac_profile$p mlcanopy_type
R 2991 5 883 mlcanopyfluxestype dsai_frac_profile$o mlcanopy_type
R 2993 5 885 mlcanopyfluxestype dlai_profile mlcanopy_type
R 2996 5 888 mlcanopyfluxestype dlai_profile$sd mlcanopy_type
R 2997 5 889 mlcanopyfluxestype dlai_profile$p mlcanopy_type
R 2998 5 890 mlcanopyfluxestype dlai_profile$o mlcanopy_type
R 3000 5 892 mlcanopyfluxestype dsai_profile mlcanopy_type
R 3003 5 895 mlcanopyfluxestype dsai_profile$sd mlcanopy_type
R 3004 5 896 mlcanopyfluxestype dsai_profile$p mlcanopy_type
R 3005 5 897 mlcanopyfluxestype dsai_profile$o mlcanopy_type
R 3007 5 899 mlcanopyfluxestype dpai_profile mlcanopy_type
R 3010 5 902 mlcanopyfluxestype dpai_profile$sd mlcanopy_type
R 3011 5 903 mlcanopyfluxestype dpai_profile$p mlcanopy_type
R 3012 5 904 mlcanopyfluxestype dpai_profile$o mlcanopy_type
R 3014 5 906 mlcanopyfluxestype zs_profile mlcanopy_type
R 3017 5 909 mlcanopyfluxestype zs_profile$sd mlcanopy_type
R 3018 5 910 mlcanopyfluxestype zs_profile$p mlcanopy_type
R 3019 5 911 mlcanopyfluxestype zs_profile$o mlcanopy_type
R 3021 5 913 mlcanopyfluxestype zw_profile mlcanopy_type
R 3024 5 916 mlcanopyfluxestype zw_profile$sd mlcanopy_type
R 3025 5 917 mlcanopyfluxestype zw_profile$p mlcanopy_type
R 3026 5 918 mlcanopyfluxestype zw_profile$o mlcanopy_type
R 3028 5 920 mlcanopyfluxestype dz_profile mlcanopy_type
R 3031 5 923 mlcanopyfluxestype dz_profile$sd mlcanopy_type
R 3032 5 924 mlcanopyfluxestype dz_profile$p mlcanopy_type
R 3033 5 925 mlcanopyfluxestype dz_profile$o mlcanopy_type
R 3035 5 927 mlcanopyfluxestype vcmax25_profile mlcanopy_type
R 3038 5 930 mlcanopyfluxestype vcmax25_profile$sd mlcanopy_type
R 3039 5 931 mlcanopyfluxestype vcmax25_profile$p mlcanopy_type
R 3040 5 932 mlcanopyfluxestype vcmax25_profile$o mlcanopy_type
R 3042 5 934 mlcanopyfluxestype jmax25_profile mlcanopy_type
R 3045 5 937 mlcanopyfluxestype jmax25_profile$sd mlcanopy_type
R 3046 5 938 mlcanopyfluxestype jmax25_profile$p mlcanopy_type
R 3047 5 939 mlcanopyfluxestype jmax25_profile$o mlcanopy_type
R 3049 5 941 mlcanopyfluxestype kp25_profile mlcanopy_type
R 3052 5 944 mlcanopyfluxestype kp25_profile$sd mlcanopy_type
R 3053 5 945 mlcanopyfluxestype kp25_profile$p mlcanopy_type
R 3054 5 946 mlcanopyfluxestype kp25_profile$o mlcanopy_type
R 3056 5 948 mlcanopyfluxestype rd25_profile mlcanopy_type
R 3059 5 951 mlcanopyfluxestype rd25_profile$sd mlcanopy_type
R 3060 5 952 mlcanopyfluxestype rd25_profile$p mlcanopy_type
R 3061 5 953 mlcanopyfluxestype rd25_profile$o mlcanopy_type
R 3063 5 955 mlcanopyfluxestype cpleaf_profile mlcanopy_type
R 3066 5 958 mlcanopyfluxestype cpleaf_profile$sd mlcanopy_type
R 3067 5 959 mlcanopyfluxestype cpleaf_profile$p mlcanopy_type
R 3068 5 960 mlcanopyfluxestype cpleaf_profile$o mlcanopy_type
R 3070 5 962 mlcanopyfluxestype fracsun_profile mlcanopy_type
R 3073 5 965 mlcanopyfluxestype fracsun_profile$sd mlcanopy_type
R 3074 5 966 mlcanopyfluxestype fracsun_profile$p mlcanopy_type
R 3075 5 967 mlcanopyfluxestype fracsun_profile$o mlcanopy_type
R 3077 5 969 mlcanopyfluxestype kb_profile mlcanopy_type
R 3080 5 972 mlcanopyfluxestype kb_profile$sd mlcanopy_type
R 3081 5 973 mlcanopyfluxestype kb_profile$p mlcanopy_type
R 3082 5 974 mlcanopyfluxestype kb_profile$o mlcanopy_type
R 3084 5 976 mlcanopyfluxestype tb_profile mlcanopy_type
R 3087 5 979 mlcanopyfluxestype tb_profile$sd mlcanopy_type
R 3088 5 980 mlcanopyfluxestype tb_profile$p mlcanopy_type
R 3089 5 981 mlcanopyfluxestype tb_profile$o mlcanopy_type
R 3091 5 983 mlcanopyfluxestype td_profile mlcanopy_type
R 3094 5 986 mlcanopyfluxestype td_profile$sd mlcanopy_type
R 3095 5 987 mlcanopyfluxestype td_profile$p mlcanopy_type
R 3096 5 988 mlcanopyfluxestype td_profile$o mlcanopy_type
R 3098 5 990 mlcanopyfluxestype tbi_profile mlcanopy_type
R 3101 5 993 mlcanopyfluxestype tbi_profile$sd mlcanopy_type
R 3102 5 994 mlcanopyfluxestype tbi_profile$p mlcanopy_type
R 3103 5 995 mlcanopyfluxestype tbi_profile$o mlcanopy_type
R 3105 5 997 mlcanopyfluxestype swbeam_profile mlcanopy_type
R 3109 5 1001 mlcanopyfluxestype swbeam_profile$sd mlcanopy_type
R 3110 5 1002 mlcanopyfluxestype swbeam_profile$p mlcanopy_type
R 3111 5 1003 mlcanopyfluxestype swbeam_profile$o mlcanopy_type
R 3113 5 1005 mlcanopyfluxestype swupw_profile mlcanopy_type
R 3117 5 1009 mlcanopyfluxestype swupw_profile$sd mlcanopy_type
R 3118 5 1010 mlcanopyfluxestype swupw_profile$p mlcanopy_type
R 3119 5 1011 mlcanopyfluxestype swupw_profile$o mlcanopy_type
R 3121 5 1013 mlcanopyfluxestype swdwn_profile mlcanopy_type
R 3125 5 1017 mlcanopyfluxestype swdwn_profile$sd mlcanopy_type
R 3126 5 1018 mlcanopyfluxestype swdwn_profile$p mlcanopy_type
R 3127 5 1019 mlcanopyfluxestype swdwn_profile$o mlcanopy_type
R 3129 5 1021 mlcanopyfluxestype lwupw_profile mlcanopy_type
R 3132 5 1024 mlcanopyfluxestype lwupw_profile$sd mlcanopy_type
R 3133 5 1025 mlcanopyfluxestype lwupw_profile$p mlcanopy_type
R 3134 5 1026 mlcanopyfluxestype lwupw_profile$o mlcanopy_type
R 3136 5 1028 mlcanopyfluxestype lwdwn_profile mlcanopy_type
R 3139 5 1031 mlcanopyfluxestype lwdwn_profile$sd mlcanopy_type
R 3140 5 1032 mlcanopyfluxestype lwdwn_profile$p mlcanopy_type
R 3141 5 1033 mlcanopyfluxestype lwdwn_profile$o mlcanopy_type
R 3143 5 1035 mlcanopyfluxestype swsrc_profile mlcanopy_type
R 3147 5 1039 mlcanopyfluxestype swsrc_profile$sd mlcanopy_type
R 3148 5 1040 mlcanopyfluxestype swsrc_profile$p mlcanopy_type
R 3149 5 1041 mlcanopyfluxestype swsrc_profile$o mlcanopy_type
R 3151 5 1043 mlcanopyfluxestype lwsrc_profile mlcanopy_type
R 3154 5 1046 mlcanopyfluxestype lwsrc_profile$sd mlcanopy_type
R 3155 5 1047 mlcanopyfluxestype lwsrc_profile$p mlcanopy_type
R 3156 5 1048 mlcanopyfluxestype lwsrc_profile$o mlcanopy_type
R 3158 5 1050 mlcanopyfluxestype rnsrc_profile mlcanopy_type
R 3161 5 1053 mlcanopyfluxestype rnsrc_profile$sd mlcanopy_type
R 3162 5 1054 mlcanopyfluxestype rnsrc_profile$p mlcanopy_type
R 3163 5 1055 mlcanopyfluxestype rnsrc_profile$o mlcanopy_type
R 3165 5 1057 mlcanopyfluxestype stsrc_profile mlcanopy_type
R 3168 5 1060 mlcanopyfluxestype stsrc_profile$sd mlcanopy_type
R 3169 5 1061 mlcanopyfluxestype stsrc_profile$p mlcanopy_type
R 3170 5 1062 mlcanopyfluxestype stsrc_profile$o mlcanopy_type
R 3172 5 1064 mlcanopyfluxestype shsrc_profile mlcanopy_type
R 3175 5 1067 mlcanopyfluxestype shsrc_profile$sd mlcanopy_type
R 3176 5 1068 mlcanopyfluxestype shsrc_profile$p mlcanopy_type
R 3177 5 1069 mlcanopyfluxestype shsrc_profile$o mlcanopy_type
R 3179 5 1071 mlcanopyfluxestype lhsrc_profile mlcanopy_type
R 3182 5 1074 mlcanopyfluxestype lhsrc_profile$sd mlcanopy_type
R 3183 5 1075 mlcanopyfluxestype lhsrc_profile$p mlcanopy_type
R 3184 5 1076 mlcanopyfluxestype lhsrc_profile$o mlcanopy_type
R 3186 5 1078 mlcanopyfluxestype etsrc_profile mlcanopy_type
R 3189 5 1081 mlcanopyfluxestype etsrc_profile$sd mlcanopy_type
R 3190 5 1082 mlcanopyfluxestype etsrc_profile$p mlcanopy_type
R 3191 5 1083 mlcanopyfluxestype etsrc_profile$o mlcanopy_type
R 3193 5 1085 mlcanopyfluxestype trsrc_profile mlcanopy_type
R 3196 5 1088 mlcanopyfluxestype trsrc_profile$sd mlcanopy_type
R 3197 5 1089 mlcanopyfluxestype trsrc_profile$p mlcanopy_type
R 3198 5 1090 mlcanopyfluxestype trsrc_profile$o mlcanopy_type
R 3200 5 1092 mlcanopyfluxestype evsrc_profile mlcanopy_type
R 3203 5 1095 mlcanopyfluxestype evsrc_profile$sd mlcanopy_type
R 3204 5 1096 mlcanopyfluxestype evsrc_profile$p mlcanopy_type
R 3205 5 1097 mlcanopyfluxestype evsrc_profile$o mlcanopy_type
R 3207 5 1099 mlcanopyfluxestype fco2src_profile mlcanopy_type
R 3210 5 1102 mlcanopyfluxestype fco2src_profile$sd mlcanopy_type
R 3211 5 1103 mlcanopyfluxestype fco2src_profile$p mlcanopy_type
R 3212 5 1104 mlcanopyfluxestype fco2src_profile$o mlcanopy_type
R 3214 5 1106 mlcanopyfluxestype wind_profile mlcanopy_type
R 3217 5 1109 mlcanopyfluxestype wind_profile$sd mlcanopy_type
R 3218 5 1110 mlcanopyfluxestype wind_profile$p mlcanopy_type
R 3219 5 1111 mlcanopyfluxestype wind_profile$o mlcanopy_type
R 3221 5 1113 mlcanopyfluxestype tair_profile mlcanopy_type
R 3224 5 1116 mlcanopyfluxestype tair_profile$sd mlcanopy_type
R 3225 5 1117 mlcanopyfluxestype tair_profile$p mlcanopy_type
R 3226 5 1118 mlcanopyfluxestype tair_profile$o mlcanopy_type
R 3228 5 1120 mlcanopyfluxestype eair_profile mlcanopy_type
R 3231 5 1123 mlcanopyfluxestype eair_profile$sd mlcanopy_type
R 3232 5 1124 mlcanopyfluxestype eair_profile$p mlcanopy_type
R 3233 5 1125 mlcanopyfluxestype eair_profile$o mlcanopy_type
R 3235 5 1127 mlcanopyfluxestype cair_profile mlcanopy_type
R 3238 5 1130 mlcanopyfluxestype cair_profile$sd mlcanopy_type
R 3239 5 1131 mlcanopyfluxestype cair_profile$p mlcanopy_type
R 3240 5 1132 mlcanopyfluxestype cair_profile$o mlcanopy_type
R 3242 5 1134 mlcanopyfluxestype tair_bef_profile mlcanopy_type
R 3245 5 1137 mlcanopyfluxestype tair_bef_profile$sd mlcanopy_type
R 3246 5 1138 mlcanopyfluxestype tair_bef_profile$p mlcanopy_type
R 3247 5 1139 mlcanopyfluxestype tair_bef_profile$o mlcanopy_type
R 3249 5 1141 mlcanopyfluxestype eair_bef_profile mlcanopy_type
R 3252 5 1144 mlcanopyfluxestype eair_bef_profile$sd mlcanopy_type
R 3253 5 1145 mlcanopyfluxestype eair_bef_profile$p mlcanopy_type
R 3254 5 1146 mlcanopyfluxestype eair_bef_profile$o mlcanopy_type
R 3256 5 1148 mlcanopyfluxestype cair_bef_profile mlcanopy_type
R 3259 5 1151 mlcanopyfluxestype cair_bef_profile$sd mlcanopy_type
R 3260 5 1152 mlcanopyfluxestype cair_bef_profile$p mlcanopy_type
R 3261 5 1153 mlcanopyfluxestype cair_bef_profile$o mlcanopy_type
R 3263 5 1155 mlcanopyfluxestype dtair_profile mlcanopy_type
R 3267 5 1159 mlcanopyfluxestype dtair_profile$sd mlcanopy_type
R 3268 5 1160 mlcanopyfluxestype dtair_profile$p mlcanopy_type
R 3269 5 1161 mlcanopyfluxestype dtair_profile$o mlcanopy_type
R 3271 5 1163 mlcanopyfluxestype deair_profile mlcanopy_type
R 3275 5 1167 mlcanopyfluxestype deair_profile$sd mlcanopy_type
R 3276 5 1168 mlcanopyfluxestype deair_profile$p mlcanopy_type
R 3277 5 1169 mlcanopyfluxestype deair_profile$o mlcanopy_type
R 3279 5 1171 mlcanopyfluxestype wind_data_profile mlcanopy_type
R 3282 5 1174 mlcanopyfluxestype wind_data_profile$sd mlcanopy_type
R 3283 5 1175 mlcanopyfluxestype wind_data_profile$p mlcanopy_type
R 3284 5 1176 mlcanopyfluxestype wind_data_profile$o mlcanopy_type
R 3286 5 1178 mlcanopyfluxestype tair_data_profile mlcanopy_type
R 3289 5 1181 mlcanopyfluxestype tair_data_profile$sd mlcanopy_type
R 3290 5 1182 mlcanopyfluxestype tair_data_profile$p mlcanopy_type
R 3291 5 1183 mlcanopyfluxestype tair_data_profile$o mlcanopy_type
R 3293 5 1185 mlcanopyfluxestype eair_data_profile mlcanopy_type
R 3296 5 1188 mlcanopyfluxestype eair_data_profile$sd mlcanopy_type
R 3297 5 1189 mlcanopyfluxestype eair_data_profile$p mlcanopy_type
R 3298 5 1190 mlcanopyfluxestype eair_data_profile$o mlcanopy_type
R 3300 5 1192 mlcanopyfluxestype shair_profile mlcanopy_type
R 3303 5 1195 mlcanopyfluxestype shair_profile$sd mlcanopy_type
R 3304 5 1196 mlcanopyfluxestype shair_profile$p mlcanopy_type
R 3305 5 1197 mlcanopyfluxestype shair_profile$o mlcanopy_type
R 3307 5 1199 mlcanopyfluxestype etair_profile mlcanopy_type
R 3310 5 1202 mlcanopyfluxestype etair_profile$sd mlcanopy_type
R 3311 5 1203 mlcanopyfluxestype etair_profile$p mlcanopy_type
R 3312 5 1204 mlcanopyfluxestype etair_profile$o mlcanopy_type
R 3314 5 1206 mlcanopyfluxestype stair_profile mlcanopy_type
R 3317 5 1209 mlcanopyfluxestype stair_profile$sd mlcanopy_type
R 3318 5 1210 mlcanopyfluxestype stair_profile$p mlcanopy_type
R 3319 5 1211 mlcanopyfluxestype stair_profile$o mlcanopy_type
R 3321 5 1213 mlcanopyfluxestype mflx_profile mlcanopy_type
R 3324 5 1216 mlcanopyfluxestype mflx_profile$sd mlcanopy_type
R 3325 5 1217 mlcanopyfluxestype mflx_profile$p mlcanopy_type
R 3326 5 1218 mlcanopyfluxestype mflx_profile$o mlcanopy_type
R 3328 5 1220 mlcanopyfluxestype gac_profile mlcanopy_type
R 3331 5 1223 mlcanopyfluxestype gac_profile$sd mlcanopy_type
R 3332 5 1224 mlcanopyfluxestype gac_profile$p mlcanopy_type
R 3333 5 1225 mlcanopyfluxestype gac_profile$o mlcanopy_type
R 3335 5 1227 mlcanopyfluxestype kc_eddy_profile mlcanopy_type
R 3338 5 1230 mlcanopyfluxestype kc_eddy_profile$sd mlcanopy_type
R 3339 5 1231 mlcanopyfluxestype kc_eddy_profile$p mlcanopy_type
R 3340 5 1232 mlcanopyfluxestype kc_eddy_profile$o mlcanopy_type
R 3342 5 1234 mlcanopyfluxestype swleaf_mean_profile mlcanopy_type
R 3346 5 1238 mlcanopyfluxestype swleaf_mean_profile$sd mlcanopy_type
R 3347 5 1239 mlcanopyfluxestype swleaf_mean_profile$p mlcanopy_type
R 3348 5 1240 mlcanopyfluxestype swleaf_mean_profile$o mlcanopy_type
R 3350 5 1242 mlcanopyfluxestype lwleaf_mean_profile mlcanopy_type
R 3353 5 1245 mlcanopyfluxestype lwleaf_mean_profile$sd mlcanopy_type
R 3354 5 1246 mlcanopyfluxestype lwleaf_mean_profile$p mlcanopy_type
R 3355 5 1247 mlcanopyfluxestype lwleaf_mean_profile$o mlcanopy_type
R 3357 5 1249 mlcanopyfluxestype rnleaf_mean_profile mlcanopy_type
R 3360 5 1252 mlcanopyfluxestype rnleaf_mean_profile$sd mlcanopy_type
R 3361 5 1253 mlcanopyfluxestype rnleaf_mean_profile$p mlcanopy_type
R 3362 5 1254 mlcanopyfluxestype rnleaf_mean_profile$o mlcanopy_type
R 3364 5 1256 mlcanopyfluxestype stleaf_mean_profile mlcanopy_type
R 3367 5 1259 mlcanopyfluxestype stleaf_mean_profile$sd mlcanopy_type
R 3368 5 1260 mlcanopyfluxestype stleaf_mean_profile$p mlcanopy_type
R 3369 5 1261 mlcanopyfluxestype stleaf_mean_profile$o mlcanopy_type
R 3371 5 1263 mlcanopyfluxestype shleaf_mean_profile mlcanopy_type
R 3374 5 1266 mlcanopyfluxestype shleaf_mean_profile$sd mlcanopy_type
R 3375 5 1267 mlcanopyfluxestype shleaf_mean_profile$p mlcanopy_type
R 3376 5 1268 mlcanopyfluxestype shleaf_mean_profile$o mlcanopy_type
R 3378 5 1270 mlcanopyfluxestype lhleaf_mean_profile mlcanopy_type
R 3381 5 1273 mlcanopyfluxestype lhleaf_mean_profile$sd mlcanopy_type
R 3382 5 1274 mlcanopyfluxestype lhleaf_mean_profile$p mlcanopy_type
R 3383 5 1275 mlcanopyfluxestype lhleaf_mean_profile$o mlcanopy_type
R 3385 5 1277 mlcanopyfluxestype etleaf_mean_profile mlcanopy_type
R 3388 5 1280 mlcanopyfluxestype etleaf_mean_profile$sd mlcanopy_type
R 3389 5 1281 mlcanopyfluxestype etleaf_mean_profile$p mlcanopy_type
R 3390 5 1282 mlcanopyfluxestype etleaf_mean_profile$o mlcanopy_type
R 3392 5 1284 mlcanopyfluxestype trleaf_mean_profile mlcanopy_type
R 3395 5 1287 mlcanopyfluxestype trleaf_mean_profile$sd mlcanopy_type
R 3396 5 1288 mlcanopyfluxestype trleaf_mean_profile$p mlcanopy_type
R 3397 5 1289 mlcanopyfluxestype trleaf_mean_profile$o mlcanopy_type
R 3399 5 1291 mlcanopyfluxestype evleaf_mean_profile mlcanopy_type
R 3402 5 1294 mlcanopyfluxestype evleaf_mean_profile$sd mlcanopy_type
R 3403 5 1295 mlcanopyfluxestype evleaf_mean_profile$p mlcanopy_type
R 3404 5 1296 mlcanopyfluxestype evleaf_mean_profile$o mlcanopy_type
R 3406 5 1298 mlcanopyfluxestype fco2_mean_profile mlcanopy_type
R 3409 5 1301 mlcanopyfluxestype fco2_mean_profile$sd mlcanopy_type
R 3410 5 1302 mlcanopyfluxestype fco2_mean_profile$p mlcanopy_type
R 3411 5 1303 mlcanopyfluxestype fco2_mean_profile$o mlcanopy_type
R 3413 5 1305 mlcanopyfluxestype apar_mean_profile mlcanopy_type
R 3416 5 1308 mlcanopyfluxestype apar_mean_profile$sd mlcanopy_type
R 3417 5 1309 mlcanopyfluxestype apar_mean_profile$p mlcanopy_type
R 3418 5 1310 mlcanopyfluxestype apar_mean_profile$o mlcanopy_type
R 3420 5 1312 mlcanopyfluxestype gs_mean_profile mlcanopy_type
R 3423 5 1315 mlcanopyfluxestype gs_mean_profile$sd mlcanopy_type
R 3424 5 1316 mlcanopyfluxestype gs_mean_profile$p mlcanopy_type
R 3425 5 1317 mlcanopyfluxestype gs_mean_profile$o mlcanopy_type
R 3427 5 1319 mlcanopyfluxestype tleaf_mean_profile mlcanopy_type
R 3430 5 1322 mlcanopyfluxestype tleaf_mean_profile$sd mlcanopy_type
R 3431 5 1323 mlcanopyfluxestype tleaf_mean_profile$p mlcanopy_type
R 3432 5 1324 mlcanopyfluxestype tleaf_mean_profile$o mlcanopy_type
R 3434 5 1326 mlcanopyfluxestype lwp_mean_profile mlcanopy_type
R 3437 5 1329 mlcanopyfluxestype lwp_mean_profile$sd mlcanopy_type
R 3438 5 1330 mlcanopyfluxestype lwp_mean_profile$p mlcanopy_type
R 3439 5 1331 mlcanopyfluxestype lwp_mean_profile$o mlcanopy_type
R 3441 5 1333 mlcanopyfluxestype lsc_profile mlcanopy_type
R 3444 5 1336 mlcanopyfluxestype lsc_profile$sd mlcanopy_type
R 3445 5 1337 mlcanopyfluxestype lsc_profile$p mlcanopy_type
R 3446 5 1338 mlcanopyfluxestype lsc_profile$o mlcanopy_type
R 3448 5 1340 mlcanopyfluxestype h2ocan_profile mlcanopy_type
R 3451 5 1343 mlcanopyfluxestype h2ocan_profile$sd mlcanopy_type
R 3452 5 1344 mlcanopyfluxestype h2ocan_profile$p mlcanopy_type
R 3453 5 1345 mlcanopyfluxestype h2ocan_profile$o mlcanopy_type
R 3455 5 1347 mlcanopyfluxestype h2ocan_bef_profile mlcanopy_type
R 3458 5 1350 mlcanopyfluxestype h2ocan_bef_profile$sd mlcanopy_type
R 3459 5 1351 mlcanopyfluxestype h2ocan_bef_profile$p mlcanopy_type
R 3460 5 1352 mlcanopyfluxestype h2ocan_bef_profile$o mlcanopy_type
R 3462 5 1354 mlcanopyfluxestype dh2ocan_profile mlcanopy_type
R 3466 5 1358 mlcanopyfluxestype dh2ocan_profile$sd mlcanopy_type
R 3467 5 1359 mlcanopyfluxestype dh2ocan_profile$p mlcanopy_type
R 3468 5 1360 mlcanopyfluxestype dh2ocan_profile$o mlcanopy_type
R 3470 5 1362 mlcanopyfluxestype fwet_profile mlcanopy_type
R 3473 5 1365 mlcanopyfluxestype fwet_profile$sd mlcanopy_type
R 3474 5 1366 mlcanopyfluxestype fwet_profile$p mlcanopy_type
R 3475 5 1367 mlcanopyfluxestype fwet_profile$o mlcanopy_type
R 3477 5 1369 mlcanopyfluxestype fdry_profile mlcanopy_type
R 3480 5 1372 mlcanopyfluxestype fdry_profile$sd mlcanopy_type
R 3481 5 1373 mlcanopyfluxestype fdry_profile$p mlcanopy_type
R 3482 5 1374 mlcanopyfluxestype fdry_profile$o mlcanopy_type
R 3484 5 1376 mlcanopyfluxestype tleaf_leaf mlcanopy_type
R 3488 5 1380 mlcanopyfluxestype tleaf_leaf$sd mlcanopy_type
R 3489 5 1381 mlcanopyfluxestype tleaf_leaf$p mlcanopy_type
R 3490 5 1382 mlcanopyfluxestype tleaf_leaf$o mlcanopy_type
R 3492 5 1384 mlcanopyfluxestype tleaf_bef_leaf mlcanopy_type
R 3496 5 1388 mlcanopyfluxestype tleaf_bef_leaf$sd mlcanopy_type
R 3497 5 1389 mlcanopyfluxestype tleaf_bef_leaf$p mlcanopy_type
R 3498 5 1390 mlcanopyfluxestype tleaf_bef_leaf$o mlcanopy_type
R 3500 5 1392 mlcanopyfluxestype dtleaf_leaf mlcanopy_type
R 3505 5 1397 mlcanopyfluxestype dtleaf_leaf$sd mlcanopy_type
R 3506 5 1398 mlcanopyfluxestype dtleaf_leaf$p mlcanopy_type
R 3507 5 1399 mlcanopyfluxestype dtleaf_leaf$o mlcanopy_type
R 3509 5 1401 mlcanopyfluxestype tleaf_hist_leaf mlcanopy_type
R 3513 5 1405 mlcanopyfluxestype tleaf_hist_leaf$sd mlcanopy_type
R 3514 5 1406 mlcanopyfluxestype tleaf_hist_leaf$p mlcanopy_type
R 3515 5 1407 mlcanopyfluxestype tleaf_hist_leaf$o mlcanopy_type
R 3517 5 1409 mlcanopyfluxestype swleaf_leaf mlcanopy_type
R 3522 5 1414 mlcanopyfluxestype swleaf_leaf$sd mlcanopy_type
R 3523 5 1415 mlcanopyfluxestype swleaf_leaf$p mlcanopy_type
R 3524 5 1416 mlcanopyfluxestype swleaf_leaf$o mlcanopy_type
R 3526 5 1418 mlcanopyfluxestype lwleaf_leaf mlcanopy_type
R 3530 5 1422 mlcanopyfluxestype lwleaf_leaf$sd mlcanopy_type
R 3531 5 1423 mlcanopyfluxestype lwleaf_leaf$p mlcanopy_type
R 3532 5 1424 mlcanopyfluxestype lwleaf_leaf$o mlcanopy_type
R 3534 5 1426 mlcanopyfluxestype rnleaf_leaf mlcanopy_type
R 3538 5 1430 mlcanopyfluxestype rnleaf_leaf$sd mlcanopy_type
R 3539 5 1431 mlcanopyfluxestype rnleaf_leaf$p mlcanopy_type
R 3540 5 1432 mlcanopyfluxestype rnleaf_leaf$o mlcanopy_type
R 3542 5 1434 mlcanopyfluxestype stleaf_leaf mlcanopy_type
R 3546 5 1438 mlcanopyfluxestype stleaf_leaf$sd mlcanopy_type
R 3547 5 1439 mlcanopyfluxestype stleaf_leaf$p mlcanopy_type
R 3548 5 1440 mlcanopyfluxestype stleaf_leaf$o mlcanopy_type
R 3550 5 1442 mlcanopyfluxestype shleaf_leaf mlcanopy_type
R 3554 5 1446 mlcanopyfluxestype shleaf_leaf$sd mlcanopy_type
R 3555 5 1447 mlcanopyfluxestype shleaf_leaf$p mlcanopy_type
R 3556 5 1448 mlcanopyfluxestype shleaf_leaf$o mlcanopy_type
R 3558 5 1450 mlcanopyfluxestype lhleaf_leaf mlcanopy_type
R 3562 5 1454 mlcanopyfluxestype lhleaf_leaf$sd mlcanopy_type
R 3563 5 1455 mlcanopyfluxestype lhleaf_leaf$p mlcanopy_type
R 3564 5 1456 mlcanopyfluxestype lhleaf_leaf$o mlcanopy_type
R 3566 5 1458 mlcanopyfluxestype trleaf_leaf mlcanopy_type
R 3570 5 1462 mlcanopyfluxestype trleaf_leaf$sd mlcanopy_type
R 3571 5 1463 mlcanopyfluxestype trleaf_leaf$p mlcanopy_type
R 3572 5 1464 mlcanopyfluxestype trleaf_leaf$o mlcanopy_type
R 3574 5 1466 mlcanopyfluxestype evleaf_leaf mlcanopy_type
R 3578 5 1470 mlcanopyfluxestype evleaf_leaf$sd mlcanopy_type
R 3579 5 1471 mlcanopyfluxestype evleaf_leaf$p mlcanopy_type
R 3580 5 1472 mlcanopyfluxestype evleaf_leaf$o mlcanopy_type
R 3582 5 1474 mlcanopyfluxestype gbh_leaf mlcanopy_type
R 3586 5 1478 mlcanopyfluxestype gbh_leaf$sd mlcanopy_type
R 3587 5 1479 mlcanopyfluxestype gbh_leaf$p mlcanopy_type
R 3588 5 1480 mlcanopyfluxestype gbh_leaf$o mlcanopy_type
R 3590 5 1482 mlcanopyfluxestype gbv_leaf mlcanopy_type
R 3594 5 1486 mlcanopyfluxestype gbv_leaf$sd mlcanopy_type
R 3595 5 1487 mlcanopyfluxestype gbv_leaf$p mlcanopy_type
R 3596 5 1488 mlcanopyfluxestype gbv_leaf$o mlcanopy_type
R 3598 5 1490 mlcanopyfluxestype gbc_leaf mlcanopy_type
R 3602 5 1494 mlcanopyfluxestype gbc_leaf$sd mlcanopy_type
R 3603 5 1495 mlcanopyfluxestype gbc_leaf$p mlcanopy_type
R 3604 5 1496 mlcanopyfluxestype gbc_leaf$o mlcanopy_type
R 3606 5 1498 mlcanopyfluxestype vcmax25_leaf mlcanopy_type
R 3610 5 1502 mlcanopyfluxestype vcmax25_leaf$sd mlcanopy_type
R 3611 5 1503 mlcanopyfluxestype vcmax25_leaf$p mlcanopy_type
R 3612 5 1504 mlcanopyfluxestype vcmax25_leaf$o mlcanopy_type
R 3614 5 1506 mlcanopyfluxestype jmax25_leaf mlcanopy_type
R 3618 5 1510 mlcanopyfluxestype jmax25_leaf$sd mlcanopy_type
R 3619 5 1511 mlcanopyfluxestype jmax25_leaf$p mlcanopy_type
R 3620 5 1512 mlcanopyfluxestype jmax25_leaf$o mlcanopy_type
R 3622 5 1514 mlcanopyfluxestype kp25_leaf mlcanopy_type
R 3626 5 1518 mlcanopyfluxestype kp25_leaf$sd mlcanopy_type
R 3627 5 1519 mlcanopyfluxestype kp25_leaf$p mlcanopy_type
R 3628 5 1520 mlcanopyfluxestype kp25_leaf$o mlcanopy_type
R 3630 5 1522 mlcanopyfluxestype rd25_leaf mlcanopy_type
R 3634 5 1526 mlcanopyfluxestype rd25_leaf$sd mlcanopy_type
R 3635 5 1527 mlcanopyfluxestype rd25_leaf$p mlcanopy_type
R 3636 5 1528 mlcanopyfluxestype rd25_leaf$o mlcanopy_type
R 3638 5 1530 mlcanopyfluxestype kc_leaf mlcanopy_type
R 3642 5 1534 mlcanopyfluxestype kc_leaf$sd mlcanopy_type
R 3643 5 1535 mlcanopyfluxestype kc_leaf$p mlcanopy_type
R 3644 5 1536 mlcanopyfluxestype kc_leaf$o mlcanopy_type
R 3646 5 1538 mlcanopyfluxestype ko_leaf mlcanopy_type
R 3650 5 1542 mlcanopyfluxestype ko_leaf$sd mlcanopy_type
R 3651 5 1543 mlcanopyfluxestype ko_leaf$p mlcanopy_type
R 3652 5 1544 mlcanopyfluxestype ko_leaf$o mlcanopy_type
R 3654 5 1546 mlcanopyfluxestype cp_leaf mlcanopy_type
R 3658 5 1550 mlcanopyfluxestype cp_leaf$sd mlcanopy_type
R 3659 5 1551 mlcanopyfluxestype cp_leaf$p mlcanopy_type
R 3660 5 1552 mlcanopyfluxestype cp_leaf$o mlcanopy_type
R 3662 5 1554 mlcanopyfluxestype vcmax_leaf mlcanopy_type
R 3666 5 1558 mlcanopyfluxestype vcmax_leaf$sd mlcanopy_type
R 3667 5 1559 mlcanopyfluxestype vcmax_leaf$p mlcanopy_type
R 3668 5 1560 mlcanopyfluxestype vcmax_leaf$o mlcanopy_type
R 3670 5 1562 mlcanopyfluxestype jmax_leaf mlcanopy_type
R 3674 5 1566 mlcanopyfluxestype jmax_leaf$sd mlcanopy_type
R 3675 5 1567 mlcanopyfluxestype jmax_leaf$p mlcanopy_type
R 3676 5 1568 mlcanopyfluxestype jmax_leaf$o mlcanopy_type
R 3678 5 1570 mlcanopyfluxestype kp_leaf mlcanopy_type
R 3682 5 1574 mlcanopyfluxestype kp_leaf$sd mlcanopy_type
R 3683 5 1575 mlcanopyfluxestype kp_leaf$p mlcanopy_type
R 3684 5 1576 mlcanopyfluxestype kp_leaf$o mlcanopy_type
R 3686 5 1578 mlcanopyfluxestype ceair_leaf mlcanopy_type
R 3690 5 1582 mlcanopyfluxestype ceair_leaf$sd mlcanopy_type
R 3691 5 1583 mlcanopyfluxestype ceair_leaf$p mlcanopy_type
R 3692 5 1584 mlcanopyfluxestype ceair_leaf$o mlcanopy_type
R 3694 5 1586 mlcanopyfluxestype leaf_esat_leaf mlcanopy_type
R 3698 5 1590 mlcanopyfluxestype leaf_esat_leaf$sd mlcanopy_type
R 3699 5 1591 mlcanopyfluxestype leaf_esat_leaf$p mlcanopy_type
R 3700 5 1592 mlcanopyfluxestype leaf_esat_leaf$o mlcanopy_type
R 3702 5 1594 mlcanopyfluxestype apar_leaf mlcanopy_type
R 3706 5 1598 mlcanopyfluxestype apar_leaf$sd mlcanopy_type
R 3707 5 1599 mlcanopyfluxestype apar_leaf$p mlcanopy_type
R 3708 5 1600 mlcanopyfluxestype apar_leaf$o mlcanopy_type
R 3710 5 1602 mlcanopyfluxestype je_leaf mlcanopy_type
R 3714 5 1606 mlcanopyfluxestype je_leaf$sd mlcanopy_type
R 3715 5 1607 mlcanopyfluxestype je_leaf$p mlcanopy_type
R 3716 5 1608 mlcanopyfluxestype je_leaf$o mlcanopy_type
R 3718 5 1610 mlcanopyfluxestype ac_leaf mlcanopy_type
R 3722 5 1614 mlcanopyfluxestype ac_leaf$sd mlcanopy_type
R 3723 5 1615 mlcanopyfluxestype ac_leaf$p mlcanopy_type
R 3724 5 1616 mlcanopyfluxestype ac_leaf$o mlcanopy_type
R 3726 5 1618 mlcanopyfluxestype aj_leaf mlcanopy_type
R 3730 5 1622 mlcanopyfluxestype aj_leaf$sd mlcanopy_type
R 3731 5 1623 mlcanopyfluxestype aj_leaf$p mlcanopy_type
R 3732 5 1624 mlcanopyfluxestype aj_leaf$o mlcanopy_type
R 3734 5 1626 mlcanopyfluxestype ap_leaf mlcanopy_type
R 3738 5 1630 mlcanopyfluxestype ap_leaf$sd mlcanopy_type
R 3739 5 1631 mlcanopyfluxestype ap_leaf$p mlcanopy_type
R 3740 5 1632 mlcanopyfluxestype ap_leaf$o mlcanopy_type
R 3742 5 1634 mlcanopyfluxestype agross_leaf mlcanopy_type
R 3746 5 1638 mlcanopyfluxestype agross_leaf$sd mlcanopy_type
R 3747 5 1639 mlcanopyfluxestype agross_leaf$p mlcanopy_type
R 3748 5 1640 mlcanopyfluxestype agross_leaf$o mlcanopy_type
R 3750 5 1642 mlcanopyfluxestype anet_leaf mlcanopy_type
R 3754 5 1646 mlcanopyfluxestype anet_leaf$sd mlcanopy_type
R 3755 5 1647 mlcanopyfluxestype anet_leaf$p mlcanopy_type
R 3756 5 1648 mlcanopyfluxestype anet_leaf$o mlcanopy_type
R 3758 5 1650 mlcanopyfluxestype rd_leaf mlcanopy_type
R 3762 5 1654 mlcanopyfluxestype rd_leaf$sd mlcanopy_type
R 3763 5 1655 mlcanopyfluxestype rd_leaf$p mlcanopy_type
R 3764 5 1656 mlcanopyfluxestype rd_leaf$o mlcanopy_type
R 3766 5 1658 mlcanopyfluxestype ci_leaf mlcanopy_type
R 3770 5 1662 mlcanopyfluxestype ci_leaf$sd mlcanopy_type
R 3771 5 1663 mlcanopyfluxestype ci_leaf$p mlcanopy_type
R 3772 5 1664 mlcanopyfluxestype ci_leaf$o mlcanopy_type
R 3774 5 1666 mlcanopyfluxestype cs_leaf mlcanopy_type
R 3778 5 1670 mlcanopyfluxestype cs_leaf$sd mlcanopy_type
R 3779 5 1671 mlcanopyfluxestype cs_leaf$p mlcanopy_type
R 3780 5 1672 mlcanopyfluxestype cs_leaf$o mlcanopy_type
R 3782 5 1674 mlcanopyfluxestype lwp_leaf mlcanopy_type
R 3786 5 1678 mlcanopyfluxestype lwp_leaf$sd mlcanopy_type
R 3787 5 1679 mlcanopyfluxestype lwp_leaf$p mlcanopy_type
R 3788 5 1680 mlcanopyfluxestype lwp_leaf$o mlcanopy_type
R 3790 5 1682 mlcanopyfluxestype lwp_bef_leaf mlcanopy_type
R 3794 5 1686 mlcanopyfluxestype lwp_bef_leaf$sd mlcanopy_type
R 3795 5 1687 mlcanopyfluxestype lwp_bef_leaf$p mlcanopy_type
R 3796 5 1688 mlcanopyfluxestype lwp_bef_leaf$o mlcanopy_type
R 3798 5 1690 mlcanopyfluxestype dlwp_leaf mlcanopy_type
R 3803 5 1695 mlcanopyfluxestype dlwp_leaf$sd mlcanopy_type
R 3804 5 1696 mlcanopyfluxestype dlwp_leaf$p mlcanopy_type
R 3805 5 1697 mlcanopyfluxestype dlwp_leaf$o mlcanopy_type
R 3807 5 1699 mlcanopyfluxestype lwp_hist_leaf mlcanopy_type
R 3811 5 1703 mlcanopyfluxestype lwp_hist_leaf$sd mlcanopy_type
R 3812 5 1704 mlcanopyfluxestype lwp_hist_leaf$p mlcanopy_type
R 3813 5 1705 mlcanopyfluxestype lwp_hist_leaf$o mlcanopy_type
R 3815 5 1707 mlcanopyfluxestype hs_leaf mlcanopy_type
R 3819 5 1711 mlcanopyfluxestype hs_leaf$sd mlcanopy_type
R 3820 5 1712 mlcanopyfluxestype hs_leaf$p mlcanopy_type
R 3821 5 1713 mlcanopyfluxestype hs_leaf$o mlcanopy_type
R 3823 5 1715 mlcanopyfluxestype vpd_leaf mlcanopy_type
R 3827 5 1719 mlcanopyfluxestype vpd_leaf$sd mlcanopy_type
R 3828 5 1720 mlcanopyfluxestype vpd_leaf$p mlcanopy_type
R 3829 5 1721 mlcanopyfluxestype vpd_leaf$o mlcanopy_type
R 3831 5 1723 mlcanopyfluxestype gs_leaf mlcanopy_type
R 3835 5 1727 mlcanopyfluxestype gs_leaf$sd mlcanopy_type
R 3836 5 1728 mlcanopyfluxestype gs_leaf$p mlcanopy_type
R 3837 5 1729 mlcanopyfluxestype gs_leaf$o mlcanopy_type
R 3839 5 1731 mlcanopyfluxestype gspot_leaf mlcanopy_type
R 3843 5 1735 mlcanopyfluxestype gspot_leaf$sd mlcanopy_type
R 3844 5 1736 mlcanopyfluxestype gspot_leaf$p mlcanopy_type
R 3845 5 1737 mlcanopyfluxestype gspot_leaf$o mlcanopy_type
R 3852 5 1744 mlcanopyfluxestype restart$tbp$0 mlcanopy_type
R 3853 5 1745 mlcanopyfluxestype initcold$tbp$1 mlcanopy_type
R 3854 5 1746 mlcanopyfluxestype inithistory$tbp$2 mlcanopy_type
R 3855 5 1747 mlcanopyfluxestype initallocate$tbp$3 mlcanopy_type
R 3856 5 1748 mlcanopyfluxestype init$tbp$4 mlcanopy_type
S 3881 27 0 0 0 9 3884 624 39603 0 8000000 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 solarradiation
S 3882 27 0 0 0 6 3894 624 39618 10 8000000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 norman
S 3883 27 0 0 0 9 3915 624 39625 10 8000000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 twostream
S 3884 23 5 0 0 0 3889 624 39603 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 solarradiation
S 3885 6 3 1 0 66 1 3884 11385 800004 3000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 3886 1 3 1 0 6 1 3884 39635 4 3000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3887 7 3 1 0 1896 1 3884 39646 20000004 10003000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3888 1 3 3 0 345 1 3884 39653 4 3000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3889 14 5 0 0 0 1 3884 39603 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 76 4 0 0 0 0 0 0 0 0 0 0 0 0 31 0 624 0 0 0 0 solarradiation solarradiation 
F 3889 4 3885 3886 3887 3888
S 3890 6 1 0 0 7 1 3884 39667 40800006 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3891 6 1 0 0 7 1 3884 39675 40800006 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3892 6 1 0 0 7 1 3884 39683 40800006 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3893 6 1 0 0 7 1 3884 39691 40800006 3000 A 0 0 0 0 B 0 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4071
S 3894 23 5 0 0 0 3902 624 39618 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 norman
S 3895 6 3 1 0 66 1 3894 11385 800004 3000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 3896 1 3 1 0 6 1 3894 39635 4 3000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3897 7 3 1 0 1899 1 3894 39646 20000004 10003000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3898 7 3 1 0 1902 1 3894 39700 800204 3000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rho
S 3899 7 3 1 0 1905 1 3894 39704 800204 3000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tau
S 3900 7 3 1 0 1908 1 3894 39708 800204 3000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 omega
S 3901 1 3 3 0 345 1 3894 39653 4 3000 A 0 0 0 0 B 0 290 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3902 14 5 0 0 0 1 3894 39618 20000210 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 81 7 0 0 0 0 0 0 0 0 0 0 0 0 290 0 624 0 0 0 0 norman norman 
F 3902 7 3895 3896 3897 3898 3899 3900 3901
S 3903 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3904 6 1 0 0 7 1 3894 39667 40800006 3000 A 0 0 0 0 B 0 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3905 6 1 0 0 7 1 3894 39675 40800006 3000 A 0 0 0 0 B 0 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3906 6 1 0 0 7 1 3894 39683 40800006 3000 A 0 0 0 0 B 0 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3907 6 1 0 0 7 1 3894 39714 40800006 3000 A 0 0 0 0 B 0 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3941
S 3908 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3909 6 1 0 0 7 1 3894 39723 40800006 3000 A 0 0 0 0 B 0 305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3949
S 3910 6 1 0 0 7 1 3894 39732 40800006 3000 A 0 0 0 0 B 0 305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3948
S 3911 6 1 0 0 7 1 3894 39741 40800006 3000 A 0 0 0 0 B 0 305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3954
S 3912 6 1 0 0 7 1 3894 39750 40800006 3000 A 0 0 0 0 B 0 305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3956
S 3913 6 1 0 0 7 1 3894 39759 40800006 3000 A 0 0 0 0 B 0 305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3958
S 3914 6 1 0 0 7 1 3894 39768 40800006 3000 A 0 0 0 0 B 0 305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3961
S 3915 23 5 0 0 0 3925 624 39625 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 twostream
S 3916 6 3 1 0 66 1 3915 11385 800004 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 3917 1 3 1 0 6 1 3915 39635 4 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3918 7 3 1 0 1911 1 3915 39646 20000004 10003000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3919 7 3 1 0 1914 1 3915 39708 800204 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 omega
S 3920 7 3 1 0 1917 1 3915 39777 800204 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 avmu
S 3921 7 3 1 0 1920 1 3915 39782 800204 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 betad
S 3922 7 3 1 0 1923 1 3915 39788 800204 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 betab
S 3923 7 3 1 0 1926 1 3915 39794 800204 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 clump_fac_ic
S 3924 1 3 3 0 345 1 3915 39653 4 3000 A 0 0 0 0 B 0 578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3925 14 5 0 0 0 1 3915 39625 20000210 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 89 9 0 0 0 0 0 0 0 0 0 0 0 0 578 0 624 0 0 0 0 twostream twostream 
F 3925 9 3916 3917 3918 3919 3920 3921 3922 3923 3924
S 3926 6 1 0 0 7 1 3915 39667 40800006 3000 A 0 0 0 0 B 0 594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3927 6 1 0 0 7 1 3915 39675 40800006 3000 A 0 0 0 0 B 0 594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3928 6 1 0 0 7 1 3915 39683 40800006 3000 A 0 0 0 0 B 0 594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3929 6 1 0 0 7 1 3915 39750 40800006 3000 A 0 0 0 0 B 0 594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3956
S 3930 6 1 0 0 7 1 3915 39807 40800006 3000 A 0 0 0 0 B 0 595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3962
S 3931 6 1 0 0 7 1 3915 39768 40800006 3000 A 0 0 0 0 B 0 595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3961
S 3932 6 1 0 0 7 1 3915 39816 40800006 3000 A 0 0 0 0 B 0 595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3966
S 3933 6 1 0 0 7 1 3915 39825 40800006 3000 A 0 0 0 0 B 0 595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3968
S 3934 6 1 0 0 7 1 3915 39834 40800006 3000 A 0 0 0 0 B 0 595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3970
S 3935 6 1 0 0 7 1 3915 39843 40800006 3000 A 0 0 0 0 B 0 595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3973
S 3936 6 1 0 0 7 1 3915 39852 40800006 3000 A 0 0 0 0 B 0 596 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3972
A 387 2 0 0 0 7 1270 0 0 0 387 0 0 0 0 0 0 0 0 0 0 0
A 480 2 0 0 0 7 1367 0 0 0 480 0 0 0 0 0 0 0 0 0 0 0
A 3928 1 0 0 0 7 3892 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3929 1 0 0 0 7 3890 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3930 1 0 0 0 7 3893 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3931 1 0 0 0 7 3891 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3932 1 0 0 0 7 3906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3933 1 0 0 0 7 3904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3934 1 0 0 3779 7 3907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3935 1 0 0 0 7 3905 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3936 1 0 0 2329 7 3914 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3937 1 0 0 2622 66 3895 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3938 1 0 0 0 6 1221 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3939 9 0 0 0 6 3937 3938 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3940 7 0 0 2677 7 3939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3941 1 0 0 0 6 1222 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3942 9 0 0 3939 6 3937 3941 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3943 7 0 0 0 7 3942 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3944 1 0 0 0 7 3909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3945 1 0 0 0 7 3910 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3946 1 0 0 617 7 3911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3947 2 0 0 3871 7 3903 0 0 0 3947 0 0 0 0 0 0 0 0 0 0 0
A 3948 2 0 0 0 7 3908 0 0 0 3948 0 0 0 0 0 0 0 0 0 0 0
A 3949 1 0 0 0 7 3912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3950 1 0 0 1890 7 3913 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3951 1 0 0 3766 7 3928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3952 1 0 0 0 7 3926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3953 1 0 0 0 7 3929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3954 1 0 0 1536 7 3927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3955 1 0 0 0 7 3935 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3956 1 0 0 0 66 3916 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3957 9 0 0 0 6 3956 3938 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3958 7 0 0 0 7 3957 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3959 9 0 0 3957 6 3956 3941 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3960 7 0 0 0 7 3959 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3961 1 0 0 0 7 3930 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3962 1 0 0 0 7 3931 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3963 1 0 0 0 7 3932 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3964 1 0 0 1544 7 3933 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3965 1 0 0 0 7 3934 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3966 1 0 0 0 7 3936 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
T 1377 104 0 0 0 0
A 1381 7 164 0 1 2 1
A 1380 7 0 387 1 10 1
A 1387 7 166 0 1 2 1
A 1386 7 0 387 1 10 1
A 1393 7 168 0 1 2 1
A 1392 7 0 387 1 10 1
A 1400 7 170 0 1 2 1
A 1399 7 0 480 1 10 1
A 1407 7 172 0 1 2 1
A 1406 7 0 480 1 10 1
A 1414 7 174 0 1 2 1
A 1413 7 0 480 1 10 1
A 1421 7 176 0 1 2 1
A 1420 7 0 480 1 10 1
A 1427 7 178 0 1 2 1
A 1426 7 0 387 1 10 1
A 1433 7 180 0 1 2 1
A 1432 7 0 387 1 10 0
T 1466 185 0 0 0 0
A 1470 7 287 0 1 2 1
A 1469 7 0 387 1 10 1
A 1476 7 289 0 1 2 1
A 1475 7 0 387 1 10 1
A 1482 7 291 0 1 2 1
A 1481 7 0 387 1 10 1
A 1488 7 293 0 1 2 1
A 1487 7 0 387 1 10 1
A 1494 7 295 0 1 2 1
A 1493 7 0 387 1 10 1
A 1500 7 297 0 1 2 1
A 1499 7 0 387 1 10 1
A 1506 7 299 0 1 2 1
A 1505 7 0 387 1 10 1
A 1512 7 301 0 1 2 1
A 1511 7 0 387 1 10 1
A 1518 7 303 0 1 2 1
A 1517 7 0 387 1 10 1
A 1524 7 305 0 1 2 1
A 1523 7 0 387 1 10 1
A 1530 7 307 0 1 2 1
A 1529 7 0 387 1 10 1
A 1536 7 309 0 1 2 1
A 1535 7 0 387 1 10 1
A 1542 7 311 0 1 2 1
A 1541 7 0 387 1 10 1
A 1548 7 313 0 1 2 1
A 1547 7 0 387 1 10 1
A 1554 7 315 0 1 2 1
A 1553 7 0 387 1 10 1
A 1560 7 317 0 1 2 1
A 1559 7 0 387 1 10 0
Z
