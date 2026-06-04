V34 :0x24 surfaceresistancemod
24 SurfaceResistanceMod.F90 S624 0
06/02/2026  09:20:34
use columntype private
use temperaturetype private
use waterstatebulktype private
use soilstatetype private
use decompmod private
use abortutils private
use shr_kind_mod private
enduse
D 66 26 1214 32 1213 3
D 83 26 1306 3104 1305 7
D 194 26 1438 752 1437 7
D 233 26 1486 504 1485 7
D 299 23 6 1 730 733 1 1 0 0 1
 11 731 11 11 731 732
D 302 23 6 1 734 737 1 1 0 0 1
 11 735 11 11 735 736
D 305 23 10 1 738 748 0 0 1 0 0
 742 745 11 746 747 748
D 308 23 10 1 738 748 0 0 1 0 0
 742 745 11 746 747 748
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 surfaceresistancemod
S 626 23 0 0 0 9 642 624 5046 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 1207 624 5072 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 631 23 0 0 0 9 1213 624 5089 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 633 23 0 0 0 9 1305 624 5115 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilstate_type
S 635 23 0 0 0 9 1437 624 5149 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 waterstatebulk_type
S 637 23 0 0 0 9 1485 624 5185 4 0 A 0 0 0 0 B 400000 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 temperature_type
S 639 23 0 0 0 9 1561 624 5213 4 0 A 0 0 0 0 B 400000 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
R 642 16 1 shr_kind_mod shr_kind_r8
R 1207 14 450 abortutils endrun
R 1213 25 2 decompmod bounds_type
R 1214 5 3 decompmod begg bounds_type
R 1215 5 4 decompmod endg bounds_type
R 1216 5 5 decompmod begl bounds_type
R 1217 5 6 decompmod endl bounds_type
R 1218 5 7 decompmod begc bounds_type
R 1219 5 8 decompmod endc bounds_type
R 1220 5 9 decompmod begp bounds_type
R 1221 5 10 decompmod endp bounds_type
R 1305 25 8 soilstatetype soilstate_type
R 1306 5 9 soilstatetype cellorg_col soilstate_type
R 1309 5 12 soilstatetype cellorg_col$sd soilstate_type
R 1310 5 13 soilstatetype cellorg_col$p soilstate_type
R 1311 5 14 soilstatetype cellorg_col$o soilstate_type
R 1313 5 16 soilstatetype cellsand_col soilstate_type
R 1316 5 19 soilstatetype cellsand_col$sd soilstate_type
R 1317 5 20 soilstatetype cellsand_col$p soilstate_type
R 1318 5 21 soilstatetype cellsand_col$o soilstate_type
R 1320 5 23 soilstatetype cellclay_col soilstate_type
R 1323 5 26 soilstatetype cellclay_col$sd soilstate_type
R 1324 5 27 soilstatetype cellclay_col$p soilstate_type
R 1325 5 28 soilstatetype cellclay_col$o soilstate_type
R 1327 5 30 soilstatetype hksat_col soilstate_type
R 1330 5 33 soilstatetype hksat_col$sd soilstate_type
R 1331 5 34 soilstatetype hksat_col$p soilstate_type
R 1332 5 35 soilstatetype hksat_col$o soilstate_type
R 1334 5 37 soilstatetype hk_l_col soilstate_type
R 1337 5 40 soilstatetype hk_l_col$sd soilstate_type
R 1338 5 41 soilstatetype hk_l_col$p soilstate_type
R 1339 5 42 soilstatetype hk_l_col$o soilstate_type
R 1341 5 44 soilstatetype smp_l_col soilstate_type
R 1344 5 47 soilstatetype smp_l_col$sd soilstate_type
R 1345 5 48 soilstatetype smp_l_col$p soilstate_type
R 1346 5 49 soilstatetype smp_l_col$o soilstate_type
R 1348 5 51 soilstatetype bsw_col soilstate_type
R 1351 5 54 soilstatetype bsw_col$sd soilstate_type
R 1352 5 55 soilstatetype bsw_col$p soilstate_type
R 1353 5 56 soilstatetype bsw_col$o soilstate_type
R 1355 5 58 soilstatetype watsat_col soilstate_type
R 1358 5 61 soilstatetype watsat_col$sd soilstate_type
R 1359 5 62 soilstatetype watsat_col$p soilstate_type
R 1360 5 63 soilstatetype watsat_col$o soilstate_type
R 1362 5 65 soilstatetype sucsat_col soilstate_type
R 1365 5 68 soilstatetype sucsat_col$sd soilstate_type
R 1366 5 69 soilstatetype sucsat_col$p soilstate_type
R 1367 5 70 soilstatetype sucsat_col$o soilstate_type
R 1369 5 72 soilstatetype dsl_col soilstate_type
R 1371 5 74 soilstatetype dsl_col$sd soilstate_type
R 1372 5 75 soilstatetype dsl_col$p soilstate_type
R 1373 5 76 soilstatetype dsl_col$o soilstate_type
R 1375 5 78 soilstatetype soilresis_col soilstate_type
R 1377 5 80 soilstatetype soilresis_col$sd soilstate_type
R 1378 5 81 soilstatetype soilresis_col$p soilstate_type
R 1379 5 82 soilstatetype soilresis_col$o soilstate_type
R 1381 5 84 soilstatetype thk_col soilstate_type
R 1384 5 87 soilstatetype thk_col$sd soilstate_type
R 1385 5 88 soilstatetype thk_col$p soilstate_type
R 1386 5 89 soilstatetype thk_col$o soilstate_type
R 1388 5 91 soilstatetype tkmg_col soilstate_type
R 1391 5 94 soilstatetype tkmg_col$sd soilstate_type
R 1392 5 95 soilstatetype tkmg_col$p soilstate_type
R 1393 5 96 soilstatetype tkmg_col$o soilstate_type
R 1395 5 98 soilstatetype tkdry_col soilstate_type
R 1398 5 101 soilstatetype tkdry_col$sd soilstate_type
R 1399 5 102 soilstatetype tkdry_col$p soilstate_type
R 1400 5 103 soilstatetype tkdry_col$o soilstate_type
R 1402 5 105 soilstatetype csol_col soilstate_type
R 1405 5 108 soilstatetype csol_col$sd soilstate_type
R 1406 5 109 soilstatetype csol_col$p soilstate_type
R 1407 5 110 soilstatetype csol_col$o soilstate_type
R 1409 5 112 soilstatetype rootfr_patch soilstate_type
R 1412 5 115 soilstatetype rootfr_patch$sd soilstate_type
R 1413 5 116 soilstatetype rootfr_patch$p soilstate_type
R 1414 5 117 soilstatetype rootfr_patch$o soilstate_type
R 1418 5 121 soilstatetype initallocate$tbp$0 soilstate_type
R 1419 5 122 soilstatetype init$tbp$1 soilstate_type
R 1437 25 7 waterstatebulktype waterstatebulk_type
R 1438 5 8 waterstatebulktype h2osoi_liq_col waterstatebulk_type
R 1441 5 11 waterstatebulktype h2osoi_liq_col$sd waterstatebulk_type
R 1442 5 12 waterstatebulktype h2osoi_liq_col$p waterstatebulk_type
R 1443 5 13 waterstatebulktype h2osoi_liq_col$o waterstatebulk_type
R 1445 5 15 waterstatebulktype h2osoi_ice_col waterstatebulk_type
R 1448 5 18 waterstatebulktype h2osoi_ice_col$sd waterstatebulk_type
R 1449 5 19 waterstatebulktype h2osoi_ice_col$p waterstatebulk_type
R 1450 5 20 waterstatebulktype h2osoi_ice_col$o waterstatebulk_type
R 1452 5 22 waterstatebulktype h2osoi_vol_col waterstatebulk_type
R 1455 5 25 waterstatebulktype h2osoi_vol_col$sd waterstatebulk_type
R 1456 5 26 waterstatebulktype h2osoi_vol_col$p waterstatebulk_type
R 1457 5 27 waterstatebulktype h2osoi_vol_col$o waterstatebulk_type
R 1459 5 29 waterstatebulktype h2osfc_col waterstatebulk_type
R 1461 5 31 waterstatebulktype h2osfc_col$sd waterstatebulk_type
R 1462 5 32 waterstatebulktype h2osfc_col$p waterstatebulk_type
R 1463 5 33 waterstatebulktype h2osfc_col$o waterstatebulk_type
R 1467 5 37 waterstatebulktype initallocate$tbp$0 waterstatebulk_type
R 1468 5 38 waterstatebulktype init$tbp$1 waterstatebulk_type
R 1485 25 7 temperaturetype temperature_type
R 1486 5 8 temperaturetype t_soisno_col temperature_type
R 1489 5 11 temperaturetype t_soisno_col$sd temperature_type
R 1490 5 12 temperaturetype t_soisno_col$p temperature_type
R 1491 5 13 temperaturetype t_soisno_col$o temperature_type
R 1493 5 15 temperaturetype t_a10_patch temperature_type
R 1495 5 17 temperaturetype t_a10_patch$sd temperature_type
R 1496 5 18 temperaturetype t_a10_patch$p temperature_type
R 1497 5 19 temperaturetype t_a10_patch$o temperature_type
R 1499 5 21 temperaturetype t_ref2m_patch temperature_type
R 1501 5 23 temperaturetype t_ref2m_patch$sd temperature_type
R 1502 5 24 temperaturetype t_ref2m_patch$p temperature_type
R 1503 5 25 temperaturetype t_ref2m_patch$o temperature_type
R 1507 5 29 temperaturetype initallocate$tbp$0 temperature_type
R 1508 5 30 temperaturetype init$tbp$1 temperature_type
R 1561 6 43 columntype col
S 1569 27 0 0 0 9 1571 624 14095 0 8000000 A 0 0 0 0 B 0 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 calc_soilevap_resis
S 1570 27 0 0 0 9 1583 624 14115 10 8000000 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 calc_soil_resistance_sl14
S 1571 23 5 0 0 0 1578 624 14095 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 calc_soilevap_resis
S 1572 1 3 1 0 66 1 1571 11415 4 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 1573 1 3 1 0 6 1 1571 14141 4 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_nolakec
S 1574 7 3 1 0 299 1 1571 14153 20000004 10003000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_nolakec
S 1575 1 3 3 0 83 1 1571 14168 4 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 1576 1 3 1 0 194 1 1571 14183 4 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 1577 1 3 1 0 233 1 1571 14203 4 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 temperature_inst
S 1578 14 5 0 0 0 1 1571 14095 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 33 6 0 0 0 0 0 0 0 0 0 0 0 0 29 0 624 0 0 0 0 calc_soilevap_resis calc_soilevap_resis 
F 1578 6 1572 1573 1574 1575 1576 1577
S 1579 6 1 0 0 7 1 1571 14220 40800006 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 1580 6 1 0 0 7 1 1571 14228 40800006 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 1581 6 1 0 0 7 1 1571 14236 40800006 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 1582 6 1 0 0 7 1 1571 14244 40800006 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_735
S 1583 23 5 0 0 0 1592 624 14115 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 calc_soil_resistance_sl14
S 1584 6 3 1 0 66 1 1583 11415 800004 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 1585 1 3 1 0 6 1 1583 14141 4 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_nolakec
S 1586 7 3 1 0 302 1 1583 14153 20000004 10003000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter_nolakec
S 1587 1 3 1 0 83 1 1583 14168 4 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 1588 1 3 1 0 194 1 1583 14183 4 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 waterstatebulk_inst
S 1589 1 3 1 0 233 1 1583 14203 4 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 temperature_inst
S 1590 7 3 2 0 305 1 1583 14252 800204 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dsl
S 1591 7 3 2 0 308 1 1583 14256 800204 3000 A 0 0 0 0 B 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilresis
S 1592 14 5 0 0 0 1 1583 14115 20000210 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 40 8 0 0 0 0 0 0 0 0 0 0 0 0 60 0 624 0 0 0 0 calc_soil_resistance_sl14 calc_soil_resistance_sl14 
F 1592 8 1584 1585 1586 1587 1588 1589 1590 1591
S 1593 6 1 0 0 7 1 1583 14220 40800006 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 1594 6 1 0 0 7 1 1583 14228 40800006 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 1595 6 1 0 0 7 1 1583 14236 40800006 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 1596 6 1 0 0 7 1 1583 14266 40800006 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_739
S 1597 6 1 0 0 7 1 1583 14274 40800006 3000 A 0 0 0 0 B 0 75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_747
S 1598 6 1 0 0 7 1 1583 14282 40800006 3000 A 0 0 0 0 B 0 75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_746
S 1599 6 1 0 0 7 1 1583 14290 40800006 3000 A 0 0 0 0 B 0 75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_751
S 1600 6 1 0 0 7 1 1583 14298 40800006 3000 A 0 0 0 0 B 0 75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_748
A 730 1 0 0 0 7 1581 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 731 1 0 0 0 7 1579 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 732 1 0 0 0 7 1582 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 733 1 0 0 0 7 1580 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 734 1 0 0 0 7 1595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 735 1 0 0 0 7 1593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 736 1 0 0 0 7 1596 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 737 1 0 0 0 7 1594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 738 1 0 0 0 7 1600 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 739 1 0 0 0 66 1584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 740 1 0 0 0 6 1218 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 741 9 0 0 0 6 739 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 742 7 0 0 0 7 741 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 743 1 0 0 0 6 1219 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 744 9 0 0 741 6 739 743 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 745 7 0 0 0 7 744 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 746 1 0 0 0 7 1597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 747 1 0 0 0 7 1598 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 748 1 0 0 0 7 1599 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
