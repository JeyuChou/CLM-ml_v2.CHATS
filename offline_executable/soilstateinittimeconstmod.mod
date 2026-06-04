V34 :0x24 soilstateinittimeconstmod
29 SoilStateInitTimeConstMod.F90 S624 0
06/02/2026  09:20:28
use soilstatetype private
use pftconmod private
use columntype private
use patchtype private
use decompmod private
use abortutils private
use shr_kind_mod private
enduse
D 66 26 1214 32 1213 3
D 143 26 1427 1560 1426 7
D 203 22 7
D 205 22 7
D 207 22 7
D 209 22 7
D 211 22 7
D 213 22 7
D 215 22 7
D 217 22 7
D 219 22 7
D 230 26 1514 3104 1513 7
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 soilstateinittimeconstmod
S 626 23 0 0 0 9 642 624 5051 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 1207 624 5077 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 631 23 0 0 0 9 1213 624 5094 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
S 633 23 0 0 0 9 1300 624 5116 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 patch
S 635 23 0 0 0 9 1374 624 5133 4 0 A 0 0 0 0 B 400000 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
S 637 23 0 0 0 9 1493 624 5147 4 0 A 0 0 0 0 B 400000 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pftcon
S 639 23 0 0 0 9 1513 624 5168 4 0 A 0 0 0 0 B 400000 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilstate_type
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
S 1269 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1300 6 26 patchtype patch
S 1329 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1374 6 43 columntype col
R 1426 25 8 pftconmod pftcon_type
R 1427 5 9 pftconmod dleaf pftcon_type
R 1429 5 11 pftconmod dleaf$sd pftcon_type
R 1430 5 12 pftconmod dleaf$p pftcon_type
R 1431 5 13 pftconmod dleaf$o pftcon_type
R 1433 5 15 pftconmod c3psn pftcon_type
R 1435 5 17 pftconmod c3psn$sd pftcon_type
R 1436 5 18 pftconmod c3psn$p pftcon_type
R 1437 5 19 pftconmod c3psn$o pftcon_type
R 1439 5 21 pftconmod xl pftcon_type
R 1441 5 23 pftconmod xl$sd pftcon_type
R 1442 5 24 pftconmod xl$p pftcon_type
R 1443 5 25 pftconmod xl$o pftcon_type
R 1445 5 27 pftconmod rhol pftcon_type
R 1448 5 30 pftconmod rhol$sd pftcon_type
R 1449 5 31 pftconmod rhol$p pftcon_type
R 1450 5 32 pftconmod rhol$o pftcon_type
R 1452 5 34 pftconmod rhos pftcon_type
R 1455 5 37 pftconmod rhos$sd pftcon_type
R 1456 5 38 pftconmod rhos$p pftcon_type
R 1457 5 39 pftconmod rhos$o pftcon_type
R 1459 5 41 pftconmod taul pftcon_type
R 1462 5 44 pftconmod taul$sd pftcon_type
R 1463 5 45 pftconmod taul$p pftcon_type
R 1464 5 46 pftconmod taul$o pftcon_type
R 1466 5 48 pftconmod taus pftcon_type
R 1469 5 51 pftconmod taus$sd pftcon_type
R 1470 5 52 pftconmod taus$p pftcon_type
R 1471 5 53 pftconmod taus$o pftcon_type
R 1473 5 55 pftconmod rootprof_beta pftcon_type
R 1475 5 57 pftconmod rootprof_beta$sd pftcon_type
R 1476 5 58 pftconmod rootprof_beta$p pftcon_type
R 1477 5 59 pftconmod rootprof_beta$o pftcon_type
R 1479 5 61 pftconmod slatop pftcon_type
R 1481 5 63 pftconmod slatop$sd pftcon_type
R 1482 5 64 pftconmod slatop$p pftcon_type
R 1483 5 65 pftconmod slatop$o pftcon_type
R 1488 5 70 pftconmod initread$tbp$0 pftcon_type
R 1489 5 71 pftconmod initallocate$tbp$1 pftcon_type
R 1490 5 72 pftconmod init$tbp$2 pftcon_type
R 1493 6 75 pftconmod pftcon
R 1513 25 8 soilstatetype soilstate_type
R 1514 5 9 soilstatetype cellorg_col soilstate_type
R 1517 5 12 soilstatetype cellorg_col$sd soilstate_type
R 1518 5 13 soilstatetype cellorg_col$p soilstate_type
R 1519 5 14 soilstatetype cellorg_col$o soilstate_type
R 1521 5 16 soilstatetype cellsand_col soilstate_type
R 1524 5 19 soilstatetype cellsand_col$sd soilstate_type
R 1525 5 20 soilstatetype cellsand_col$p soilstate_type
R 1526 5 21 soilstatetype cellsand_col$o soilstate_type
R 1528 5 23 soilstatetype cellclay_col soilstate_type
R 1531 5 26 soilstatetype cellclay_col$sd soilstate_type
R 1532 5 27 soilstatetype cellclay_col$p soilstate_type
R 1533 5 28 soilstatetype cellclay_col$o soilstate_type
R 1535 5 30 soilstatetype hksat_col soilstate_type
R 1538 5 33 soilstatetype hksat_col$sd soilstate_type
R 1539 5 34 soilstatetype hksat_col$p soilstate_type
R 1540 5 35 soilstatetype hksat_col$o soilstate_type
R 1542 5 37 soilstatetype hk_l_col soilstate_type
R 1545 5 40 soilstatetype hk_l_col$sd soilstate_type
R 1546 5 41 soilstatetype hk_l_col$p soilstate_type
R 1547 5 42 soilstatetype hk_l_col$o soilstate_type
R 1549 5 44 soilstatetype smp_l_col soilstate_type
R 1552 5 47 soilstatetype smp_l_col$sd soilstate_type
R 1553 5 48 soilstatetype smp_l_col$p soilstate_type
R 1554 5 49 soilstatetype smp_l_col$o soilstate_type
R 1556 5 51 soilstatetype bsw_col soilstate_type
R 1559 5 54 soilstatetype bsw_col$sd soilstate_type
R 1560 5 55 soilstatetype bsw_col$p soilstate_type
R 1561 5 56 soilstatetype bsw_col$o soilstate_type
R 1563 5 58 soilstatetype watsat_col soilstate_type
R 1566 5 61 soilstatetype watsat_col$sd soilstate_type
R 1567 5 62 soilstatetype watsat_col$p soilstate_type
R 1568 5 63 soilstatetype watsat_col$o soilstate_type
R 1570 5 65 soilstatetype sucsat_col soilstate_type
R 1573 5 68 soilstatetype sucsat_col$sd soilstate_type
R 1574 5 69 soilstatetype sucsat_col$p soilstate_type
R 1575 5 70 soilstatetype sucsat_col$o soilstate_type
R 1577 5 72 soilstatetype dsl_col soilstate_type
R 1579 5 74 soilstatetype dsl_col$sd soilstate_type
R 1580 5 75 soilstatetype dsl_col$p soilstate_type
R 1581 5 76 soilstatetype dsl_col$o soilstate_type
R 1583 5 78 soilstatetype soilresis_col soilstate_type
R 1585 5 80 soilstatetype soilresis_col$sd soilstate_type
R 1586 5 81 soilstatetype soilresis_col$p soilstate_type
R 1587 5 82 soilstatetype soilresis_col$o soilstate_type
R 1589 5 84 soilstatetype thk_col soilstate_type
R 1592 5 87 soilstatetype thk_col$sd soilstate_type
R 1593 5 88 soilstatetype thk_col$p soilstate_type
R 1594 5 89 soilstatetype thk_col$o soilstate_type
R 1596 5 91 soilstatetype tkmg_col soilstate_type
R 1599 5 94 soilstatetype tkmg_col$sd soilstate_type
R 1600 5 95 soilstatetype tkmg_col$p soilstate_type
R 1601 5 96 soilstatetype tkmg_col$o soilstate_type
R 1603 5 98 soilstatetype tkdry_col soilstate_type
R 1606 5 101 soilstatetype tkdry_col$sd soilstate_type
R 1607 5 102 soilstatetype tkdry_col$p soilstate_type
R 1608 5 103 soilstatetype tkdry_col$o soilstate_type
R 1610 5 105 soilstatetype csol_col soilstate_type
R 1613 5 108 soilstatetype csol_col$sd soilstate_type
R 1614 5 109 soilstatetype csol_col$p soilstate_type
R 1615 5 110 soilstatetype csol_col$o soilstate_type
R 1617 5 112 soilstatetype rootfr_patch soilstate_type
R 1620 5 115 soilstatetype rootfr_patch$sd soilstate_type
R 1621 5 116 soilstatetype rootfr_patch$p soilstate_type
R 1622 5 117 soilstatetype rootfr_patch$o soilstate_type
R 1626 5 121 soilstatetype initallocate$tbp$0 soilstate_type
R 1627 5 122 soilstatetype init$tbp$1 soilstate_type
S 1638 27 0 0 0 9 1639 624 14502 0 8000000 A 0 0 0 0 B 0 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 soilstateinittimeconst
S 1639 23 5 0 0 0 1642 624 14502 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstateinittimeconst
S 1640 1 3 1 0 66 1 1639 11381 4 3000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 1641 1 3 2 0 230 1 1639 14525 4 3000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 soilstate_inst
S 1642 14 5 0 0 0 1 1639 14502 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 31 2 0 0 0 0 0 0 0 0 0 0 0 0 26 0 624 0 0 0 0 soilstateinittimeconst soilstateinittimeconst 
F 1642 2 1640 1641
A 387 2 0 0 0 7 1269 0 0 0 387 0 0 0 0 0 0 0 0 0 0 0
A 430 2 0 0 319 7 1329 0 0 0 430 0 0 0 0 0 0 0 0 0 0 0
Z
T 1426 143 0 0 0 0
A 1430 7 203 0 1 2 1
A 1429 7 0 387 1 10 1
A 1436 7 205 0 1 2 1
A 1435 7 0 387 1 10 1
A 1442 7 207 0 1 2 1
A 1441 7 0 387 1 10 1
A 1449 7 209 0 1 2 1
A 1448 7 0 430 1 10 1
A 1456 7 211 0 1 2 1
A 1455 7 0 430 1 10 1
A 1463 7 213 0 1 2 1
A 1462 7 0 430 1 10 1
A 1470 7 215 0 1 2 1
A 1469 7 0 430 1 10 1
A 1476 7 217 0 1 2 1
A 1475 7 0 387 1 10 1
A 1482 7 219 0 1 2 1
A 1481 7 0 387 1 10 0
Z
