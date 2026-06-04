V34 :0x24 mlsoiltemperaturemod
24 MLSoilTemperatureMod.F90 S624 0
06/02/2026  09:20:29
use clm_varpar private
use mlcanopyfluxestype private
use mlmathtoolsmod private
use watertype private
use waterstatebulktype private
use waterdiagnosticbulktype private
use temperaturetype private
use soilstatetype private
use decompmod private
use columntype private
use abortutils private
use shr_kind_mod private
enduse
D 107 26 1344 32 1343 3
D 122 26 1365 3104 1364 7
D 233 26 1496 504 1495 7
D 266 26 1536 504 1535 7
D 299 26 1576 752 1575 7
D 338 26 1622 152 1621 7
D 376 26 2215 48080 2214 7
D 1984 23 6 1 4054 4057 1 1 0 0 1
 11 4055 11 11 4055 4056
D 1987 23 6 1 4058 4061 1 1 0 0 1
 11 4059 11 11 4059 4060
D 1990 23 10 2 4062 4078 1 1 0 0 1
 4066 4067 11 4068 4067 4069
 4073 4074 4075 4076 4074 4077
D 1993 23 10 2 4079 4087 1 1 0 0 1
 4066 4080 11 4081 4080 4082
 4073 4083 4084 4085 4083 4086
D 1996 23 10 1 4088 4092 1 1 0 0 1
 4066 4089 11 4090 4089 4091
