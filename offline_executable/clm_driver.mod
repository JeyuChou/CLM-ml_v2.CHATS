V34 :0x24 clm_driver
14 clm_driver.F90 S624 0
06/02/2026  09:20:41
use clm_instmod public 0 direct
use pftconmod private
use decompmod private
use columntype private
use abortutils private
use shr_kind_mod private
enduse
D 107 26 1331 32 1330 3
D 116 26 1390 1560 1389 7
D 176 22 7
D 178 22 7
D 180 22 7
D 182 22 7
D 184 22 7
D 186 22 7
D 188 22 7
D 190 22 7
D 192 22 7
D 2542 20 17
S 624 24 0 0 0 9 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 clm_driver
S 626 23 0 0 0 9 637 624 5036 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 629 23 0 0 0 9 1202 624 5062 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 631 23 0 0 0 9 1320 624 5080 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 col
S 633 23 0 0 0 9 1330 624 5094 4 0 A 0 0 0 0 B 400000 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bounds_type
R 637 16 1 shr_kind_mod shr_kind_r8
S 641 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 256 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 1202 14 450 abortutils endrun
S 1269 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 1275 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1320 6 43 columntype col
R 1330 25 2 decompmod bounds_type
R 1331 5 3 decompmod begg bounds_type
R 1332 5 4 decompmod endg bounds_type
R 1333 5 5 decompmod begl bounds_type
R 1334 5 6 decompmod endl bounds_type
R 1335 5 7 decompmod begc bounds_type
R 1336 5 8 decompmod endc bounds_type
R 1337 5 9 decompmod begp bounds_type
R 1338 5 10 decompmod endp bounds_type
R 1389 25 8 pftconmod pftcon_type
R 1390 5 9 pftconmod dleaf pftcon_type
R 1392 5 11 pftconmod dleaf$sd pftcon_type
R 1393 5 12 pftconmod dleaf$p pftcon_type
R 1394 5 13 pftconmod dleaf$o pftcon_type
R 1396 5 15 pftconmod c3psn pftcon_type
R 1398 5 17 pftconmod c3psn$sd pftcon_type
R 1399 5 18 pftconmod c3psn$p pftcon_type
R 1400 5 19 pftconmod c3psn$o pftcon_type
R 1402 5 21 pftconmod xl pftcon_type
R 1404 5 23 pftconmod xl$sd pftcon_type
R 1405 5 24 pftconmod xl$p pftcon_type
R 1406 5 25 pftconmod xl$o pftcon_type
R 1408 5 27 pftconmod rhol pftcon_type
R 1411 5 30 pftconmod rhol$sd pftcon_type
R 1412 5 31 pftconmod rhol$p pftcon_type
R 1413 5 32 pftconmod rhol$o pftcon_type
R 1415 5 34 pftconmod rhos pftcon_type
R 1418 5 37 pftconmod rhos$sd pftcon_type
R 1419 5 38 pftconmod rhos$p pftcon_type
R 1420 5 39 pftconmod rhos$o pftcon_type
R 1422 5 41 pftconmod taul pftcon_type
R 1425 5 44 pftconmod taul$sd pftcon_type
R 1426 5 45 pftconmod taul$p pftcon_type
R 1427 5 46 pftconmod taul$o pftcon_type
R 1429 5 48 pftconmod taus pftcon_type
R 1432 5 51 pftconmod taus$sd pftcon_type
R 1433 5 52 pftconmod taus$p pftcon_type
R 1434 5 53 pftconmod taus$o pftcon_type
R 1436 5 55 pftconmod rootprof_beta pftcon_type
R 1438 5 57 pftconmod rootprof_beta$sd pftcon_type
R 1439 5 58 pftconmod rootprof_beta$p pftcon_type
R 1440 5 59 pftconmod rootprof_beta$o pftcon_type
R 1442 5 61 pftconmod slatop pftcon_type
R 1444 5 63 pftconmod slatop$sd pftcon_type
R 1445 5 64 pftconmod slatop$p pftcon_type
R 1446 5 65 pftconmod slatop$o pftcon_type
R 1451 5 70 pftconmod initread$tbp$0 pftcon_type
R 1452 5 71 pftconmod initallocate$tbp$1 pftcon_type
R 1453 5 72 pftconmod init$tbp$2 pftcon_type
S 4554 27 0 0 0 9 4555 624 45494 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 clm_drv
S 4555 23 5 0 0 0 4560 624 45494 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 clm_drv
S 4556 6 3 1 0 107 1 4555 11969 800004 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bounds
S 4557 1 3 1 0 6 1 4555 45502 4 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 time_indx
S 4558 1 3 0 0 2542 1 4555 45512 4 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fin1
S 4559 1 3 0 0 2542 1 4555 45517 4 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fin2
S 4560 14 5 0 0 0 1 4555 45494 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 171 4 0 0 0 0 0 0 0 0 0 0 0 0 24 0 624 0 0 0 0 clm_drv clm_drv 
F 4560 4 4556 4557 4558 4559
A 17 2 0 0 0 6 641 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 392 2 0 0 0 7 1269 0 0 0 392 0 0 0 0 0 0 0 0 0 0 0
A 406 2 0 0 0 7 1275 0 0 0 406 0 0 0 0 0 0 0 0 0 0 0
Z
T 1389 116 0 0 0 0
A 1393 7 176 0 1 2 1
A 1392 7 0 392 1 10 1
A 1399 7 178 0 1 2 1
A 1398 7 0 392 1 10 1
A 1405 7 180 0 1 2 1
A 1404 7 0 392 1 10 1
A 1412 7 182 0 1 2 1
A 1411 7 0 406 1 10 1
A 1419 7 184 0 1 2 1
A 1418 7 0 406 1 10 1
A 1426 7 186 0 1 2 1
A 1425 7 0 406 1 10 1
A 1433 7 188 0 1 2 1
A 1432 7 0 406 1 10 1
A 1439 7 190 0 1 2 1
A 1438 7 0 392 1 10 1
A 1445 7 192 0 1 2 1
A 1444 7 0 392 1 10 0
Z