S 624 24 0 0 0 6 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 mlsoiltemperaturemod
S 626 23 0 0 0 9 650 624 5046 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 1215 624 5072 4 0 A 0 0 0 0 B 400000 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 631 23 0 0 0 9 1333 624 5090 4 0 A 0 0 0 0 B 400000 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
S 633 23 0 0 0 9 1343 624 5104 4 0 A 0 0 0 0 B 400000 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 635 23 0 0 0 9 1364 624 5130 4 0 A 0 0 0 0 B 400000 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilstate_type
S 637 23 0 0 0 9 1495 624 5161 4 0 A 0 0 0 0 B 400000 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 temperature_type
S 639 23 0 0 0 9 1535 624 5202 4 0 A 0 0 0 0 B 400000 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 waterdiagnosticbulk_type
S 641 23 0 0 0 9 1575 624 5246 4 0 A 0 0 0 0 B 400000 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 waterstatebulk_type
S 643 23 0 0 0 9 1621 624 5276 4 0 A 0 0 0 0 B 400000 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 water_type
S 645 23 0 0 0 9 4049 624 5302 4 0 A 0 0 0 0 B 400000 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tridiag
S 647 23 0 0 0 6 2214 624 5329 4 0 A 0 0 0 0 B 400000 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mlcanopy_type
R 650 16 1 shr_kind_mod shr_kind_r8
R 1215 14 450 abortutils endrun
R 1271 6 3 clm_varpar nlevsno
R 1333 6 43 columntype col
R 1343 25 2 decompmod bounds_type
R 1344 5 3 decompmod begg bounds_type
R 1345 5 4 decompmod endg bounds_type
R 1346 5 5 decompmod begl bounds_type
R 1347 5 6 decompmod endl bounds_type
R 1348 5 7 decompmod begc bounds_type
R 1349 5 8 decompmod endc bounds_type
R 1350 5 9 decompmod begp bounds_type
R 1351 5 10 decompmod endp bounds_type
R 1364 25 8 soilstatetype soilstate_type
R 1365 5 9 soilstatetype cellorg_col soilstate_type
R 1368 5 12 soilstatetype cellorg_col$sd soilstate_type
R 1369 5 13 soilstatetype cellorg_col$p soilstate_type
R 1370 5 14 soilstatetype cellorg_col$o soilstate_type
R 1372 5 16 soilstatetype cellsand_col soilstate_type
R 1375 5 19 soilstatetype cellsand_col$sd soilstate_type
R 1376 5 20 soilstatetype cellsand_col$p soilstate_type
R 1377 5 21 soilstatetype cellsand_col$o soilstate_type
R 1379 5 23 soilstatetype cellclay_col soilstate_type
R 1382 5 26 soilstatetype cellclay_col$sd soilstate_type
R 1383 5 27 soilstatetype cellclay_col$p soilstate_type
R 1384 5 28 soilstatetype cellclay_col$o soilstate_type
R 1386 5 30 soilstatetype hksat_col soilstate_type
R 1389 5 33 soilstatetype hksat_col$sd soilstate_type
R 1390 5 34 soilstatetype hksat_col$p soilstate_type
R 1391 5 35 soilstatetype hksat_col$o soilstate_type
R 1393 5 37 soilstatetype hk_l_col soilstate_type
R 1396 5 40 soilstatetype hk_l_col$sd soilstate_type
R 1397 5 41 soilstatetype hk_l_col$p soilstate_type
R 1398 5 42 soilstatetype hk_l_col$o soilstate_type
R 1400 5 44 soilstatetype smp_l_col soilstate_type
R 1403 5 47 soilstatetype smp_l_col$sd soilstate_type
R 1404 5 48 soilstatetype smp_l_col$p soilstate_type
R 1405 5 49 soilstatetype smp_l_col$o soilstate_type
R 1407 5 51 soilstatetype bsw_col soilstate_type
R 1410 5 54 soilstatetype bsw_col$sd soilstate_type
R 1411 5 55 soilstatetype bsw_col$p soilstate_type
R 1412 5 56 soilstatetype bsw_col$o soilstate_type
R 1414 5 58 soilstatetype watsat_col soilstate_type
R 1417 5 61 soilstatetype watsat_col$sd soilstate_type
R 1418 5 62 soilstatetype watsat_col$p soilstate_type
R 1419 5 63 soilstatetype watsat_col$o soilstate_type
R 1421 5 65 soilstatetype sucsat_col soilstate_type
R 1424 5 68 soilstatetype sucsat_col$sd soilstate_type
R 1425 5 69 soilstatetype sucsat_col$p soilstate_type
R 1426 5 70 soilstatetype sucsat_col$o soilstate_type
R 1428 5 72 soilstatetype dsl_col soilstate_type
R 1430 5 74 soilstatetype dsl_col$sd soilstate_type
R 1431 5 75 soilstatetype dsl_col$p soilstate_type
R 1432 5 76 soilstatetype dsl_col$o soilstate_type
R 1434 5 78 soilstatetype soilresis_col soilstate_type
R 1436 5 80 soilstatetype soilresis_col$sd soilstate_type
R 1437 5 81 soilstatetype soilresis_col$p soilstate_type
R 1438 5 82 soilstatetype soilresis_col$o soilstate_type
R 1440 5 84 soilstatetype thk_col soilstate_type
R 1443 5 87 soilstatetype thk_col$sd soilstate_type
R 1444 5 88 soilstatetype thk_col$p soilstate_type
R 1445 5 89 soilstatetype thk_col$o soilstate_type
R 1447 5 91 soilstatetype tkmg_col soilstate_type
R 1450 5 94 soilstatetype tkmg_col$sd soilstate_type
R 1451 5 95 soilstatetype tkmg_col$p soilstate_type
R 1452 5 96 soilstatetype tkmg_col$o soilstate_type
R 1454 5 98 soilstatetype tkdry_col soilstate_type
R 1457 5 101 soilstatetype tkdry_col$sd soilstate_type
R 1458 5 102 soilstatetype tkdry_col$p soilstate_type
R 1459 5 103 soilstatetype tkdry_col$o soilstate_type
R 1461 5 105 soilstatetype csol_col soilstate_type
R 1464 5 108 soilstatetype csol_col$sd soilstate_type
R 1465 5 109 soilstatetype csol_col$p soilstate_type
R 1466 5 110 soilstatetype csol_col$o soilstate_type
R 1468 5 112 soilstatetype rootfr_patch soilstate_type
R 1471 5 115 soilstatetype rootfr_patch$sd soilstate_type
R 1472 5 116 soilstatetype rootfr_patch$p soilstate_type
R 1473 5 117 soilstatetype rootfr_patch$o soilstate_type
R 1477 5 121 soilstatetype initallocate$tbp$0 soilstate_type
R 1478 5 122 soilstatetype init$tbp$1 soilstate_type
R 1495 25 7 temperaturetype temperature_type
R 1496 5 8 temperaturetype t_soisno_col temperature_type
R 1499 5 11 temperaturetype t_soisno_col$sd temperature_type
R 1500 5 12 temperaturetype t_soisno_col$p temperature_type
R 1501 5 13 temperaturetype t_soisno_col$o temperature_type
R 1503 5 15 temperaturetype t_a10_patch temperature_type
R 1505 5 17 temperaturetype t_a10_patch$sd temperature_type
R 1506 5 18 temperaturetype t_a10_patch$p temperature_type
R 1507 5 19 temperaturetype t_a10_patch$o temperature_type
R 1509 5 21 temperaturetype t_ref2m_patch temperature_type
R 1511 5 23 temperaturetype t_ref2m_patch$sd temperature_type
R 1512 5 24 temperaturetype t_ref2m_patch$p temperature_type
R 1513 5 25 temperaturetype t_ref2m_patch$o temperature_type
R 1517 5 29 temperaturetype initallocate$tbp$0 temperature_type
R 1518 5 30 temperaturetype init$tbp$1 temperature_type
R 1535 25 7 waterdiagnosticbulktype waterdiagnosticbulk_type
R 1536 5 8 waterdiagnosticbulktype q_ref2m_patch waterdiagnosticbulk_type
R 1538 5 10 waterdiagnosticbulktype q_ref2m_patch$sd waterdiagnosticbulk_type
R 1539 5 11 waterdiagnosticbulktype q_ref2m_patch$p waterdiagnosticbulk_type
R 1540 5 12 waterdiagnosticbulktype q_ref2m_patch$o waterdiagnosticbulk_type
R 1542 5 14 waterdiagnosticbulktype frac_sno_eff_col waterdiagnosticbulk_type
R 1544 5 16 waterdiagnosticbulktype frac_sno_eff_col$sd waterdiagnosticbulk_type
R 1545 5 17 waterdiagnosticbulktype frac_sno_eff_col$p waterdiagnosticbulk_type
R 1546 5 18 waterdiagnosticbulktype frac_sno_eff_col$o waterdiagnosticbulk_type
R 1548 5 20 waterdiagnosticbulktype bw_col waterdiagnosticbulk_type
R 1551 5 23 waterdiagnosticbulktype bw_col$sd waterdiagnosticbulk_type
R 1552 5 24 waterdiagnosticbulktype bw_col$p waterdiagnosticbulk_type
R 1553 5 25 waterdiagnosticbulktype bw_col$o waterdiagnosticbulk_type
R 1557 5 29 waterdiagnosticbulktype initallocate$tbp$0 waterdiagnosticbulk_type
R 1558 5 30 waterdiagnosticbulktype init$tbp$1 waterdiagnosticbulk_type
R 1575 25 7 waterstatebulktype waterstatebulk_type
R 1576 5 8 waterstatebulktype h2osoi_liq_col waterstatebulk_type
R 1579 5 11 waterstatebulktype h2osoi_liq_col$sd waterstatebulk_type
R 1580 5 12 waterstatebulktype h2osoi_liq_col$p waterstatebulk_type
R 1581 5 13 waterstatebulktype h2osoi_liq_col$o waterstatebulk_type
R 1583 5 15 waterstatebulktype h2osoi_ice_col waterstatebulk_type
R 1586 5 18 waterstatebulktype h2osoi_ice_col$sd waterstatebulk_type
R 1587 5 19 waterstatebulktype h2osoi_ice_col$p waterstatebulk_type
R 1588 5 20 waterstatebulktype h2osoi_ice_col$o waterstatebulk_type
R 1590 5 22 waterstatebulktype h2osoi_vol_col waterstatebulk_type
R 1593 5 25 waterstatebulktype h2osoi_vol_col$sd waterstatebulk_type
R 1594 5 26 waterstatebulktype h2osoi_vol_col$p waterstatebulk_type
R 1595 5 27 waterstatebulktype h2osoi_vol_col$o waterstatebulk_type
R 1597 5 29 waterstatebulktype h2osfc_col waterstatebulk_type
R 1599 5 31 waterstatebulktype h2osfc_col$sd waterstatebulk_type
R 1600 5 32 waterstatebulktype h2osfc_col$p waterstatebulk_type
R 1601 5 33 waterstatebulktype h2osfc_col$o waterstatebulk_type
R 1605 5 37 waterstatebulktype initallocate$tbp$0 waterstatebulk_type
R 1606 5 38 waterstatebulktype init$tbp$1 waterstatebulk_type
R 1621 25 5 watertype water_type
R 1622 5 6 watertype h2osno_col water_type
R 1624 5 8 watertype h2osno_col$sd water_type
R 1625 5 9 watertype h2osno_col$p water_type
R 1626 5 10 watertype h2osno_col$o water_type
R 1630 5 14 watertype initallocate$tbp$0 water_type
R 1631 5 15 watertype init$tbp$1 water_type
R 2214 25 11 mlcanopyfluxestype mlcanopy_type
R 2215 5 12 mlcanopyfluxestype ztop_canopy mlcanopy_type
R 2217 5 14 mlcanopyfluxestype ztop_canopy$sd mlcanopy_type
R 2218 5 15 mlcanopyfluxestype ztop_canopy$p mlcanopy_type
R 2219 5 16 mlcanopyfluxestype ztop_canopy$o mlcanopy_type
R 2221 5 18 mlcanopyfluxestype zbot_canopy mlcanopy_type
R 2223 5 20 mlcanopyfluxestype zbot_canopy$sd mlcanopy_type
R 2224 5 21 mlcanopyfluxestype zbot_canopy$p mlcanopy_type
R 2225 5 22 mlcanopyfluxestype zbot_canopy$o mlcanopy_type
R 2227 5 24 mlcanopyfluxestype lai_canopy mlcanopy_type
R 2229 5 26 mlcanopyfluxestype lai_canopy$sd mlcanopy_type
R 2230 5 27 mlcanopyfluxestype lai_canopy$p mlcanopy_type
R 2231 5 28 mlcanopyfluxestype lai_canopy$o mlcanopy_type
R 2233 5 30 mlcanopyfluxestype sai_canopy mlcanopy_type
R 2235 5 32 mlcanopyfluxestype sai_canopy$sd mlcanopy_type
R 2236 5 33 mlcanopyfluxestype sai_canopy$p mlcanopy_type
R 2237 5 34 mlcanopyfluxestype sai_canopy$o mlcanopy_type
R 2239 5 36 mlcanopyfluxestype root_biomass_canopy mlcanopy_type
R 2241 5 38 mlcanopyfluxestype root_biomass_canopy$sd mlcanopy_type
R 2242 5 39 mlcanopyfluxestype root_biomass_canopy$p mlcanopy_type
R 2243 5 40 mlcanopyfluxestype root_biomass_canopy$o mlcanopy_type
R 2245 5 42 mlcanopyfluxestype pbeta_lai_canopy mlcanopy_type
R 2248 5 45 mlcanopyfluxestype pbeta_lai_canopy$sd mlcanopy_type
R 2249 5 46 mlcanopyfluxestype pbeta_lai_canopy$p mlcanopy_type
R 2250 5 47 mlcanopyfluxestype pbeta_lai_canopy$o mlcanopy_type
R 2252 5 49 mlcanopyfluxestype pbeta_sai_canopy mlcanopy_type
R 2255 5 52 mlcanopyfluxestype pbeta_sai_canopy$sd mlcanopy_type
R 2256 5 53 mlcanopyfluxestype pbeta_sai_canopy$p mlcanopy_type
R 2257 5 54 mlcanopyfluxestype pbeta_sai_canopy$o mlcanopy_type
R 2259 5 56 mlcanopyfluxestype zref_forcing mlcanopy_type
R 2261 5 58 mlcanopyfluxestype zref_forcing$sd mlcanopy_type
R 2262 5 59 mlcanopyfluxestype zref_forcing$p mlcanopy_type
R 2263 5 60 mlcanopyfluxestype zref_forcing$o mlcanopy_type
R 2265 5 62 mlcanopyfluxestype tref_forcing mlcanopy_type
R 2267 5 64 mlcanopyfluxestype tref_forcing$sd mlcanopy_type
R 2268 5 65 mlcanopyfluxestype tref_forcing$p mlcanopy_type
R 2269 5 66 mlcanopyfluxestype tref_forcing$o mlcanopy_type
R 2271 5 68 mlcanopyfluxestype tref_bef_forcing mlcanopy_type
R 2273 5 70 mlcanopyfluxestype tref_bef_forcing$sd mlcanopy_type
R 2274 5 71 mlcanopyfluxestype tref_bef_forcing$p mlcanopy_type
R 2275 5 72 mlcanopyfluxestype tref_bef_forcing$o mlcanopy_type
R 2277 5 74 mlcanopyfluxestype tref_cur_forcing mlcanopy_type
R 2279 5 76 mlcanopyfluxestype tref_cur_forcing$sd mlcanopy_type
R 2280 5 77 mlcanopyfluxestype tref_cur_forcing$p mlcanopy_type
R 2281 5 78 mlcanopyfluxestype tref_cur_forcing$o mlcanopy_type
R 2283 5 80 mlcanopyfluxestype tref_next_forcing mlcanopy_type
R 2285 5 82 mlcanopyfluxestype tref_next_forcing$sd mlcanopy_type
R 2286 5 83 mlcanopyfluxestype tref_next_forcing$p mlcanopy_type
R 2287 5 84 mlcanopyfluxestype tref_next_forcing$o mlcanopy_type
R 2289 5 86 mlcanopyfluxestype qref_forcing mlcanopy_type
R 2291 5 88 mlcanopyfluxestype qref_forcing$sd mlcanopy_type
R 2292 5 89 mlcanopyfluxestype qref_forcing$p mlcanopy_type
R 2293 5 90 mlcanopyfluxestype qref_forcing$o mlcanopy_type
R 2295 5 92 mlcanopyfluxestype qref_bef_forcing mlcanopy_type
R 2297 5 94 mlcanopyfluxestype qref_bef_forcing$sd mlcanopy_type
R 2298 5 95 mlcanopyfluxestype qref_bef_forcing$p mlcanopy_type
R 2299 5 96 mlcanopyfluxestype qref_bef_forcing$o mlcanopy_type
R 2301 5 98 mlcanopyfluxestype qref_cur_forcing mlcanopy_type
R 2303 5 100 mlcanopyfluxestype qref_cur_forcing$sd mlcanopy_type
R 2304 5 101 mlcanopyfluxestype qref_cur_forcing$p mlcanopy_type
R 2305 5 102 mlcanopyfluxestype qref_cur_forcing$o mlcanopy_type
R 2307 5 104 mlcanopyfluxestype qref_next_forcing mlcanopy_type
R 2309 5 106 mlcanopyfluxestype qref_next_forcing$sd mlcanopy_type
R 2310 5 107 mlcanopyfluxestype qref_next_forcing$p mlcanopy_type
R 2311 5 108 mlcanopyfluxestype qref_next_forcing$o mlcanopy_type
R 2313 5 110 mlcanopyfluxestype uref_forcing mlcanopy_type
R 2315 5 112 mlcanopyfluxestype uref_forcing$sd mlcanopy_type
R 2316 5 113 mlcanopyfluxestype uref_forcing$p mlcanopy_type
R 2317 5 114 mlcanopyfluxestype uref_forcing$o mlcanopy_type
R 2319 5 116 mlcanopyfluxestype uref_bef_forcing mlcanopy_type
R 2321 5 118 mlcanopyfluxestype uref_bef_forcing$sd mlcanopy_type
R 2322 5 119 mlcanopyfluxestype uref_bef_forcing$p mlcanopy_type
R 2323 5 120 mlcanopyfluxestype uref_bef_forcing$o mlcanopy_type
R 2325 5 122 mlcanopyfluxestype uref_cur_forcing mlcanopy_type
R 2327 5 124 mlcanopyfluxestype uref_cur_forcing$sd mlcanopy_type
R 2328 5 125 mlcanopyfluxestype uref_cur_forcing$p mlcanopy_type
R 2329 5 126 mlcanopyfluxestype uref_cur_forcing$o mlcanopy_type
R 2331 5 128 mlcanopyfluxestype uref_next_forcing mlcanopy_type
R 2333 5 130 mlcanopyfluxestype uref_next_forcing$sd mlcanopy_type
R 2334 5 131 mlcanopyfluxestype uref_next_forcing$p mlcanopy_type
R 2335 5 132 mlcanopyfluxestype uref_next_forcing$o mlcanopy_type
R 2337 5 134 mlcanopyfluxestype pref_forcing mlcanopy_type
R 2339 5 136 mlcanopyfluxestype pref_forcing$sd mlcanopy_type
R 2340 5 137 mlcanopyfluxestype pref_forcing$p mlcanopy_type
R 2341 5 138 mlcanopyfluxestype pref_forcing$o mlcanopy_type
R 2343 5 140 mlcanopyfluxestype pref_bef_forcing mlcanopy_type
R 2345 5 142 mlcanopyfluxestype pref_bef_forcing$sd mlcanopy_type
R 2346 5 143 mlcanopyfluxestype pref_bef_forcing$p mlcanopy_type
R 2347 5 144 mlcanopyfluxestype pref_bef_forcing$o mlcanopy_type
R 2349 5 146 mlcanopyfluxestype pref_cur_forcing mlcanopy_type
R 2351 5 148 mlcanopyfluxestype pref_cur_forcing$sd mlcanopy_type
R 2352 5 149 mlcanopyfluxestype pref_cur_forcing$p mlcanopy_type
R 2353 5 150 mlcanopyfluxestype pref_cur_forcing$o mlcanopy_type
R 2355 5 152 mlcanopyfluxestype pref_next_forcing mlcanopy_type
R 2357 5 154 mlcanopyfluxestype pref_next_forcing$sd mlcanopy_type
R 2358 5 155 mlcanopyfluxestype pref_next_forcing$p mlcanopy_type
R 2359 5 156 mlcanopyfluxestype pref_next_forcing$o mlcanopy_type
R 2361 5 158 mlcanopyfluxestype co2ref_forcing mlcanopy_type
R 2363 5 160 mlcanopyfluxestype co2ref_forcing$sd mlcanopy_type
R 2364 5 161 mlcanopyfluxestype co2ref_forcing$p mlcanopy_type
R 2365 5 162 mlcanopyfluxestype co2ref_forcing$o mlcanopy_type
R 2367 5 164 mlcanopyfluxestype co2ref_bef_forcing mlcanopy_type
R 2369 5 166 mlcanopyfluxestype co2ref_bef_forcing$sd mlcanopy_type
R 2370 5 167 mlcanopyfluxestype co2ref_bef_forcing$p mlcanopy_type
R 2371 5 168 mlcanopyfluxestype co2ref_bef_forcing$o mlcanopy_type
R 2373 5 170 mlcanopyfluxestype co2ref_cur_forcing mlcanopy_type
R 2375 5 172 mlcanopyfluxestype co2ref_cur_forcing$sd mlcanopy_type
R 2376 5 173 mlcanopyfluxestype co2ref_cur_forcing$p mlcanopy_type
R 2377 5 174 mlcanopyfluxestype co2ref_cur_forcing$o mlcanopy_type
R 2379 5 176 mlcanopyfluxestype co2ref_next_forcing mlcanopy_type
R 2381 5 178 mlcanopyfluxestype co2ref_next_forcing$sd mlcanopy_type
R 2382 5 179 mlcanopyfluxestype co2ref_next_forcing$p mlcanopy_type
R 2383 5 180 mlcanopyfluxestype co2ref_next_forcing$o mlcanopy_type
R 2385 5 182 mlcanopyfluxestype o2ref_forcing mlcanopy_type
R 2387 5 184 mlcanopyfluxestype o2ref_forcing$sd mlcanopy_type
R 2388 5 185 mlcanopyfluxestype o2ref_forcing$p mlcanopy_type
R 2389 5 186 mlcanopyfluxestype o2ref_forcing$o mlcanopy_type
R 2391 5 188 mlcanopyfluxestype swskyb_forcing mlcanopy_type
R 2394 5 191 mlcanopyfluxestype swskyb_forcing$sd mlcanopy_type
R 2395 5 192 mlcanopyfluxestype swskyb_forcing$p mlcanopy_type
R 2396 5 193 mlcanopyfluxestype swskyb_forcing$o mlcanopy_type
R 2398 5 195 mlcanopyfluxestype swskyb_bef_forcing mlcanopy_type
R 2401 5 198 mlcanopyfluxestype swskyb_bef_forcing$sd mlcanopy_type
R 2402 5 199 mlcanopyfluxestype swskyb_bef_forcing$p mlcanopy_type
R 2403 5 200 mlcanopyfluxestype swskyb_bef_forcing$o mlcanopy_type
R 2405 5 202 mlcanopyfluxestype swskyb_cur_forcing mlcanopy_type
R 2408 5 205 mlcanopyfluxestype swskyb_cur_forcing$sd mlcanopy_type
R 2409 5 206 mlcanopyfluxestype swskyb_cur_forcing$p mlcanopy_type
R 2410 5 207 mlcanopyfluxestype swskyb_cur_forcing$o mlcanopy_type
R 2412 5 209 mlcanopyfluxestype swskyb_next_forcing mlcanopy_type
R 2415 5 212 mlcanopyfluxestype swskyb_next_forcing$sd mlcanopy_type
R 2416 5 213 mlcanopyfluxestype swskyb_next_forcing$p mlcanopy_type
R 2417 5 214 mlcanopyfluxestype swskyb_next_forcing$o mlcanopy_type
R 2419 5 216 mlcanopyfluxestype swskyd_forcing mlcanopy_type
R 2422 5 219 mlcanopyfluxestype swskyd_forcing$sd mlcanopy_type
R 2423 5 220 mlcanopyfluxestype swskyd_forcing$p mlcanopy_type
R 2424 5 221 mlcanopyfluxestype swskyd_forcing$o mlcanopy_type
R 2426 5 223 mlcanopyfluxestype swskyd_bef_forcing mlcanopy_type
R 2429 5 226 mlcanopyfluxestype swskyd_bef_forcing$sd mlcanopy_type
R 2430 5 227 mlcanopyfluxestype swskyd_bef_forcing$p mlcanopy_type
R 2431 5 228 mlcanopyfluxestype swskyd_bef_forcing$o mlcanopy_type
R 2433 5 230 mlcanopyfluxestype swskyd_cur_forcing mlcanopy_type
R 2436 5 233 mlcanopyfluxestype swskyd_cur_forcing$sd mlcanopy_type
R 2437 5 234 mlcanopyfluxestype swskyd_cur_forcing$p mlcanopy_type
R 2438 5 235 mlcanopyfluxestype swskyd_cur_forcing$o mlcanopy_type
R 2440 5 237 mlcanopyfluxestype swskyd_next_forcing mlcanopy_type
R 2443 5 240 mlcanopyfluxestype swskyd_next_forcing$sd mlcanopy_type
R 2444 5 241 mlcanopyfluxestype swskyd_next_forcing$p mlcanopy_type
R 2445 5 242 mlcanopyfluxestype swskyd_next_forcing$o mlcanopy_type
R 2447 5 244 mlcanopyfluxestype lwsky_forcing mlcanopy_type
R 2449 5 246 mlcanopyfluxestype lwsky_forcing$sd mlcanopy_type
R 2450 5 247 mlcanopyfluxestype lwsky_forcing$p mlcanopy_type
R 2451 5 248 mlcanopyfluxestype lwsky_forcing$o mlcanopy_type
R 2453 5 250 mlcanopyfluxestype lwsky_bef_forcing mlcanopy_type
R 2455 5 252 mlcanopyfluxestype lwsky_bef_forcing$sd mlcanopy_type
R 2456 5 253 mlcanopyfluxestype lwsky_bef_forcing$p mlcanopy_type
R 2457 5 254 mlcanopyfluxestype lwsky_bef_forcing$o mlcanopy_type
R 2459 5 256 mlcanopyfluxestype lwsky_cur_forcing mlcanopy_type
R 2461 5 258 mlcanopyfluxestype lwsky_cur_forcing$sd mlcanopy_type
R 2462 5 259 mlcanopyfluxestype lwsky_cur_forcing$p mlcanopy_type
R 2463 5 260 mlcanopyfluxestype lwsky_cur_forcing$o mlcanopy_type
R 2465 5 262 mlcanopyfluxestype lwsky_next_forcing mlcanopy_type
R 2467 5 264 mlcanopyfluxestype lwsky_next_forcing$sd mlcanopy_type
R 2468 5 265 mlcanopyfluxestype lwsky_next_forcing$p mlcanopy_type
R 2469 5 266 mlcanopyfluxestype lwsky_next_forcing$o mlcanopy_type
R 2471 5 268 mlcanopyfluxestype qflx_rain_forcing mlcanopy_type
R 2473 5 270 mlcanopyfluxestype qflx_rain_forcing$sd mlcanopy_type
R 2474 5 271 mlcanopyfluxestype qflx_rain_forcing$p mlcanopy_type
R 2475 5 272 mlcanopyfluxestype qflx_rain_forcing$o mlcanopy_type
R 2477 5 274 mlcanopyfluxestype qflx_snow_forcing mlcanopy_type
R 2479 5 276 mlcanopyfluxestype qflx_snow_forcing$sd mlcanopy_type
R 2480 5 277 mlcanopyfluxestype qflx_snow_forcing$p mlcanopy_type
R 2481 5 278 mlcanopyfluxestype qflx_snow_forcing$o mlcanopy_type
R 2483 5 280 mlcanopyfluxestype tacclim_forcing mlcanopy_type
R 2485 5 282 mlcanopyfluxestype tacclim_forcing$sd mlcanopy_type
R 2486 5 283 mlcanopyfluxestype tacclim_forcing$p mlcanopy_type
R 2487 5 284 mlcanopyfluxestype tacclim_forcing$o mlcanopy_type
R 2489 5 286 mlcanopyfluxestype eref_forcing mlcanopy_type
R 2491 5 288 mlcanopyfluxestype eref_forcing$sd mlcanopy_type
R 2492 5 289 mlcanopyfluxestype eref_forcing$p mlcanopy_type
R 2493 5 290 mlcanopyfluxestype eref_forcing$o mlcanopy_type
R 2495 5 292 mlcanopyfluxestype thref_forcing mlcanopy_type
R 2497 5 294 mlcanopyfluxestype thref_forcing$sd mlcanopy_type
R 2498 5 295 mlcanopyfluxestype thref_forcing$p mlcanopy_type
R 2499 5 296 mlcanopyfluxestype thref_forcing$o mlcanopy_type
R 2501 5 298 mlcanopyfluxestype thvref_forcing mlcanopy_type
R 2503 5 300 mlcanopyfluxestype thvref_forcing$sd mlcanopy_type
R 2504 5 301 mlcanopyfluxestype thvref_forcing$p mlcanopy_type
R 2505 5 302 mlcanopyfluxestype thvref_forcing$o mlcanopy_type
R 2507 5 304 mlcanopyfluxestype rhoair_forcing mlcanopy_type
R 2509 5 306 mlcanopyfluxestype rhoair_forcing$sd mlcanopy_type
R 2510 5 307 mlcanopyfluxestype rhoair_forcing$p mlcanopy_type
R 2511 5 308 mlcanopyfluxestype rhoair_forcing$o mlcanopy_type
R 2513 5 310 mlcanopyfluxestype rhomol_forcing mlcanopy_type
R 2515 5 312 mlcanopyfluxestype rhomol_forcing$sd mlcanopy_type
R 2516 5 313 mlcanopyfluxestype rhomol_forcing$p mlcanopy_type
R 2517 5 314 mlcanopyfluxestype rhomol_forcing$o mlcanopy_type
R 2519 5 316 mlcanopyfluxestype mmair_forcing mlcanopy_type
R 2521 5 318 mlcanopyfluxestype mmair_forcing$sd mlcanopy_type
R 2522 5 319 mlcanopyfluxestype mmair_forcing$p mlcanopy_type
R 2523 5 320 mlcanopyfluxestype mmair_forcing$o mlcanopy_type
R 2525 5 322 mlcanopyfluxestype cpair_forcing mlcanopy_type
R 2527 5 324 mlcanopyfluxestype cpair_forcing$sd mlcanopy_type
R 2528 5 325 mlcanopyfluxestype cpair_forcing$p mlcanopy_type
R 2529 5 326 mlcanopyfluxestype cpair_forcing$o mlcanopy_type
R 2531 5 328 mlcanopyfluxestype solar_zen_forcing mlcanopy_type
R 2533 5 330 mlcanopyfluxestype solar_zen_forcing$sd mlcanopy_type
R 2534 5 331 mlcanopyfluxestype solar_zen_forcing$p mlcanopy_type
R 2535 5 332 mlcanopyfluxestype solar_zen_forcing$o mlcanopy_type
R 2537 5 334 mlcanopyfluxestype swveg_canopy mlcanopy_type
R 2540 5 337 mlcanopyfluxestype swveg_canopy$sd mlcanopy_type
R 2541 5 338 mlcanopyfluxestype swveg_canopy$p mlcanopy_type
R 2542 5 339 mlcanopyfluxestype swveg_canopy$o mlcanopy_type
R 2544 5 341 mlcanopyfluxestype swvegsun_canopy mlcanopy_type
R 2547 5 344 mlcanopyfluxestype swvegsun_canopy$sd mlcanopy_type
R 2548 5 345 mlcanopyfluxestype swvegsun_canopy$p mlcanopy_type
R 2549 5 346 mlcanopyfluxestype swvegsun_canopy$o mlcanopy_type
R 2551 5 348 mlcanopyfluxestype swvegsha_canopy mlcanopy_type
R 2554 5 351 mlcanopyfluxestype swvegsha_canopy$sd mlcanopy_type
R 2555 5 352 mlcanopyfluxestype swvegsha_canopy$p mlcanopy_type
R 2556 5 353 mlcanopyfluxestype swvegsha_canopy$o mlcanopy_type
R 2558 5 355 mlcanopyfluxestype lwveg_canopy mlcanopy_type
R 2560 5 357 mlcanopyfluxestype lwveg_canopy$sd mlcanopy_type
R 2561 5 358 mlcanopyfluxestype lwveg_canopy$p mlcanopy_type
R 2562 5 359 mlcanopyfluxestype lwveg_canopy$o mlcanopy_type
R 2564 5 361 mlcanopyfluxestype lwvegsun_canopy mlcanopy_type
R 2566 5 363 mlcanopyfluxestype lwvegsun_canopy$sd mlcanopy_type
R 2567 5 364 mlcanopyfluxestype lwvegsun_canopy$p mlcanopy_type
R 2568 5 365 mlcanopyfluxestype lwvegsun_canopy$o mlcanopy_type
R 2570 5 367 mlcanopyfluxestype lwvegsha_canopy mlcanopy_type
R 2572 5 369 mlcanopyfluxestype lwvegsha_canopy$sd mlcanopy_type
R 2573 5 370 mlcanopyfluxestype lwvegsha_canopy$p mlcanopy_type
R 2574 5 371 mlcanopyfluxestype lwvegsha_canopy$o mlcanopy_type
R 2576 5 373 mlcanopyfluxestype shveg_canopy mlcanopy_type
R 2578 5 375 mlcanopyfluxestype shveg_canopy$sd mlcanopy_type
R 2579 5 376 mlcanopyfluxestype shveg_canopy$p mlcanopy_type
R 2580 5 377 mlcanopyfluxestype shveg_canopy$o mlcanopy_type
R 2582 5 379 mlcanopyfluxestype shvegsun_canopy mlcanopy_type
R 2584 5 381 mlcanopyfluxestype shvegsun_canopy$sd mlcanopy_type
R 2585 5 382 mlcanopyfluxestype shvegsun_canopy$p mlcanopy_type
R 2586 5 383 mlcanopyfluxestype shvegsun_canopy$o mlcanopy_type
R 2588 5 385 mlcanopyfluxestype shvegsha_canopy mlcanopy_type
R 2590 5 387 mlcanopyfluxestype shvegsha_canopy$sd mlcanopy_type
R 2591 5 388 mlcanopyfluxestype shvegsha_canopy$p mlcanopy_type
R 2592 5 389 mlcanopyfluxestype shvegsha_canopy$o mlcanopy_type
R 2594 5 391 mlcanopyfluxestype lhveg_canopy mlcanopy_type
R 2596 5 393 mlcanopyfluxestype lhveg_canopy$sd mlcanopy_type
R 2597 5 394 mlcanopyfluxestype lhveg_canopy$p mlcanopy_type
R 2598 5 395 mlcanopyfluxestype lhveg_canopy$o mlcanopy_type
R 2600 5 397 mlcanopyfluxestype lhvegsun_canopy mlcanopy_type
R 2602 5 399 mlcanopyfluxestype lhvegsun_canopy$sd mlcanopy_type
R 2603 5 400 mlcanopyfluxestype lhvegsun_canopy$p mlcanopy_type
R 2604 5 401 mlcanopyfluxestype lhvegsun_canopy$o mlcanopy_type
R 2606 5 403 mlcanopyfluxestype lhvegsha_canopy mlcanopy_type
R 2608 5 405 mlcanopyfluxestype lhvegsha_canopy$sd mlcanopy_type
R 2609 5 406 mlcanopyfluxestype lhvegsha_canopy$p mlcanopy_type
R 2610 5 407 mlcanopyfluxestype lhvegsha_canopy$o mlcanopy_type
R 2612 5 409 mlcanopyfluxestype etveg_canopy mlcanopy_type
R 2614 5 411 mlcanopyfluxestype etveg_canopy$sd mlcanopy_type
R 2615 5 412 mlcanopyfluxestype etveg_canopy$p mlcanopy_type
R 2616 5 413 mlcanopyfluxestype etveg_canopy$o mlcanopy_type
R 2618 5 415 mlcanopyfluxestype etvegsun_canopy mlcanopy_type
R 2620 5 417 mlcanopyfluxestype etvegsun_canopy$sd mlcanopy_type
R 2621 5 418 mlcanopyfluxestype etvegsun_canopy$p mlcanopy_type
R 2622 5 419 mlcanopyfluxestype etvegsun_canopy$o mlcanopy_type
R 2624 5 421 mlcanopyfluxestype etvegsha_canopy mlcanopy_type
R 2626 5 423 mlcanopyfluxestype etvegsha_canopy$sd mlcanopy_type
R 2627 5 424 mlcanopyfluxestype etvegsha_canopy$p mlcanopy_type
R 2628 5 425 mlcanopyfluxestype etvegsha_canopy$o mlcanopy_type
R 2630 5 427 mlcanopyfluxestype trveg_canopy mlcanopy_type
R 2632 5 429 mlcanopyfluxestype trveg_canopy$sd mlcanopy_type
R 2633 5 430 mlcanopyfluxestype trveg_canopy$p mlcanopy_type
R 2634 5 431 mlcanopyfluxestype trveg_canopy$o mlcanopy_type
R 2636 5 433 mlcanopyfluxestype evveg_canopy mlcanopy_type
R 2638 5 435 mlcanopyfluxestype evveg_canopy$sd mlcanopy_type
R 2639 5 436 mlcanopyfluxestype evveg_canopy$p mlcanopy_type
R 2640 5 437 mlcanopyfluxestype evveg_canopy$o mlcanopy_type
R 2642 5 439 mlcanopyfluxestype gppveg_canopy mlcanopy_type
R 2644 5 441 mlcanopyfluxestype gppveg_canopy$sd mlcanopy_type
R 2645 5 442 mlcanopyfluxestype gppveg_canopy$p mlcanopy_type
R 2646 5 443 mlcanopyfluxestype gppveg_canopy$o mlcanopy_type
R 2648 5 445 mlcanopyfluxestype gppvegsun_canopy mlcanopy_type
R 2650 5 447 mlcanopyfluxestype gppvegsun_canopy$sd mlcanopy_type
R 2651 5 448 mlcanopyfluxestype gppvegsun_canopy$p mlcanopy_type
R 2652 5 449 mlcanopyfluxestype gppvegsun_canopy$o mlcanopy_type
R 2654 5 451 mlcanopyfluxestype gppvegsha_canopy mlcanopy_type
R 2656 5 453 mlcanopyfluxestype gppvegsha_canopy$sd mlcanopy_type
R 2657 5 454 mlcanopyfluxestype gppvegsha_canopy$p mlcanopy_type
R 2658 5 455 mlcanopyfluxestype gppvegsha_canopy$o mlcanopy_type
R 2660 5 457 mlcanopyfluxestype vcmax25veg_canopy mlcanopy_type
R 2662 5 459 mlcanopyfluxestype vcmax25veg_canopy$sd mlcanopy_type
R 2663 5 460 mlcanopyfluxestype vcmax25veg_canopy$p mlcanopy_type
R 2664 5 461 mlcanopyfluxestype vcmax25veg_canopy$o mlcanopy_type
R 2666 5 463 mlcanopyfluxestype vcmax25sun_canopy mlcanopy_type
R 2668 5 465 mlcanopyfluxestype vcmax25sun_canopy$sd mlcanopy_type
R 2669 5 466 mlcanopyfluxestype vcmax25sun_canopy$p mlcanopy_type
R 2670 5 467 mlcanopyfluxestype vcmax25sun_canopy$o mlcanopy_type
R 2672 5 469 mlcanopyfluxestype vcmax25sha_canopy mlcanopy_type
R 2674 5 471 mlcanopyfluxestype vcmax25sha_canopy$sd mlcanopy_type
R 2675 5 472 mlcanopyfluxestype vcmax25sha_canopy$p mlcanopy_type
R 2676 5 473 mlcanopyfluxestype vcmax25sha_canopy$o mlcanopy_type
R 2678 5 475 mlcanopyfluxestype gsveg_canopy mlcanopy_type
R 2680 5 477 mlcanopyfluxestype gsveg_canopy$sd mlcanopy_type
R 2681 5 478 mlcanopyfluxestype gsveg_canopy$p mlcanopy_type
R 2682 5 479 mlcanopyfluxestype gsveg_canopy$o mlcanopy_type
R 2684 5 481 mlcanopyfluxestype gsvegsun_canopy mlcanopy_type
R 2686 5 483 mlcanopyfluxestype gsvegsun_canopy$sd mlcanopy_type
R 2687 5 484 mlcanopyfluxestype gsvegsun_canopy$p mlcanopy_type
R 2688 5 485 mlcanopyfluxestype gsvegsun_canopy$o mlcanopy_type
R 2690 5 487 mlcanopyfluxestype gsvegsha_canopy mlcanopy_type
R 2692 5 489 mlcanopyfluxestype gsvegsha_canopy$sd mlcanopy_type
R 2693 5 490 mlcanopyfluxestype gsvegsha_canopy$p mlcanopy_type
R 2694 5 491 mlcanopyfluxestype gsvegsha_canopy$o mlcanopy_type
R 2696 5 493 mlcanopyfluxestype windveg_canopy mlcanopy_type
R 2698 5 495 mlcanopyfluxestype windveg_canopy$sd mlcanopy_type
R 2699 5 496 mlcanopyfluxestype windveg_canopy$p mlcanopy_type
R 2700 5 497 mlcanopyfluxestype windveg_canopy$o mlcanopy_type
R 2702 5 499 mlcanopyfluxestype windvegsun_canopy mlcanopy_type
R 2704 5 501 mlcanopyfluxestype windvegsun_canopy$sd mlcanopy_type
R 2705 5 502 mlcanopyfluxestype windvegsun_canopy$p mlcanopy_type
R 2706 5 503 mlcanopyfluxestype windvegsun_canopy$o mlcanopy_type
R 2708 5 505 mlcanopyfluxestype windvegsha_canopy mlcanopy_type
R 2710 5 507 mlcanopyfluxestype windvegsha_canopy$sd mlcanopy_type
R 2711 5 508 mlcanopyfluxestype windvegsha_canopy$p mlcanopy_type
R 2712 5 509 mlcanopyfluxestype windvegsha_canopy$o mlcanopy_type
R 2714 5 511 mlcanopyfluxestype tlveg_canopy mlcanopy_type
R 2716 5 513 mlcanopyfluxestype tlveg_canopy$sd mlcanopy_type
R 2717 5 514 mlcanopyfluxestype tlveg_canopy$p mlcanopy_type
R 2718 5 515 mlcanopyfluxestype tlveg_canopy$o mlcanopy_type
R 2720 5 517 mlcanopyfluxestype tlvegsun_canopy mlcanopy_type
R 2722 5 519 mlcanopyfluxestype tlvegsun_canopy$sd mlcanopy_type
R 2723 5 520 mlcanopyfluxestype tlvegsun_canopy$p mlcanopy_type
R 2724 5 521 mlcanopyfluxestype tlvegsun_canopy$o mlcanopy_type
R 2726 5 523 mlcanopyfluxestype tlvegsha_canopy mlcanopy_type
R 2728 5 525 mlcanopyfluxestype tlvegsha_canopy$sd mlcanopy_type
R 2729 5 526 mlcanopyfluxestype tlvegsha_canopy$p mlcanopy_type
R 2730 5 527 mlcanopyfluxestype tlvegsha_canopy$o mlcanopy_type
R 2732 5 529 mlcanopyfluxestype taveg_canopy mlcanopy_type
R 2734 5 531 mlcanopyfluxestype taveg_canopy$sd mlcanopy_type
R 2735 5 532 mlcanopyfluxestype taveg_canopy$p mlcanopy_type
R 2736 5 533 mlcanopyfluxestype taveg_canopy$o mlcanopy_type
R 2738 5 535 mlcanopyfluxestype tavegsun_canopy mlcanopy_type
R 2740 5 537 mlcanopyfluxestype tavegsun_canopy$sd mlcanopy_type
R 2741 5 538 mlcanopyfluxestype tavegsun_canopy$p mlcanopy_type
R 2742 5 539 mlcanopyfluxestype tavegsun_canopy$o mlcanopy_type
R 2744 5 541 mlcanopyfluxestype tavegsha_canopy mlcanopy_type
R 2746 5 543 mlcanopyfluxestype tavegsha_canopy$sd mlcanopy_type
R 2747 5 544 mlcanopyfluxestype tavegsha_canopy$p mlcanopy_type
R 2748 5 545 mlcanopyfluxestype tavegsha_canopy$o mlcanopy_type
R 2750 5 547 mlcanopyfluxestype laisun_canopy mlcanopy_type
R 2752 5 549 mlcanopyfluxestype laisun_canopy$sd mlcanopy_type
R 2753 5 550 mlcanopyfluxestype laisun_canopy$p mlcanopy_type
R 2754 5 551 mlcanopyfluxestype laisun_canopy$o mlcanopy_type
R 2756 5 553 mlcanopyfluxestype laisha_canopy mlcanopy_type
R 2758 5 555 mlcanopyfluxestype laisha_canopy$sd mlcanopy_type
R 2759 5 556 mlcanopyfluxestype laisha_canopy$p mlcanopy_type
R 2760 5 557 mlcanopyfluxestype laisha_canopy$o mlcanopy_type
R 2762 5 559 mlcanopyfluxestype albcan_canopy mlcanopy_type
R 2765 5 562 mlcanopyfluxestype albcan_canopy$sd mlcanopy_type
R 2766 5 563 mlcanopyfluxestype albcan_canopy$p mlcanopy_type
R 2767 5 564 mlcanopyfluxestype albcan_canopy$o mlcanopy_type
R 2769 5 566 mlcanopyfluxestype lwup_canopy mlcanopy_type
R 2771 5 568 mlcanopyfluxestype lwup_canopy$sd mlcanopy_type
R 2772 5 569 mlcanopyfluxestype lwup_canopy$p mlcanopy_type
R 2773 5 570 mlcanopyfluxestype lwup_canopy$o mlcanopy_type
R 2775 5 572 mlcanopyfluxestype rnet_canopy mlcanopy_type
R 2777 5 574 mlcanopyfluxestype rnet_canopy$sd mlcanopy_type
R 2778 5 575 mlcanopyfluxestype rnet_canopy$p mlcanopy_type
R 2779 5 576 mlcanopyfluxestype rnet_canopy$o mlcanopy_type
R 2781 5 578 mlcanopyfluxestype shflx_canopy mlcanopy_type
R 2783 5 580 mlcanopyfluxestype shflx_canopy$sd mlcanopy_type
R 2784 5 581 mlcanopyfluxestype shflx_canopy$p mlcanopy_type
R 2785 5 582 mlcanopyfluxestype shflx_canopy$o mlcanopy_type
R 2787 5 584 mlcanopyfluxestype lhflx_canopy mlcanopy_type
R 2789 5 586 mlcanopyfluxestype lhflx_canopy$sd mlcanopy_type
R 2790 5 587 mlcanopyfluxestype lhflx_canopy$p mlcanopy_type
R 2791 5 588 mlcanopyfluxestype lhflx_canopy$o mlcanopy_type
R 2793 5 590 mlcanopyfluxestype etflx_canopy mlcanopy_type
R 2795 5 592 mlcanopyfluxestype etflx_canopy$sd mlcanopy_type
R 2796 5 593 mlcanopyfluxestype etflx_canopy$p mlcanopy_type
R 2797 5 594 mlcanopyfluxestype etflx_canopy$o mlcanopy_type
R 2799 5 596 mlcanopyfluxestype stflx_air_canopy mlcanopy_type
R 2801 5 598 mlcanopyfluxestype stflx_air_canopy$sd mlcanopy_type
R 2802 5 599 mlcanopyfluxestype stflx_air_canopy$p mlcanopy_type
R 2803 5 600 mlcanopyfluxestype stflx_air_canopy$o mlcanopy_type
R 2805 5 602 mlcanopyfluxestype stflx_veg_canopy mlcanopy_type
R 2807 5 604 mlcanopyfluxestype stflx_veg_canopy$sd mlcanopy_type
R 2808 5 605 mlcanopyfluxestype stflx_veg_canopy$p mlcanopy_type
R 2809 5 606 mlcanopyfluxestype stflx_veg_canopy$o mlcanopy_type
R 2811 5 608 mlcanopyfluxestype ustar_canopy mlcanopy_type
R 2813 5 610 mlcanopyfluxestype ustar_canopy$sd mlcanopy_type
R 2814 5 611 mlcanopyfluxestype ustar_canopy$p mlcanopy_type
R 2815 5 612 mlcanopyfluxestype ustar_canopy$o mlcanopy_type
R 2817 5 614 mlcanopyfluxestype gac_to_hc_canopy mlcanopy_type
R 2819 5 616 mlcanopyfluxestype gac_to_hc_canopy$sd mlcanopy_type
R 2820 5 617 mlcanopyfluxestype gac_to_hc_canopy$p mlcanopy_type
R 2821 5 618 mlcanopyfluxestype gac_to_hc_canopy$o mlcanopy_type
R 2823 5 620 mlcanopyfluxestype qflx_intr_canopy mlcanopy_type
R 2825 5 622 mlcanopyfluxestype qflx_intr_canopy$sd mlcanopy_type
R 2826 5 623 mlcanopyfluxestype qflx_intr_canopy$p mlcanopy_type
R 2827 5 624 mlcanopyfluxestype qflx_intr_canopy$o mlcanopy_type
R 2829 5 626 mlcanopyfluxestype qflx_tflrain_canopy mlcanopy_type
R 2831 5 628 mlcanopyfluxestype qflx_tflrain_canopy$sd mlcanopy_type
R 2832 5 629 mlcanopyfluxestype qflx_tflrain_canopy$p mlcanopy_type
R 2833 5 630 mlcanopyfluxestype qflx_tflrain_canopy$o mlcanopy_type
R 2835 5 632 mlcanopyfluxestype qflx_tflsnow_canopy mlcanopy_type
R 2837 5 634 mlcanopyfluxestype qflx_tflsnow_canopy$sd mlcanopy_type
R 2838 5 635 mlcanopyfluxestype qflx_tflsnow_canopy$p mlcanopy_type
R 2839 5 636 mlcanopyfluxestype qflx_tflsnow_canopy$o mlcanopy_type
R 2841 5 638 mlcanopyfluxestype uaf_canopy mlcanopy_type
R 2843 5 640 mlcanopyfluxestype uaf_canopy$sd mlcanopy_type
R 2844 5 641 mlcanopyfluxestype uaf_canopy$p mlcanopy_type
R 2845 5 642 mlcanopyfluxestype uaf_canopy$o mlcanopy_type
R 2847 5 644 mlcanopyfluxestype taf_canopy mlcanopy_type
R 2849 5 646 mlcanopyfluxestype taf_canopy$sd mlcanopy_type
R 2850 5 647 mlcanopyfluxestype taf_canopy$p mlcanopy_type
R 2851 5 648 mlcanopyfluxestype taf_canopy$o mlcanopy_type
R 2853 5 650 mlcanopyfluxestype qaf_canopy mlcanopy_type
R 2855 5 652 mlcanopyfluxestype qaf_canopy$sd mlcanopy_type
R 2856 5 653 mlcanopyfluxestype qaf_canopy$p mlcanopy_type
R 2857 5 654 mlcanopyfluxestype qaf_canopy$o mlcanopy_type
R 2859 5 656 mlcanopyfluxestype fracminlwp_canopy mlcanopy_type
R 2861 5 658 mlcanopyfluxestype fracminlwp_canopy$sd mlcanopy_type
R 2862 5 659 mlcanopyfluxestype fracminlwp_canopy$p mlcanopy_type
R 2863 5 660 mlcanopyfluxestype fracminlwp_canopy$o mlcanopy_type
R 2865 5 662 mlcanopyfluxestype obu_canopy mlcanopy_type
R 2867 5 664 mlcanopyfluxestype obu_canopy$sd mlcanopy_type
R 2868 5 665 mlcanopyfluxestype obu_canopy$p mlcanopy_type
R 2869 5 666 mlcanopyfluxestype obu_canopy$o mlcanopy_type
R 2871 5 668 mlcanopyfluxestype beta_canopy mlcanopy_type
R 2873 5 670 mlcanopyfluxestype beta_canopy$sd mlcanopy_type
R 2874 5 671 mlcanopyfluxestype beta_canopy$p mlcanopy_type
R 2875 5 672 mlcanopyfluxestype beta_canopy$o mlcanopy_type
R 2877 5 674 mlcanopyfluxestype prsc_canopy mlcanopy_type
R 2879 5 676 mlcanopyfluxestype prsc_canopy$sd mlcanopy_type
R 2880 5 677 mlcanopyfluxestype prsc_canopy$p mlcanopy_type
R 2881 5 678 mlcanopyfluxestype prsc_canopy$o mlcanopy_type
R 2883 5 680 mlcanopyfluxestype lc_canopy mlcanopy_type
R 2885 5 682 mlcanopyfluxestype lc_canopy$sd mlcanopy_type
R 2886 5 683 mlcanopyfluxestype lc_canopy$p mlcanopy_type
R 2887 5 684 mlcanopyfluxestype lc_canopy$o mlcanopy_type
R 2889 5 686 mlcanopyfluxestype zdisp_canopy mlcanopy_type
R 2891 5 688 mlcanopyfluxestype zdisp_canopy$sd mlcanopy_type
R 2892 5 689 mlcanopyfluxestype zdisp_canopy$p mlcanopy_type
R 2893 5 690 mlcanopyfluxestype zdisp_canopy$o mlcanopy_type
R 2895 5 692 mlcanopyfluxestype z0m_canopy mlcanopy_type
R 2897 5 694 mlcanopyfluxestype z0m_canopy$sd mlcanopy_type
R 2898 5 695 mlcanopyfluxestype z0m_canopy$p mlcanopy_type
R 2899 5 696 mlcanopyfluxestype z0m_canopy$o mlcanopy_type
R 2901 5 698 mlcanopyfluxestype g0_canopy mlcanopy_type
R 2903 5 700 mlcanopyfluxestype g0_canopy$sd mlcanopy_type
R 2904 5 701 mlcanopyfluxestype g0_canopy$p mlcanopy_type
R 2905 5 702 mlcanopyfluxestype g0_canopy$o mlcanopy_type
R 2907 5 704 mlcanopyfluxestype g1_canopy mlcanopy_type
R 2909 5 706 mlcanopyfluxestype g1_canopy$sd mlcanopy_type
R 2910 5 707 mlcanopyfluxestype g1_canopy$p mlcanopy_type
R 2911 5 708 mlcanopyfluxestype g1_canopy$o mlcanopy_type
R 2913 5 710 mlcanopyfluxestype albsoib_soil mlcanopy_type
R 2916 5 713 mlcanopyfluxestype albsoib_soil$sd mlcanopy_type
R 2917 5 714 mlcanopyfluxestype albsoib_soil$p mlcanopy_type
R 2918 5 715 mlcanopyfluxestype albsoib_soil$o mlcanopy_type
R 2920 5 717 mlcanopyfluxestype albsoid_soil mlcanopy_type
R 2923 5 720 mlcanopyfluxestype albsoid_soil$sd mlcanopy_type
R 2924 5 721 mlcanopyfluxestype albsoid_soil$p mlcanopy_type
R 2925 5 722 mlcanopyfluxestype albsoid_soil$o mlcanopy_type
R 2927 5 724 mlcanopyfluxestype swsoi_soil mlcanopy_type
R 2930 5 727 mlcanopyfluxestype swsoi_soil$sd mlcanopy_type
R 2931 5 728 mlcanopyfluxestype swsoi_soil$p mlcanopy_type
R 2932 5 729 mlcanopyfluxestype swsoi_soil$o mlcanopy_type
R 2934 5 731 mlcanopyfluxestype lwsoi_soil mlcanopy_type
R 2936 5 733 mlcanopyfluxestype lwsoi_soil$sd mlcanopy_type
R 2937 5 734 mlcanopyfluxestype lwsoi_soil$p mlcanopy_type
R 2938 5 735 mlcanopyfluxestype lwsoi_soil$o mlcanopy_type
R 2940 5 737 mlcanopyfluxestype rnsoi_soil mlcanopy_type
R 2942 5 739 mlcanopyfluxestype rnsoi_soil$sd mlcanopy_type
R 2943 5 740 mlcanopyfluxestype rnsoi_soil$p mlcanopy_type
R 2944 5 741 mlcanopyfluxestype rnsoi_soil$o mlcanopy_type
R 2946 5 743 mlcanopyfluxestype shsoi_soil mlcanopy_type
R 2948 5 745 mlcanopyfluxestype shsoi_soil$sd mlcanopy_type
R 2949 5 746 mlcanopyfluxestype shsoi_soil$p mlcanopy_type
R 2950 5 747 mlcanopyfluxestype shsoi_soil$o mlcanopy_type
R 2952 5 749 mlcanopyfluxestype lhsoi_soil mlcanopy_type
R 2954 5 751 mlcanopyfluxestype lhsoi_soil$sd mlcanopy_type
R 2955 5 752 mlcanopyfluxestype lhsoi_soil$p mlcanopy_type
R 2956 5 753 mlcanopyfluxestype lhsoi_soil$o mlcanopy_type
R 2958 5 755 mlcanopyfluxestype etsoi_soil mlcanopy_type
R 2960 5 757 mlcanopyfluxestype etsoi_soil$sd mlcanopy_type
R 2961 5 758 mlcanopyfluxestype etsoi_soil$p mlcanopy_type
R 2962 5 759 mlcanopyfluxestype etsoi_soil$o mlcanopy_type
R 2964 5 761 mlcanopyfluxestype gsoi_soil mlcanopy_type
R 2966 5 763 mlcanopyfluxestype gsoi_soil$sd mlcanopy_type
R 2967 5 764 mlcanopyfluxestype gsoi_soil$p mlcanopy_type
R 2968 5 765 mlcanopyfluxestype gsoi_soil$o mlcanopy_type
R 2970 5 767 mlcanopyfluxestype tg_soil mlcanopy_type
R 2972 5 769 mlcanopyfluxestype tg_soil$sd mlcanopy_type
R 2973 5 770 mlcanopyfluxestype tg_soil$p mlcanopy_type
R 2974 5 771 mlcanopyfluxestype tg_soil$o mlcanopy_type
R 2976 5 773 mlcanopyfluxestype tg_bef_soil mlcanopy_type
R 2978 5 775 mlcanopyfluxestype tg_bef_soil$sd mlcanopy_type
R 2979 5 776 mlcanopyfluxestype tg_bef_soil$p mlcanopy_type
R 2980 5 777 mlcanopyfluxestype tg_bef_soil$o mlcanopy_type
R 2982 5 779 mlcanopyfluxestype dtg_soil mlcanopy_type
R 2985 5 782 mlcanopyfluxestype dtg_soil$sd mlcanopy_type
R 2986 5 783 mlcanopyfluxestype dtg_soil$p mlcanopy_type
R 2987 5 784 mlcanopyfluxestype dtg_soil$o mlcanopy_type
R 2989 5 786 mlcanopyfluxestype eg_soil mlcanopy_type
R 2991 5 788 mlcanopyfluxestype eg_soil$sd mlcanopy_type
R 2992 5 789 mlcanopyfluxestype eg_soil$p mlcanopy_type
R 2993 5 790 mlcanopyfluxestype eg_soil$o mlcanopy_type
R 2995 5 792 mlcanopyfluxestype rhg_soil mlcanopy_type
R 2997 5 794 mlcanopyfluxestype rhg_soil$sd mlcanopy_type
R 2998 5 795 mlcanopyfluxestype rhg_soil$p mlcanopy_type
R 2999 5 796 mlcanopyfluxestype rhg_soil$o mlcanopy_type
R 3001 5 798 mlcanopyfluxestype gac0_soil mlcanopy_type
R 3003 5 800 mlcanopyfluxestype gac0_soil$sd mlcanopy_type
R 3004 5 801 mlcanopyfluxestype gac0_soil$p mlcanopy_type
R 3005 5 802 mlcanopyfluxestype gac0_soil$o mlcanopy_type
R 3007 5 804 mlcanopyfluxestype soil_t_soil mlcanopy_type
R 3009 5 806 mlcanopyfluxestype soil_t_soil$sd mlcanopy_type
R 3010 5 807 mlcanopyfluxestype soil_t_soil$p mlcanopy_type
R 3011 5 808 mlcanopyfluxestype soil_t_soil$o mlcanopy_type
R 3013 5 810 mlcanopyfluxestype soil_dz_soil mlcanopy_type
R 3015 5 812 mlcanopyfluxestype soil_dz_soil$sd mlcanopy_type
R 3016 5 813 mlcanopyfluxestype soil_dz_soil$p mlcanopy_type
R 3017 5 814 mlcanopyfluxestype soil_dz_soil$o mlcanopy_type
R 3019 5 816 mlcanopyfluxestype soil_tk_soil mlcanopy_type
R 3021 5 818 mlcanopyfluxestype soil_tk_soil$sd mlcanopy_type
R 3022 5 819 mlcanopyfluxestype soil_tk_soil$p mlcanopy_type
R 3023 5 820 mlcanopyfluxestype soil_tk_soil$o mlcanopy_type
R 3025 5 822 mlcanopyfluxestype soilres_soil mlcanopy_type
R 3027 5 824 mlcanopyfluxestype soilres_soil$sd mlcanopy_type
R 3028 5 825 mlcanopyfluxestype soilres_soil$p mlcanopy_type
R 3029 5 826 mlcanopyfluxestype soilres_soil$o mlcanopy_type
R 3031 5 828 mlcanopyfluxestype btran_soil mlcanopy_type
R 3033 5 830 mlcanopyfluxestype btran_soil$sd mlcanopy_type
R 3034 5 831 mlcanopyfluxestype btran_soil$p mlcanopy_type
R 3035 5 832 mlcanopyfluxestype btran_soil$o mlcanopy_type
R 3037 5 834 mlcanopyfluxestype psis_soil mlcanopy_type
R 3039 5 836 mlcanopyfluxestype psis_soil$sd mlcanopy_type
R 3040 5 837 mlcanopyfluxestype psis_soil$p mlcanopy_type
R 3041 5 838 mlcanopyfluxestype psis_soil$o mlcanopy_type
R 3043 5 840 mlcanopyfluxestype rsoil_soil mlcanopy_type
R 3045 5 842 mlcanopyfluxestype rsoil_soil$sd mlcanopy_type
R 3046 5 843 mlcanopyfluxestype rsoil_soil$p mlcanopy_type
R 3047 5 844 mlcanopyfluxestype rsoil_soil$o mlcanopy_type
R 3049 5 846 mlcanopyfluxestype soil_et_loss_soil mlcanopy_type
R 3052 5 849 mlcanopyfluxestype soil_et_loss_soil$sd mlcanopy_type
R 3053 5 850 mlcanopyfluxestype soil_et_loss_soil$p mlcanopy_type
R 3054 5 851 mlcanopyfluxestype soil_et_loss_soil$o mlcanopy_type
R 3056 5 853 mlcanopyfluxestype ncan_canopy mlcanopy_type
R 3058 5 855 mlcanopyfluxestype ncan_canopy$sd mlcanopy_type
R 3059 5 856 mlcanopyfluxestype ncan_canopy$p mlcanopy_type
R 3060 5 857 mlcanopyfluxestype ncan_canopy$o mlcanopy_type
R 3062 5 859 mlcanopyfluxestype ntop_canopy mlcanopy_type
R 3064 5 861 mlcanopyfluxestype ntop_canopy$sd mlcanopy_type
R 3065 5 862 mlcanopyfluxestype ntop_canopy$p mlcanopy_type
R 3066 5 863 mlcanopyfluxestype ntop_canopy$o mlcanopy_type
R 3068 5 865 mlcanopyfluxestype nbot_canopy mlcanopy_type
R 3070 5 867 mlcanopyfluxestype nbot_canopy$sd mlcanopy_type
R 3071 5 868 mlcanopyfluxestype nbot_canopy$p mlcanopy_type
R 3072 5 869 mlcanopyfluxestype nbot_canopy$o mlcanopy_type
R 3074 5 871 mlcanopyfluxestype dlai_frac_profile mlcanopy_type
R 3077 5 874 mlcanopyfluxestype dlai_frac_profile$sd mlcanopy_type
R 3078 5 875 mlcanopyfluxestype dlai_frac_profile$p mlcanopy_type
R 3079 5 876 mlcanopyfluxestype dlai_frac_profile$o mlcanopy_type
R 3081 5 878 mlcanopyfluxestype dsai_frac_profile mlcanopy_type
R 3084 5 881 mlcanopyfluxestype dsai_frac_profile$sd mlcanopy_type
R 3085 5 882 mlcanopyfluxestype dsai_frac_profile$p mlcanopy_type
R 3086 5 883 mlcanopyfluxestype dsai_frac_profile$o mlcanopy_type
R 3088 5 885 mlcanopyfluxestype dlai_profile mlcanopy_type
R 3091 5 888 mlcanopyfluxestype dlai_profile$sd mlcanopy_type
R 3092 5 889 mlcanopyfluxestype dlai_profile$p mlcanopy_type
R 3093 5 890 mlcanopyfluxestype dlai_profile$o mlcanopy_type
R 3095 5 892 mlcanopyfluxestype dsai_profile mlcanopy_type
R 3098 5 895 mlcanopyfluxestype dsai_profile$sd mlcanopy_type
R 3099 5 896 mlcanopyfluxestype dsai_profile$p mlcanopy_type
R 3100 5 897 mlcanopyfluxestype dsai_profile$o mlcanopy_type
R 3102 5 899 mlcanopyfluxestype dpai_profile mlcanopy_type
R 3105 5 902 mlcanopyfluxestype dpai_profile$sd mlcanopy_type
R 3106 5 903 mlcanopyfluxestype dpai_profile$p mlcanopy_type
R 3107 5 904 mlcanopyfluxestype dpai_profile$o mlcanopy_type
R 3109 5 906 mlcanopyfluxestype zs_profile mlcanopy_type
R 3112 5 909 mlcanopyfluxestype zs_profile$sd mlcanopy_type
R 3113 5 910 mlcanopyfluxestype zs_profile$p mlcanopy_type
R 3114 5 911 mlcanopyfluxestype zs_profile$o mlcanopy_type
R 3116 5 913 mlcanopyfluxestype zw_profile mlcanopy_type
R 3119 5 916 mlcanopyfluxestype zw_profile$sd mlcanopy_type
R 3120 5 917 mlcanopyfluxestype zw_profile$p mlcanopy_type
R 3121 5 918 mlcanopyfluxestype zw_profile$o mlcanopy_type
R 3123 5 920 mlcanopyfluxestype dz_profile mlcanopy_type
R 3126 5 923 mlcanopyfluxestype dz_profile$sd mlcanopy_type
R 3127 5 924 mlcanopyfluxestype dz_profile$p mlcanopy_type
R 3128 5 925 mlcanopyfluxestype dz_profile$o mlcanopy_type
R 3130 5 927 mlcanopyfluxestype vcmax25_profile mlcanopy_type
R 3133 5 930 mlcanopyfluxestype vcmax25_profile$sd mlcanopy_type
R 3134 5 931 mlcanopyfluxestype vcmax25_profile$p mlcanopy_type
R 3135 5 932 mlcanopyfluxestype vcmax25_profile$o mlcanopy_type
R 3137 5 934 mlcanopyfluxestype jmax25_profile mlcanopy_type
R 3140 5 937 mlcanopyfluxestype jmax25_profile$sd mlcanopy_type
R 3141 5 938 mlcanopyfluxestype jmax25_profile$p mlcanopy_type
R 3142 5 939 mlcanopyfluxestype jmax25_profile$o mlcanopy_type
R 3144 5 941 mlcanopyfluxestype kp25_profile mlcanopy_type
R 3147 5 944 mlcanopyfluxestype kp25_profile$sd mlcanopy_type
R 3148 5 945 mlcanopyfluxestype kp25_profile$p mlcanopy_type
R 3149 5 946 mlcanopyfluxestype kp25_profile$o mlcanopy_type
R 3151 5 948 mlcanopyfluxestype rd25_profile mlcanopy_type
R 3154 5 951 mlcanopyfluxestype rd25_profile$sd mlcanopy_type
R 3155 5 952 mlcanopyfluxestype rd25_profile$p mlcanopy_type
R 3156 5 953 mlcanopyfluxestype rd25_profile$o mlcanopy_type
R 3158 5 955 mlcanopyfluxestype cpleaf_profile mlcanopy_type
R 3161 5 958 mlcanopyfluxestype cpleaf_profile$sd mlcanopy_type
R 3162 5 959 mlcanopyfluxestype cpleaf_profile$p mlcanopy_type
R 3163 5 960 mlcanopyfluxestype cpleaf_profile$o mlcanopy_type
R 3165 5 962 mlcanopyfluxestype fracsun_profile mlcanopy_type
R 3168 5 965 mlcanopyfluxestype fracsun_profile$sd mlcanopy_type
R 3169 5 966 mlcanopyfluxestype fracsun_profile$p mlcanopy_type
R 3170 5 967 mlcanopyfluxestype fracsun_profile$o mlcanopy_type
R 3172 5 969 mlcanopyfluxestype kb_profile mlcanopy_type
R 3175 5 972 mlcanopyfluxestype kb_profile$sd mlcanopy_type
R 3176 5 973 mlcanopyfluxestype kb_profile$p mlcanopy_type
R 3177 5 974 mlcanopyfluxestype kb_profile$o mlcanopy_type
R 3179 5 976 mlcanopyfluxestype tb_profile mlcanopy_type
R 3182 5 979 mlcanopyfluxestype tb_profile$sd mlcanopy_type
R 3183 5 980 mlcanopyfluxestype tb_profile$p mlcanopy_type
R 3184 5 981 mlcanopyfluxestype tb_profile$o mlcanopy_type
R 3186 5 983 mlcanopyfluxestype td_profile mlcanopy_type
R 3189 5 986 mlcanopyfluxestype td_profile$sd mlcanopy_type
R 3190 5 987 mlcanopyfluxestype td_profile$p mlcanopy_type
R 3191 5 988 mlcanopyfluxestype td_profile$o mlcanopy_type
R 3193 5 990 mlcanopyfluxestype tbi_profile mlcanopy_type
R 3196 5 993 mlcanopyfluxestype tbi_profile$sd mlcanopy_type
R 3197 5 994 mlcanopyfluxestype tbi_profile$p mlcanopy_type
R 3198 5 995 mlcanopyfluxestype tbi_profile$o mlcanopy_type
R 3200 5 997 mlcanopyfluxestype swbeam_profile mlcanopy_type
R 3204 5 1001 mlcanopyfluxestype swbeam_profile$sd mlcanopy_type
R 3205 5 1002 mlcanopyfluxestype swbeam_profile$p mlcanopy_type
R 3206 5 1003 mlcanopyfluxestype swbeam_profile$o mlcanopy_type
R 3208 5 1005 mlcanopyfluxestype swupw_profile mlcanopy_type
R 3212 5 1009 mlcanopyfluxestype swupw_profile$sd mlcanopy_type
R 3213 5 1010 mlcanopyfluxestype swupw_profile$p mlcanopy_type
R 3214 5 1011 mlcanopyfluxestype swupw_profile$o mlcanopy_type
R 3216 5 1013 mlcanopyfluxestype swdwn_profile mlcanopy_type
R 3220 5 1017 mlcanopyfluxestype swdwn_profile$sd mlcanopy_type
R 3221 5 1018 mlcanopyfluxestype swdwn_profile$p mlcanopy_type
R 3222 5 1019 mlcanopyfluxestype swdwn_profile$o mlcanopy_type
R 3224 5 1021 mlcanopyfluxestype lwupw_profile mlcanopy_type
R 3227 5 1024 mlcanopyfluxestype lwupw_profile$sd mlcanopy_type
R 3228 5 1025 mlcanopyfluxestype lwupw_profile$p mlcanopy_type
R 3229 5 1026 mlcanopyfluxestype lwupw_profile$o mlcanopy_type
R 3231 5 1028 mlcanopyfluxestype lwdwn_profile mlcanopy_type
R 3234 5 1031 mlcanopyfluxestype lwdwn_profile$sd mlcanopy_type
R 3235 5 1032 mlcanopyfluxestype lwdwn_profile$p mlcanopy_type
R 3236 5 1033 mlcanopyfluxestype lwdwn_profile$o mlcanopy_type
R 3238 5 1035 mlcanopyfluxestype swsrc_profile mlcanopy_type
R 3242 5 1039 mlcanopyfluxestype swsrc_profile$sd mlcanopy_type
R 3243 5 1040 mlcanopyfluxestype swsrc_profile$p mlcanopy_type
R 3244 5 1041 mlcanopyfluxestype swsrc_profile$o mlcanopy_type
R 3246 5 1043 mlcanopyfluxestype lwsrc_profile mlcanopy_type
R 3249 5 1046 mlcanopyfluxestype lwsrc_profile$sd mlcanopy_type
R 3250 5 1047 mlcanopyfluxestype lwsrc_profile$p mlcanopy_type
R 3251 5 1048 mlcanopyfluxestype lwsrc_profile$o mlcanopy_type
R 3253 5 1050 mlcanopyfluxestype rnsrc_profile mlcanopy_type
R 3256 5 1053 mlcanopyfluxestype rnsrc_profile$sd mlcanopy_type
R 3257 5 1054 mlcanopyfluxestype rnsrc_profile$p mlcanopy_type
R 3258 5 1055 mlcanopyfluxestype rnsrc_profile$o mlcanopy_type
R 3260 5 1057 mlcanopyfluxestype stsrc_profile mlcanopy_type
R 3263 5 1060 mlcanopyfluxestype stsrc_profile$sd mlcanopy_type
R 3264 5 1061 mlcanopyfluxestype stsrc_profile$p mlcanopy_type
R 3265 5 1062 mlcanopyfluxestype stsrc_profile$o mlcanopy_type
R 3267 5 1064 mlcanopyfluxestype shsrc_profile mlcanopy_type
R 3270 5 1067 mlcanopyfluxestype shsrc_profile$sd mlcanopy_type
R 3271 5 1068 mlcanopyfluxestype shsrc_profile$p mlcanopy_type
R 3272 5 1069 mlcanopyfluxestype shsrc_profile$o mlcanopy_type
R 3274 5 1071 mlcanopyfluxestype lhsrc_profile mlcanopy_type
R 3277 5 1074 mlcanopyfluxestype lhsrc_profile$sd mlcanopy_type
R 3278 5 1075 mlcanopyfluxestype lhsrc_profile$p mlcanopy_type
R 3279 5 1076 mlcanopyfluxestype lhsrc_profile$o mlcanopy_type
R 3281 5 1078 mlcanopyfluxestype etsrc_profile mlcanopy_type
R 3284 5 1081 mlcanopyfluxestype etsrc_profile$sd mlcanopy_type
R 3285 5 1082 mlcanopyfluxestype etsrc_profile$p mlcanopy_type
R 3286 5 1083 mlcanopyfluxestype etsrc_profile$o mlcanopy_type
R 3288 5 1085 mlcanopyfluxestype trsrc_profile mlcanopy_type
R 3291 5 1088 mlcanopyfluxestype trsrc_profile$sd mlcanopy_type
R 3292 5 1089 mlcanopyfluxestype trsrc_profile$p mlcanopy_type
R 3293 5 1090 mlcanopyfluxestype trsrc_profile$o mlcanopy_type
R 3295 5 1092 mlcanopyfluxestype evsrc_profile mlcanopy_type
R 3298 5 1095 mlcanopyfluxestype evsrc_profile$sd mlcanopy_type
R 3299 5 1096 mlcanopyfluxestype evsrc_profile$p mlcanopy_type
R 3300 5 1097 mlcanopyfluxestype evsrc_profile$o mlcanopy_type
R 3302 5 1099 mlcanopyfluxestype fco2src_profile mlcanopy_type
R 3305 5 1102 mlcanopyfluxestype fco2src_profile$sd mlcanopy_type
R 3306 5 1103 mlcanopyfluxestype fco2src_profile$p mlcanopy_type
R 3307 5 1104 mlcanopyfluxestype fco2src_profile$o mlcanopy_type
R 3309 5 1106 mlcanopyfluxestype wind_profile mlcanopy_type
R 3312 5 1109 mlcanopyfluxestype wind_profile$sd mlcanopy_type
R 3313 5 1110 mlcanopyfluxestype wind_profile$p mlcanopy_type
R 3314 5 1111 mlcanopyfluxestype wind_profile$o mlcanopy_type
R 3316 5 1113 mlcanopyfluxestype tair_profile mlcanopy_type
R 3319 5 1116 mlcanopyfluxestype tair_profile$sd mlcanopy_type
R 3320 5 1117 mlcanopyfluxestype tair_profile$p mlcanopy_type
R 3321 5 1118 mlcanopyfluxestype tair_profile$o mlcanopy_type
R 3323 5 1120 mlcanopyfluxestype eair_profile mlcanopy_type
R 3326 5 1123 mlcanopyfluxestype eair_profile$sd mlcanopy_type
R 3327 5 1124 mlcanopyfluxestype eair_profile$p mlcanopy_type
R 3328 5 1125 mlcanopyfluxestype eair_profile$o mlcanopy_type
R 3330 5 1127 mlcanopyfluxestype cair_profile mlcanopy_type
R 3333 5 1130 mlcanopyfluxestype cair_profile$sd mlcanopy_type
R 3334 5 1131 mlcanopyfluxestype cair_profile$p mlcanopy_type
R 3335 5 1132 mlcanopyfluxestype cair_profile$o mlcanopy_type
R 3337 5 1134 mlcanopyfluxestype tair_bef_profile mlcanopy_type
R 3340 5 1137 mlcanopyfluxestype tair_bef_profile$sd mlcanopy_type
R 3341 5 1138 mlcanopyfluxestype tair_bef_profile$p mlcanopy_type
R 3342 5 1139 mlcanopyfluxestype tair_bef_profile$o mlcanopy_type
R 3344 5 1141 mlcanopyfluxestype eair_bef_profile mlcanopy_type
R 3347 5 1144 mlcanopyfluxestype eair_bef_profile$sd mlcanopy_type
R 3348 5 1145 mlcanopyfluxestype eair_bef_profile$p mlcanopy_type
R 3349 5 1146 mlcanopyfluxestype eair_bef_profile$o mlcanopy_type
R 3351 5 1148 mlcanopyfluxestype cair_bef_profile mlcanopy_type
R 3354 5 1151 mlcanopyfluxestype cair_bef_profile$sd mlcanopy_type
R 3355 5 1152 mlcanopyfluxestype cair_bef_profile$p mlcanopy_type
R 3356 5 1153 mlcanopyfluxestype cair_bef_profile$o mlcanopy_type
R 3358 5 1155 mlcanopyfluxestype dtair_profile mlcanopy_type
R 3362 5 1159 mlcanopyfluxestype dtair_profile$sd mlcanopy_type
R 3363 5 1160 mlcanopyfluxestype dtair_profile$p mlcanopy_type
R 3364 5 1161 mlcanopyfluxestype dtair_profile$o mlcanopy_type
R 3366 5 1163 mlcanopyfluxestype deair_profile mlcanopy_type
R 3370 5 1167 mlcanopyfluxestype deair_profile$sd mlcanopy_type
R 3371 5 1168 mlcanopyfluxestype deair_profile$p mlcanopy_type
R 3372 5 1169 mlcanopyfluxestype deair_profile$o mlcanopy_type
R 3374 5 1171 mlcanopyfluxestype wind_data_profile mlcanopy_type
R 3377 5 1174 mlcanopyfluxestype wind_data_profile$sd mlcanopy_type
R 3378 5 1175 mlcanopyfluxestype wind_data_profile$p mlcanopy_type
R 3379 5 1176 mlcanopyfluxestype wind_data_profile$o mlcanopy_type
R 3381 5 1178 mlcanopyfluxestype tair_data_profile mlcanopy_type
R 3384 5 1181 mlcanopyfluxestype tair_data_profile$sd mlcanopy_type
R 3385 5 1182 mlcanopyfluxestype tair_data_profile$p mlcanopy_type
R 3386 5 1183 mlcanopyfluxestype tair_data_profile$o mlcanopy_type
R 3388 5 1185 mlcanopyfluxestype eair_data_profile mlcanopy_type
R 3391 5 1188 mlcanopyfluxestype eair_data_profile$sd mlcanopy_type
R 3392 5 1189 mlcanopyfluxestype eair_data_profile$p mlcanopy_type
R 3393 5 1190 mlcanopyfluxestype eair_data_profile$o mlcanopy_type
R 3395 5 1192 mlcanopyfluxestype shair_profile mlcanopy_type
R 3398 5 1195 mlcanopyfluxestype shair_profile$sd mlcanopy_type
R 3399 5 1196 mlcanopyfluxestype shair_profile$p mlcanopy_type
R 3400 5 1197 mlcanopyfluxestype shair_profile$o mlcanopy_type
R 3402 5 1199 mlcanopyfluxestype etair_profile mlcanopy_type
R 3405 5 1202 mlcanopyfluxestype etair_profile$sd mlcanopy_type
R 3406 5 1203 mlcanopyfluxestype etair_profile$p mlcanopy_type
R 3407 5 1204 mlcanopyfluxestype etair_profile$o mlcanopy_type
R 3409 5 1206 mlcanopyfluxestype stair_profile mlcanopy_type
R 3412 5 1209 mlcanopyfluxestype stair_profile$sd mlcanopy_type
R 3413 5 1210 mlcanopyfluxestype stair_profile$p mlcanopy_type
R 3414 5 1211 mlcanopyfluxestype stair_profile$o mlcanopy_type
R 3416 5 1213 mlcanopyfluxestype mflx_profile mlcanopy_type
R 3419 5 1216 mlcanopyfluxestype mflx_profile$sd mlcanopy_type
R 3420 5 1217 mlcanopyfluxestype mflx_profile$p mlcanopy_type
R 3421 5 1218 mlcanopyfluxestype mflx_profile$o mlcanopy_type
R 3423 5 1220 mlcanopyfluxestype gac_profile mlcanopy_type
R 3426 5 1223 mlcanopyfluxestype gac_profile$sd mlcanopy_type
R 3427 5 1224 mlcanopyfluxestype gac_profile$p mlcanopy_type
R 3428 5 1225 mlcanopyfluxestype gac_profile$o mlcanopy_type
R 3430 5 1227 mlcanopyfluxestype kc_eddy_profile mlcanopy_type
R 3433 5 1230 mlcanopyfluxestype kc_eddy_profile$sd mlcanopy_type
R 3434 5 1231 mlcanopyfluxestype kc_eddy_profile$p mlcanopy_type
R 3435 5 1232 mlcanopyfluxestype kc_eddy_profile$o mlcanopy_type
R 3437 5 1234 mlcanopyfluxestype swleaf_mean_profile mlcanopy_type
R 3441 5 1238 mlcanopyfluxestype swleaf_mean_profile$sd mlcanopy_type
R 3442 5 1239 mlcanopyfluxestype swleaf_mean_profile$p mlcanopy_type
R 3443 5 1240 mlcanopyfluxestype swleaf_mean_profile$o mlcanopy_type
R 3445 5 1242 mlcanopyfluxestype lwleaf_mean_profile mlcanopy_type
R 3448 5 1245 mlcanopyfluxestype lwleaf_mean_profile$sd mlcanopy_type
R 3449 5 1246 mlcanopyfluxestype lwleaf_mean_profile$p mlcanopy_type
R 3450 5 1247 mlcanopyfluxestype lwleaf_mean_profile$o mlcanopy_type
R 3452 5 1249 mlcanopyfluxestype rnleaf_mean_profile mlcanopy_type
R 3455 5 1252 mlcanopyfluxestype rnleaf_mean_profile$sd mlcanopy_type
R 3456 5 1253 mlcanopyfluxestype rnleaf_mean_profile$p mlcanopy_type
R 3457 5 1254 mlcanopyfluxestype rnleaf_mean_profile$o mlcanopy_type
R 3459 5 1256 mlcanopyfluxestype stleaf_mean_profile mlcanopy_type
R 3462 5 1259 mlcanopyfluxestype stleaf_mean_profile$sd mlcanopy_type
R 3463 5 1260 mlcanopyfluxestype stleaf_mean_profile$p mlcanopy_type
R 3464 5 1261 mlcanopyfluxestype stleaf_mean_profile$o mlcanopy_type
R 3466 5 1263 mlcanopyfluxestype shleaf_mean_profile mlcanopy_type
R 3469 5 1266 mlcanopyfluxestype shleaf_mean_profile$sd mlcanopy_type
R 3470 5 1267 mlcanopyfluxestype shleaf_mean_profile$p mlcanopy_type
R 3471 5 1268 mlcanopyfluxestype shleaf_mean_profile$o mlcanopy_type
R 3473 5 1270 mlcanopyfluxestype lhleaf_mean_profile mlcanopy_type
R 3476 5 1273 mlcanopyfluxestype lhleaf_mean_profile$sd mlcanopy_type
R 3477 5 1274 mlcanopyfluxestype lhleaf_mean_profile$p mlcanopy_type
R 3478 5 1275 mlcanopyfluxestype lhleaf_mean_profile$o mlcanopy_type
R 3480 5 1277 mlcanopyfluxestype etleaf_mean_profile mlcanopy_type
R 3483 5 1280 mlcanopyfluxestype etleaf_mean_profile$sd mlcanopy_type
R 3484 5 1281 mlcanopyfluxestype etleaf_mean_profile$p mlcanopy_type
R 3485 5 1282 mlcanopyfluxestype etleaf_mean_profile$o mlcanopy_type
R 3487 5 1284 mlcanopyfluxestype trleaf_mean_profile mlcanopy_type
R 3490 5 1287 mlcanopyfluxestype trleaf_mean_profile$sd mlcanopy_type
R 3491 5 1288 mlcanopyfluxestype trleaf_mean_profile$p mlcanopy_type
R 3492 5 1289 mlcanopyfluxestype trleaf_mean_profile$o mlcanopy_type
R 3494 5 1291 mlcanopyfluxestype evleaf_mean_profile mlcanopy_type
R 3497 5 1294 mlcanopyfluxestype evleaf_mean_profile$sd mlcanopy_type
R 3498 5 1295 mlcanopyfluxestype evleaf_mean_profile$p mlcanopy_type
R 3499 5 1296 mlcanopyfluxestype evleaf_mean_profile$o mlcanopy_type
R 3501 5 1298 mlcanopyfluxestype fco2_mean_profile mlcanopy_type
R 3504 5 1301 mlcanopyfluxestype fco2_mean_profile$sd mlcanopy_type
R 3505 5 1302 mlcanopyfluxestype fco2_mean_profile$p mlcanopy_type
R 3506 5 1303 mlcanopyfluxestype fco2_mean_profile$o mlcanopy_type
R 3508 5 1305 mlcanopyfluxestype apar_mean_profile mlcanopy_type
R 3511 5 1308 mlcanopyfluxestype apar_mean_profile$sd mlcanopy_type
R 3512 5 1309 mlcanopyfluxestype apar_mean_profile$p mlcanopy_type
R 3513 5 1310 mlcanopyfluxestype apar_mean_profile$o mlcanopy_type
R 3515 5 1312 mlcanopyfluxestype gs_mean_profile mlcanopy_type
R 3518 5 1315 mlcanopyfluxestype gs_mean_profile$sd mlcanopy_type
R 3519 5 1316 mlcanopyfluxestype gs_mean_profile$p mlcanopy_type
R 3520 5 1317 mlcanopyfluxestype gs_mean_profile$o mlcanopy_type
R 3522 5 1319 mlcanopyfluxestype tleaf_mean_profile mlcanopy_type
R 3525 5 1322 mlcanopyfluxestype tleaf_mean_profile$sd mlcanopy_type
R 3526 5 1323 mlcanopyfluxestype tleaf_mean_profile$p mlcanopy_type
R 3527 5 1324 mlcanopyfluxestype tleaf_mean_profile$o mlcanopy_type
R 3529 5 1326 mlcanopyfluxestype lwp_mean_profile mlcanopy_type
R 3532 5 1329 mlcanopyfluxestype lwp_mean_profile$sd mlcanopy_type
R 3533 5 1330 mlcanopyfluxestype lwp_mean_profile$p mlcanopy_type
R 3534 5 1331 mlcanopyfluxestype lwp_mean_profile$o mlcanopy_type
R 3536 5 1333 mlcanopyfluxestype lsc_profile mlcanopy_type
R 3539 5 1336 mlcanopyfluxestype lsc_profile$sd mlcanopy_type
R 3540 5 1337 mlcanopyfluxestype lsc_profile$p mlcanopy_type
R 3541 5 1338 mlcanopyfluxestype lsc_profile$o mlcanopy_type
R 3543 5 1340 mlcanopyfluxestype h2ocan_profile mlcanopy_type
R 3546 5 1343 mlcanopyfluxestype h2ocan_profile$sd mlcanopy_type
R 3547 5 1344 mlcanopyfluxestype h2ocan_profile$p mlcanopy_type
R 3548 5 1345 mlcanopyfluxestype h2ocan_profile$o mlcanopy_type
R 3550 5 1347 mlcanopyfluxestype h2ocan_bef_profile mlcanopy_type
R 3553 5 1350 mlcanopyfluxestype h2ocan_bef_profile$sd mlcanopy_type
R 3554 5 1351 mlcanopyfluxestype h2ocan_bef_profile$p mlcanopy_type
R 3555 5 1352 mlcanopyfluxestype h2ocan_bef_profile$o mlcanopy_type
R 3557 5 1354 mlcanopyfluxestype dh2ocan_profile mlcanopy_type
R 3561 5 1358 mlcanopyfluxestype dh2ocan_profile$sd mlcanopy_type
R 3562 5 1359 mlcanopyfluxestype dh2ocan_profile$p mlcanopy_type
R 3563 5 1360 mlcanopyfluxestype dh2ocan_profile$o mlcanopy_type
R 3565 5 1362 mlcanopyfluxestype fwet_profile mlcanopy_type
R 3568 5 1365 mlcanopyfluxestype fwet_profile$sd mlcanopy_type
R 3569 5 1366 mlcanopyfluxestype fwet_profile$p mlcanopy_type
R 3570 5 1367 mlcanopyfluxestype fwet_profile$o mlcanopy_type
R 3572 5 1369 mlcanopyfluxestype fdry_profile mlcanopy_type
R 3575 5 1372 mlcanopyfluxestype fdry_profile$sd mlcanopy_type
R 3576 5 1373 mlcanopyfluxestype fdry_profile$p mlcanopy_type
R 3577 5 1374 mlcanopyfluxestype fdry_profile$o mlcanopy_type
R 3579 5 1376 mlcanopyfluxestype tleaf_leaf mlcanopy_type
R 3583 5 1380 mlcanopyfluxestype tleaf_leaf$sd mlcanopy_type
R 3584 5 1381 mlcanopyfluxestype tleaf_leaf$p mlcanopy_type
R 3585 5 1382 mlcanopyfluxestype tleaf_leaf$o mlcanopy_type
R 3587 5 1384 mlcanopyfluxestype tleaf_bef_leaf mlcanopy_type
R 3591 5 1388 mlcanopyfluxestype tleaf_bef_leaf$sd mlcanopy_type
R 3592 5 1389 mlcanopyfluxestype tleaf_bef_leaf$p mlcanopy_type
R 3593 5 1390 mlcanopyfluxestype tleaf_bef_leaf$o mlcanopy_type
R 3595 5 1392 mlcanopyfluxestype dtleaf_leaf mlcanopy_type
R 3600 5 1397 mlcanopyfluxestype dtleaf_leaf$sd mlcanopy_type
R 3601 5 1398 mlcanopyfluxestype dtleaf_leaf$p mlcanopy_type
R 3602 5 1399 mlcanopyfluxestype dtleaf_leaf$o mlcanopy_type
R 3604 5 1401 mlcanopyfluxestype tleaf_hist_leaf mlcanopy_type
R 3608 5 1405 mlcanopyfluxestype tleaf_hist_leaf$sd mlcanopy_type
R 3609 5 1406 mlcanopyfluxestype tleaf_hist_leaf$p mlcanopy_type
R 3610 5 1407 mlcanopyfluxestype tleaf_hist_leaf$o mlcanopy_type
R 3612 5 1409 mlcanopyfluxestype swleaf_leaf mlcanopy_type
R 3617 5 1414 mlcanopyfluxestype swleaf_leaf$sd mlcanopy_type
R 3618 5 1415 mlcanopyfluxestype swleaf_leaf$p mlcanopy_type
R 3619 5 1416 mlcanopyfluxestype swleaf_leaf$o mlcanopy_type
R 3621 5 1418 mlcanopyfluxestype lwleaf_leaf mlcanopy_type
R 3625 5 1422 mlcanopyfluxestype lwleaf_leaf$sd mlcanopy_type
R 3626 5 1423 mlcanopyfluxestype lwleaf_leaf$p mlcanopy_type
R 3627 5 1424 mlcanopyfluxestype lwleaf_leaf$o mlcanopy_type
R 3629 5 1426 mlcanopyfluxestype rnleaf_leaf mlcanopy_type
R 3633 5 1430 mlcanopyfluxestype rnleaf_leaf$sd mlcanopy_type
R 3634 5 1431 mlcanopyfluxestype rnleaf_leaf$p mlcanopy_type
R 3635 5 1432 mlcanopyfluxestype rnleaf_leaf$o mlcanopy_type
R 3637 5 1434 mlcanopyfluxestype stleaf_leaf mlcanopy_type
R 3641 5 1438 mlcanopyfluxestype stleaf_leaf$sd mlcanopy_type
R 3642 5 1439 mlcanopyfluxestype stleaf_leaf$p mlcanopy_type
R 3643 5 1440 mlcanopyfluxestype stleaf_leaf$o mlcanopy_type
R 3645 5 1442 mlcanopyfluxestype shleaf_leaf mlcanopy_type
R 3649 5 1446 mlcanopyfluxestype shleaf_leaf$sd mlcanopy_type
R 3650 5 1447 mlcanopyfluxestype shleaf_leaf$p mlcanopy_type
R 3651 5 1448 mlcanopyfluxestype shleaf_leaf$o mlcanopy_type
R 3653 5 1450 mlcanopyfluxestype lhleaf_leaf mlcanopy_type
R 3657 5 1454 mlcanopyfluxestype lhleaf_leaf$sd mlcanopy_type
R 3658 5 1455 mlcanopyfluxestype lhleaf_leaf$p mlcanopy_type
R 3659 5 1456 mlcanopyfluxestype lhleaf_leaf$o mlcanopy_type
R 3661 5 1458 mlcanopyfluxestype trleaf_leaf mlcanopy_type
R 3665 5 1462 mlcanopyfluxestype trleaf_leaf$sd mlcanopy_type
R 3666 5 1463 mlcanopyfluxestype trleaf_leaf$p mlcanopy_type
R 3667 5 1464 mlcanopyfluxestype trleaf_leaf$o mlcanopy_type
R 3669 5 1466 mlcanopyfluxestype evleaf_leaf mlcanopy_type
R 3673 5 1470 mlcanopyfluxestype evleaf_leaf$sd mlcanopy_type
R 3674 5 1471 mlcanopyfluxestype evleaf_leaf$p mlcanopy_type
R 3675 5 1472 mlcanopyfluxestype evleaf_leaf$o mlcanopy_type
R 3677 5 1474 mlcanopyfluxestype gbh_leaf mlcanopy_type
R 3681 5 1478 mlcanopyfluxestype gbh_leaf$sd mlcanopy_type
R 3682 5 1479 mlcanopyfluxestype gbh_leaf$p mlcanopy_type
R 3683 5 1480 mlcanopyfluxestype gbh_leaf$o mlcanopy_type
R 3685 5 1482 mlcanopyfluxestype gbv_leaf mlcanopy_type
R 3689 5 1486 mlcanopyfluxestype gbv_leaf$sd mlcanopy_type
R 3690 5 1487 mlcanopyfluxestype gbv_leaf$p mlcanopy_type
R 3691 5 1488 mlcanopyfluxestype gbv_leaf$o mlcanopy_type
R 3693 5 1490 mlcanopyfluxestype gbc_leaf mlcanopy_type
R 3697 5 1494 mlcanopyfluxestype gbc_leaf$sd mlcanopy_type
R 3698 5 1495 mlcanopyfluxestype gbc_leaf$p mlcanopy_type
R 3699 5 1496 mlcanopyfluxestype gbc_leaf$o mlcanopy_type
R 3701 5 1498 mlcanopyfluxestype vcmax25_leaf mlcanopy_type
R 3705 5 1502 mlcanopyfluxestype vcmax25_leaf$sd mlcanopy_type
R 3706 5 1503 mlcanopyfluxestype vcmax25_leaf$p mlcanopy_type
R 3707 5 1504 mlcanopyfluxestype vcmax25_leaf$o mlcanopy_type
R 3709 5 1506 mlcanopyfluxestype jmax25_leaf mlcanopy_type
R 3713 5 1510 mlcanopyfluxestype jmax25_leaf$sd mlcanopy_type
R 3714 5 1511 mlcanopyfluxestype jmax25_leaf$p mlcanopy_type
R 3715 5 1512 mlcanopyfluxestype jmax25_leaf$o mlcanopy_type
R 3717 5 1514 mlcanopyfluxestype kp25_leaf mlcanopy_type
R 3721 5 1518 mlcanopyfluxestype kp25_leaf$sd mlcanopy_type
R 3722 5 1519 mlcanopyfluxestype kp25_leaf$p mlcanopy_type
R 3723 5 1520 mlcanopyfluxestype kp25_leaf$o mlcanopy_type
R 3725 5 1522 mlcanopyfluxestype rd25_leaf mlcanopy_type
R 3729 5 1526 mlcanopyfluxestype rd25_leaf$sd mlcanopy_type
R 3730 5 1527 mlcanopyfluxestype rd25_leaf$p mlcanopy_type
R 3731 5 1528 mlcanopyfluxestype rd25_leaf$o mlcanopy_type
R 3733 5 1530 mlcanopyfluxestype kc_leaf mlcanopy_type
R 3737 5 1534 mlcanopyfluxestype kc_leaf$sd mlcanopy_type
R 3738 5 1535 mlcanopyfluxestype kc_leaf$p mlcanopy_type
R 3739 5 1536 mlcanopyfluxestype kc_leaf$o mlcanopy_type
R 3741 5 1538 mlcanopyfluxestype ko_leaf mlcanopy_type
R 3745 5 1542 mlcanopyfluxestype ko_leaf$sd mlcanopy_type
R 3746 5 1543 mlcanopyfluxestype ko_leaf$p mlcanopy_type
R 3747 5 1544 mlcanopyfluxestype ko_leaf$o mlcanopy_type
R 3749 5 1546 mlcanopyfluxestype cp_leaf mlcanopy_type
R 3753 5 1550 mlcanopyfluxestype cp_leaf$sd mlcanopy_type
R 3754 5 1551 mlcanopyfluxestype cp_leaf$p mlcanopy_type
R 3755 5 1552 mlcanopyfluxestype cp_leaf$o mlcanopy_type
R 3757 5 1554 mlcanopyfluxestype vcmax_leaf mlcanopy_type
R 3761 5 1558 mlcanopyfluxestype vcmax_leaf$sd mlcanopy_type
R 3762 5 1559 mlcanopyfluxestype vcmax_leaf$p mlcanopy_type
R 3763 5 1560 mlcanopyfluxestype vcmax_leaf$o mlcanopy_type
R 3765 5 1562 mlcanopyfluxestype jmax_leaf mlcanopy_type
R 3769 5 1566 mlcanopyfluxestype jmax_leaf$sd mlcanopy_type
R 3770 5 1567 mlcanopyfluxestype jmax_leaf$p mlcanopy_type
R 3771 5 1568 mlcanopyfluxestype jmax_leaf$o mlcanopy_type
R 3773 5 1570 mlcanopyfluxestype kp_leaf mlcanopy_type
R 3777 5 1574 mlcanopyfluxestype kp_leaf$sd mlcanopy_type
R 3778 5 1575 mlcanopyfluxestype kp_leaf$p mlcanopy_type
R 3779 5 1576 mlcanopyfluxestype kp_leaf$o mlcanopy_type
R 3781 5 1578 mlcanopyfluxestype ceair_leaf mlcanopy_type
R 3785 5 1582 mlcanopyfluxestype ceair_leaf$sd mlcanopy_type
R 3786 5 1583 mlcanopyfluxestype ceair_leaf$p mlcanopy_type
R 3787 5 1584 mlcanopyfluxestype ceair_leaf$o mlcanopy_type
R 3789 5 1586 mlcanopyfluxestype leaf_esat_leaf mlcanopy_type
R 3793 5 1590 mlcanopyfluxestype leaf_esat_leaf$sd mlcanopy_type
R 3794 5 1591 mlcanopyfluxestype leaf_esat_leaf$p mlcanopy_type
R 3795 5 1592 mlcanopyfluxestype leaf_esat_leaf$o mlcanopy_type
R 3797 5 1594 mlcanopyfluxestype apar_leaf mlcanopy_type
R 3801 5 1598 mlcanopyfluxestype apar_leaf$sd mlcanopy_type
R 3802 5 1599 mlcanopyfluxestype apar_leaf$p mlcanopy_type
R 3803 5 1600 mlcanopyfluxestype apar_leaf$o mlcanopy_type
R 3805 5 1602 mlcanopyfluxestype je_leaf mlcanopy_type
R 3809 5 1606 mlcanopyfluxestype je_leaf$sd mlcanopy_type
R 3810 5 1607 mlcanopyfluxestype je_leaf$p mlcanopy_type
R 3811 5 1608 mlcanopyfluxestype je_leaf$o mlcanopy_type
R 3813 5 1610 mlcanopyfluxestype ac_leaf mlcanopy_type
R 3817 5 1614 mlcanopyfluxestype ac_leaf$sd mlcanopy_type
R 3818 5 1615 mlcanopyfluxestype ac_leaf$p mlcanopy_type
R 3819 5 1616 mlcanopyfluxestype ac_leaf$o mlcanopy_type
R 3821 5 1618 mlcanopyfluxestype aj_leaf mlcanopy_type
R 3825 5 1622 mlcanopyfluxestype aj_leaf$sd mlcanopy_type
R 3826 5 1623 mlcanopyfluxestype aj_leaf$p mlcanopy_type
R 3827 5 1624 mlcanopyfluxestype aj_leaf$o mlcanopy_type
R 3829 5 1626 mlcanopyfluxestype ap_leaf mlcanopy_type
R 3833 5 1630 mlcanopyfluxestype ap_leaf$sd mlcanopy_type
R 3834 5 1631 mlcanopyfluxestype ap_leaf$p mlcanopy_type
R 3835 5 1632 mlcanopyfluxestype ap_leaf$o mlcanopy_type
R 3837 5 1634 mlcanopyfluxestype agross_leaf mlcanopy_type
R 3841 5 1638 mlcanopyfluxestype agross_leaf$sd mlcanopy_type
R 3842 5 1639 mlcanopyfluxestype agross_leaf$p mlcanopy_type
R 3843 5 1640 mlcanopyfluxestype agross_leaf$o mlcanopy_type
R 3845 5 1642 mlcanopyfluxestype anet_leaf mlcanopy_type
R 3849 5 1646 mlcanopyfluxestype anet_leaf$sd mlcanopy_type
R 3850 5 1647 mlcanopyfluxestype anet_leaf$p mlcanopy_type
R 3851 5 1648 mlcanopyfluxestype anet_leaf$o mlcanopy_type
R 3853 5 1650 mlcanopyfluxestype rd_leaf mlcanopy_type
R 3857 5 1654 mlcanopyfluxestype rd_leaf$sd mlcanopy_type
R 3858 5 1655 mlcanopyfluxestype rd_leaf$p mlcanopy_type
R 3859 5 1656 mlcanopyfluxestype rd_leaf$o mlcanopy_type
R 3861 5 1658 mlcanopyfluxestype ci_leaf mlcanopy_type
R 3865 5 1662 mlcanopyfluxestype ci_leaf$sd mlcanopy_type
R 3866 5 1663 mlcanopyfluxestype ci_leaf$p mlcanopy_type
R 3867 5 1664 mlcanopyfluxestype ci_leaf$o mlcanopy_type
R 3869 5 1666 mlcanopyfluxestype cs_leaf mlcanopy_type
R 3873 5 1670 mlcanopyfluxestype cs_leaf$sd mlcanopy_type
R 3874 5 1671 mlcanopyfluxestype cs_leaf$p mlcanopy_type
R 3875 5 1672 mlcanopyfluxestype cs_leaf$o mlcanopy_type
R 3877 5 1674 mlcanopyfluxestype lwp_leaf mlcanopy_type
R 3881 5 1678 mlcanopyfluxestype lwp_leaf$sd mlcanopy_type
R 3882 5 1679 mlcanopyfluxestype lwp_leaf$p mlcanopy_type
R 3883 5 1680 mlcanopyfluxestype lwp_leaf$o mlcanopy_type
R 3885 5 1682 mlcanopyfluxestype lwp_bef_leaf mlcanopy_type
R 3889 5 1686 mlcanopyfluxestype lwp_bef_leaf$sd mlcanopy_type
R 3890 5 1687 mlcanopyfluxestype lwp_bef_leaf$p mlcanopy_type
R 3891 5 1688 mlcanopyfluxestype lwp_bef_leaf$o mlcanopy_type
R 3893 5 1690 mlcanopyfluxestype dlwp_leaf mlcanopy_type
R 3898 5 1695 mlcanopyfluxestype dlwp_leaf$sd mlcanopy_type
R 3899 5 1696 mlcanopyfluxestype dlwp_leaf$p mlcanopy_type
R 3900 5 1697 mlcanopyfluxestype dlwp_leaf$o mlcanopy_type
R 3902 5 1699 mlcanopyfluxestype lwp_hist_leaf mlcanopy_type
R 3906 5 1703 mlcanopyfluxestype lwp_hist_leaf$sd mlcanopy_type
R 3907 5 1704 mlcanopyfluxestype lwp_hist_leaf$p mlcanopy_type
R 3908 5 1705 mlcanopyfluxestype lwp_hist_leaf$o mlcanopy_type
R 3910 5 1707 mlcanopyfluxestype hs_leaf mlcanopy_type
R 3914 5 1711 mlcanopyfluxestype hs_leaf$sd mlcanopy_type
R 3915 5 1712 mlcanopyfluxestype hs_leaf$p mlcanopy_type
R 3916 5 1713 mlcanopyfluxestype hs_leaf$o mlcanopy_type
R 3918 5 1715 mlcanopyfluxestype vpd_leaf mlcanopy_type
R 3922 5 1719 mlcanopyfluxestype vpd_leaf$sd mlcanopy_type
R 3923 5 1720 mlcanopyfluxestype vpd_leaf$p mlcanopy_type
R 3924 5 1721 mlcanopyfluxestype vpd_leaf$o mlcanopy_type
R 3926 5 1723 mlcanopyfluxestype gs_leaf mlcanopy_type
R 3930 5 1727 mlcanopyfluxestype gs_leaf$sd mlcanopy_type
R 3931 5 1728 mlcanopyfluxestype gs_leaf$p mlcanopy_type
R 3932 5 1729 mlcanopyfluxestype gs_leaf$o mlcanopy_type
R 3934 5 1731 mlcanopyfluxestype gspot_leaf mlcanopy_type
R 3938 5 1735 mlcanopyfluxestype gspot_leaf$sd mlcanopy_type
R 3939 5 1736 mlcanopyfluxestype gspot_leaf$p mlcanopy_type
R 3940 5 1737 mlcanopyfluxestype gspot_leaf$o mlcanopy_type
R 3947 5 1744 mlcanopyfluxestype restart$tbp$0 mlcanopy_type
R 3948 5 1745 mlcanopyfluxestype initcold$tbp$1 mlcanopy_type
R 3949 5 1746 mlcanopyfluxestype inithistory$tbp$2 mlcanopy_type
R 3950 5 1747 mlcanopyfluxestype initallocate$tbp$3 mlcanopy_type
R 3951 5 1748 mlcanopyfluxestype init$tbp$4 mlcanopy_type
R 4049 14 73 mlmathtoolsmod tridiag
S 4093 27 0 0 0 9 4097 624 40654 0 8000000 A 0 0 0 0 B 0 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soiltemperature
S 4094 27 0 0 0 9 4112 624 40670 0 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilthermprop
S 4095 16 0 0 0 10 1 624 40684 14 400000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 4096 4052 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 thin_sfclayer
S 4096 3 0 0 0 10 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1051772663 -1598689907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10
S 4097 23 5 0 0 0 4107 624 40654 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soiltemperature
S 4098 6 3 1 0 107 1 4097 12194 800004 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 4099 1 3 1 0 6 1 4097 40708 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_nolakec
S 4100 7 3 1 0 1984 1 4097 40720 20000004 10003000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_nolakec
S 4101 1 3 3 0 122 1 4097 40735 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 4102 1 3 3 0 233 1 4097 40750 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 temperature_inst
S 4103 1 3 3 0 266 1 4097 40767 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterdiagnosticbulk_inst
S 4104 1 3 3 0 299 1 4097 40792 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 4105 1 3 3 0 338 1 4097 40812 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 water_inst
S 4106 1 3 3 0 376 1 4097 40518 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 4107 14 5 0 0 0 1 4097 40654 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 175 9 0 0 0 0 0 0 0 0 0 0 0 0 39 0 624 0 0 0 0 soiltemperature soiltemperature 
F 4107 9 4098 4099 4100 4101 4102 4103 4104 4105 4106
S 4108 6 1 0 0 7 1 4097 40823 40800006 3000 A 0 0 0 0 B 0 54 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 4109 6 1 0 0 7 1 4097 40831 40800006 3000 A 0 0 0 0 B 0 54 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 4110 6 1 0 0 7 1 4097 40839 40800006 3000 A 0 0 0 0 B 0 54 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 4111 6 1 0 0 7 1 4097 40847 40800006 3000 A 0 0 0 0 B 0 54 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4199
S 4112 23 5 0 0 0 4124 624 40670 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilthermprop
S 4113 6 3 1 0 107 1 4112 12194 800004 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 4114 1 3 1 0 6 1 4112 40708 4 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_nolakec
S 4115 7 3 1 0 1987 1 4112 40720 20000004 10003000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_nolakec
S 4116 7 3 2 0 1990 1 4112 40856 20000004 10003000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tk
S 4117 7 3 2 0 1993 1 4112 40859 20000004 10003000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cv
S 4118 7 3 2 0 1996 1 4112 40862 20000004 10003000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tk_h2osfc
S 4119 1 3 0 0 233 1 4112 40750 4 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 temperature_inst
S 4120 1 3 0 0 266 1 4112 40767 4 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterdiagnosticbulk_inst
S 4121 1 3 0 0 299 1 4112 40792 4 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 4122 1 3 0 0 338 1 4112 40812 4 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 water_inst
S 4123 1 3 0 0 122 1 4112 40735 4 3000 A 0 0 0 0 B 0 194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 4124 14 5 0 0 0 1 4112 40670 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 185 11 0 0 0 0 0 0 0 0 0 0 0 0 194 0 624 0 0 0 0 soilthermprop soilthermprop 
F 4124 11 4113 4114 4115 4116 4117 4118 4119 4120 4121 4122 4123
S 4125 6 1 0 0 7 1 4112 40823 40800006 3000 A 0 0 0 0 B 0 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 4126 6 1 0 0 7 1 4112 40831 40800006 3000 A 0 0 0 0 B 0 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 4127 6 1 0 0 7 1 4112 40839 40800006 3000 A 0 0 0 0 B 0 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 4128 6 1 0 0 7 1 4112 40872 40800006 3000 A 0 0 0 0 B 0 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4063
S 4129 6 1 0 0 7 1 4112 40881 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4_1
S 4130 6 1 0 0 7 1 4112 40889 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5_1
S 4131 6 1 0 0 7 1 4112 40897 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6_1
S 4132 6 1 0 0 7 1 4112 40905 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7_1
S 4133 6 1 0 0 7 1 4112 40913 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_8_1
S 4134 6 1 0 0 7 1 4112 40921 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9_1
S 4135 6 1 0 0 7 1 4112 40929 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10_1
S 4136 6 1 0 0 7 1 4112 40938 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4081
S 4137 6 1 0 0 7 1 4112 40947 40800006 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4084
S 4138 6 1 0 0 7 1 4112 40956 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11_1
S 4139 6 1 0 0 7 1 4112 40965 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_12_1
S 4140 6 1 0 0 7 1 4112 40974 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13_1
S 4141 6 1 0 0 7 1 4112 40983 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14_1
S 4142 6 1 0 0 7 1 4112 40992 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_15_1
S 4143 6 1 0 0 7 1 4112 41001 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_16_1
S 4144 6 1 0 0 7 1 4112 41010 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_17_1
S 4145 6 1 0 0 7 1 4112 41019 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4094
S 4146 6 1 0 0 7 1 4112 41028 40800006 3000 A 0 0 0 0 B 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4097
S 4147 6 1 0 0 7 1 4112 41037 40800006 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_18_1
S 4148 6 1 0 0 7 1 4112 41046 40800006 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_19_1
S 4149 6 1 0 0 7 1 4112 41055 40800006 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_20_1
S 4150 6 1 0 0 7 1 4112 41064 40800006 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_21_1
S 4151 6 1 0 0 7 1 4112 41073 40800006 3000 A 0 0 0 0 B 0 213 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_4104
A 4052 2 0 0 0 10 4096 0 0 0 4052 0 0 0 0 0 0 0 0 0 0 0
A 4054 1 0 0 0 7 4110 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4055 1 0 0 0 7 4108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4056 1 0 0 0 7 4111 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4057 1 0 0 0 7 4109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4058 1 0 0 1120 7 4127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4059 1 0 0 2998 7 4125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4060 1 0 0 0 7 4128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4061 1 0 0 0 7 4126 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4062 1 0 0 1128 7 4135 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4063 1 0 0 0 107 4113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4064 1 0 0 3094 6 1348 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4065 9 0 0 0 6 4063 4064 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4066 7 0 0 2882 7 4065 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4067 1 0 0 3003 7 4130 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4068 1 0 0 0 7 4129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4069 1 0 0 0 7 4136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4070 1 0 0 0 6 1271 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4071 5 0 0 1720 6 4070 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0
A 4072 4 0 0 0 6 4071 0 3 0 0 0 0 1 0 0 0 0 0 0 0 0
A 4073 7 0 0 0 7 4072 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4074 1 0 0 0 7 4133 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4075 1 0 0 0 7 4131 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4076 1 0 0 3914 7 4132 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4077 1 0 0 1142 7 4137 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4078 1 0 0 0 7 4134 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4079 1 0 0 0 7 4144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4080 1 0 0 0 7 4139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4081 1 0 0 3011 7 4138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4082 1 0 0 0 7 4145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4083 1 0 0 0 7 4142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4084 1 0 0 0 7 4140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4085 1 0 0 0 7 4141 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4086 1 0 0 0 7 4146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4087 1 0 0 3016 7 4143 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4088 1 0 0 2423 7 4150 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4089 1 0 0 3243 7 4148 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4090 1 0 0 0 7 4147 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4091 1 0 0 3024 7 4151 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 4092 1 0 0 0 7 4149 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
